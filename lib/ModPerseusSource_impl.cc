 /* -*- c++ -*- */
/* 
 * Copyright 2015 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif
#include <stdio.h>
#include <gnuradio/io_signature.h>
#include "ModPerseusSource_impl.h"
#include </home/sourbh/libperseus-sdr/perseus-sdr.h>

using namespace std;
const float NORM_FACTOR = static_cast<float>(static_cast<double>(1L<<31));
namespace gr {
  namespace perseusagain {

   typedef union {
        struct __attribute__((__packed__)) {
            int32_t i;
            int32_t q;
        } iq; 
        struct __attribute__((__packed__)) {
            uint8_t i1;
            uint8_t i2;
            uint8_t i3;
            uint8_t i4;
            uint8_t q1;
            uint8_t q2;
            uint8_t q3;
            uint8_t q4;
        };
    } iq_sample;

    ModPerseusSource::sptr
//In the make function, Perseus gets initialized and the debug level is set
//===================================================================================================================================
    ModPerseusSource::make(int sampling_rate, int central_frequency, int attenuation_db, bool adc_dither, bool preamp, bool frontend_filters) //throw (std::runtime_error) // IDK1 : Why is throw here ? No clue
    {
        // ISR1:Not using Singletons
        int num_perseus = perseus_init();
        cout<<"1"<<endl;
        if (num_perseus > 0){
            //if(gr_prefs::singleton()->get_bool("perseus","verbose","false"))
            //    perseus_set_debug(2);
            //else
            perseus_set_debug(0); //ISR2: Not using debug level
        }
        else
        {
            printf("Perseus hardware not found: %s\n",perseus_errorstr());
            throw std::runtime_error("perseus hw not found");
        }
        return gnuradio::get_initial_sptr
        (new ModPerseusSource_impl(sampling_rate, central_frequency, attenuation_db, adc_dither, preamp, frontend_filters));
    }
//================================================================================================================================================

// This returns a pointer to the filename that contains the fpga config file of the sampling rate that the function takes as argument ISR2: Not using this as there is no perseus_fpga_config function.  
//======================================================================================================================================    
/*    typedef struct sampletable{
        int srate;
        char *file_name;
    } sample_rates_table;

    static char *getFpgaFile (int xsr)
    {
        static sample_rates_table sr[] = {
            { 125000,  "perseus125k24v21.rbs"   },
            { 1000000, "perseus1m24v21.rbs"     },
            { 250000,  "perseus250k24v21.rbs"   },
            { 2000000, "perseus2m24v21.rbs"     },
            { 500000,  "perseus500k24v21.rbs"   },
            { 95000,   "perseus95k24v31.rbs"    }
        };

        for (unsigned int  i=0; i< (sizeof(sr)/sizeof(sr[0])); ++i) {
            if (xsr == sr[i].srate) return sr[i].file_name;
        }
        return 0;
    }
*/  
//==========================================================================================================================================
    /*
     * The private constructor
     */
//
    ModPerseusSource_impl::ModPerseusSource_impl(int sampling_rate, int central_frequency, int attenuation_db, bool adc_dither, bool preamp, bool frontend_filters)
      : gr::sync_block("ModPerseusSource",
              gr::io_signature::make(0, 0, 0),
              gr::io_signature::make(1, 1, sizeof(gr_complex)))
    {
        d_sampling_rate =        sampling_rate;
        d_central_frequency =    central_frequency;
        d_attenuation_db =       attenuation_db;
        d_adc_dither =           adc_dither;
        d_preamp =               preamp;
        d_frontend_filters =     frontend_filters;
        d_writer =               gr::make_buffer(1024,sizeof(gr_complex),gr::block_sptr());
       d_reader =                gr::buffer_add_reader(d_writer,0,gr::block_sptr()); 

//Opening Perseus...
//======================================================================================================================================
        if((pd = perseus_open(0))==NULL)
        {
            printf("Error:%s\n",perseus_errorstr());
            bail("perseus_open error!");
        }
//====================================================================================================================================
//Downloading firmware
//====================================================================================================================================
        if(perseus_firmware_download(pd,NULL)<0)
        {
            printf("firmware download error: %s",perseus_errorstr());
            perseus_close(pd);
            bail("perseus firmware download error");
        }
//====================================================================================================================================
//Setting up Perseus 
//==================================================================================================================================
        //ISR 2.1: Could not find perseus_fpga_config function 
        /*char *fn = getFpgafile(d_sampling_rate);

        if(fn)
        {
            if(perseus_fpga_config(pd,fn)<0)
            {
                printf("fpga configuration error : %s\n",perseus_errorstr()); */
        //Sampling Rate, Configuring FPGA
        printf("Configuring FPGA...\n");
        if(perseus_set_sampling_rate(pd,d_sampling_rate)<0)
        {
            printf("fpga configuration error %s\n",perseus_errorstr());
            perseus_close(pd);
            bail("perseus FPGA configuration error");
        }
        //ADC Dither and ADC Preamp
        
        printf("Setting ADC...\n");
        if(perseus_set_adc(pd,adc_dither,preamp)<0)
        {
            printf("ADC configuration error %s\n",perseus_errorstr());
            perseus_close(pd);
            bail("ADC error");
        }

        //Attenuator
        printf("Setting Attenuator...\n");
        if(perseus_set_attenuator_in_db(pd,d_attenuation_db)<0)
        {
            printf("Attenuator error %s\n",perseus_errorstr());
            perseus_close(pd);
            bail("Attenuator error");
        }

        //Centre frequency
        printf("Setting Center frequency...\n");
        perseus_set_ddc_center_freq(pd,double(d_central_frequency),d_frontend_filters);

        if(perseus_start_async_input(pd,12288,callbackPerseus,(void*)this)<0)
        {
            printf("Async input error %s\n",perseus_errorstr());
            perseus_close(pd);
            bail("Error in async input");
        }
        else
        {
            d_started = 1;
        }
    }
