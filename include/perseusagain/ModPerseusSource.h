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


#ifndef INCLUDED_PERSEUSAGAIN_MODPERSEUSSOURCE_H
#define INCLUDED_PERSEUSAGAIN_MODPERSEUSSOURCE_H

#include <perseusagain/api.h>
#include <gnuradio/sync_block.h>

namespace gr {
  namespace perseusagain {

    /*!
     * \brief <+description of block+>
     * \ingroup perseusagain
     *
     */
    class PERSEUSAGAIN_API ModPerseusSource : virtual public gr::sync_block
    {
     public:
      typedef boost::shared_ptr<ModPerseusSource> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of perseusagain::ModPerseusSource.
       *
       * To avoid accidental use of raw pointers, perseusagain::ModPerseusSource's
       * constructor is in a private implementation
       * class. perseusagain::ModPerseusSource::make is the public interface for
       * creating new instances.
       */
      static sptr make(int sampling_rate, int central_frequency, int attenuation_db, bool adc_dither, bool preamp, bool frontend_filters);
    };

  } // namespace perseusagain
} // namespace gr

#endif /* INCLUDED_PERSEUSAGAIN_MODPERSEUSSOURCE_H */

