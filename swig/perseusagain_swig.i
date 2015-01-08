/* -*- c++ -*- */

#define PERSEUSAGAIN_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "perseusagain_swig_doc.i"

%{
#include "perseusagain/ModPerseusSource.h"
%}


%include "perseusagain/ModPerseusSource.h"
GR_SWIG_BLOCK_MAGIC2(perseusagain, ModPerseusSource);