//===================================================================================================================================
    /*
     * Our virtual destructor.
     */
    ModPerseusSource_impl::~ModPerseusSource_impl()
    {
        if(d_started)
        {
            perseus_stop_async_input(pd);
            d_started = 0;
        }
        perseus_close(pd);
        perseus_exit();
    }

    int
    ModPerseusSource_impl::work(int noutput_items,
			  gr_vector_const_void_star &input_items,
			  gr_vector_void_star &output_items)
    {
        gr_complex *out = (gr_complex *) output_items[0];

        // Do <+signal processing+>
        int k;
        for (k=0;k<noutput_items;)
        {
            

            int nframes = d_reader->items_available();
            //If no frames 
            //IDK2: What to do when there is no data ? 
            //IDK3 : What on earth is blocking ? Figure it out 
            //IDK4: Need to fill zeroes apparently. What on earth is going on ? 
            if(nframes==0)
            {
                if(k>0)
                {
                    return k;
                }
                d_semaphore.P();
                continue;
            }

            //Assuming frames exist or we are allowed to "block", we take the minimum of request(i.e noutput_items) and what is in the buffer 
            int nf = std::min(noutput_items-k,nframes);
            const float *p = (const float *) d_reader->read_pointer();
            for(int i=0;i<nf;i++)
            {
                register float i_sample, q_sample;
                i_sample = *p++;
                q_sample = *p++;
                out[i] = gr_complex(i_sample,q_sample);
            }
            d_reader->update_read_pointer(nf);
            k+=nf;
        }
        return k; 
    }

    int ModPerseusSource_impl::callbackPerseus(void *buf, int buf_size, void *param)
    {
        uint8_t *samplebuf        = (uint8_t*)buf;
        int nIQValues             = buf_size/6;
        int k;
        iq_sample s;
        ModPerseusSource_impl *self  = (ModPerseusSource_impl *)param;
        
        static float*ov   = 0;
        static int ovLen  = 0; 
        
        if(ov==0)
        {
            ovLen = nIQValues*2;
            ov = new float [ovLen];
        }
        assert(ov);
        if(self == 0)
        {
            return 0; //IDK3: Kyun bhai ? Ab chup chap kat rahe ho ? Koi bail vail nahi bulana ? Hypocrite kahi ke !
        }
        int nframes_to_copy = nIQValues/2;
        int nframes_room = self->d_writer->space_available();
        if(nframes_to_copy <= nframes_room)
        {
            s.i1 = 0;
            s.q1 = 0;
            int nItemsWritten = 0;

            for(k=0;k<nIQValues;k++)
            {
                s.i2 = *samplebuf++;
                s.i3 = *samplebuf++;
                s.i4 = *samplebuf++;
                s.q2 = *samplebuf++;
                s.q3 = *samplebuf++;
                s.q4 = *samplebuf++;
            
                ov[2*k+0] = ((float)s.iq.i)/NORM_FACTOR;
                ov[2*k+1] = ((float)s.iq.q)/NORM_FACTOR;
                nItemsWritten +=1;
            }
            memcpy(self->d_writer->write_pointer(),ov,ovLen*sizeof(float));
            self->d_writer->update_write_pointer(nItemsWritten);
            self->d_semaphore.V();
        }
        else
        {
            self->d_semaphore.V();
        }
        return 0;
    }

    void ModPerseusSource_impl::bail(const char *msg) 
    {
        fprintf(stderr,"Message:%s:%s",msg,perseus_errorstr());
        throw std::runtime_error("perseus");
    }
        // Tell runtime system how many output items we produced.

  } /* namespace perseusagain */
} /* namespace gr */

