#ifndef _V_GAMMA_LUT_TOP_H_
#define _V_GAMMA_LUT_TOP_H_

#include "hls_video.h"
#include "ap_int.h"

typedef unsigned char      U8;
typedef unsigned short     U16;
typedef unsigned int       U32;

typedef signed char        I8;
typedef signed short       I16;
typedef signed int         I32;

// Streaming video formats
//#define RGB444					0
//#define YUV444					1
//#define YUV422 					2
//#define YUV420				    3

// Bayer phases
#define RGRG					0
#define GRGR					1
#define BGBG					2
#define GBGB					3

typedef ap_uint<IN_MAX_DATA_WIDTH> 									PIXEL_TYPE;
typedef hls::Scalar<NR_COMPONENTS, PIXEL_TYPE> 						YUV_PIXEL;
typedef hls::Scalar<NR_COMPONENTS*SAMPLES_PER_CLOCK, PIXEL_TYPE>  	YUV_MULTI_PIXEL;

typedef hls::stream<ap_axiu<IN_BITS_PER_CLOCK,1,1,1> >              AXI_STREAM_IN;
typedef hls::stream<ap_axiu<OUT_BITS_PER_CLOCK,1,1,1> >             AXI_STREAM_OUT;
typedef hls::stream<YUV_MULTI_PIXEL>                                STREAM_MULTIPIX;

//HW Registers
typedef struct
{
	U16 width;
	U16 height;
	U16 video_format;
	U16 gamma_lut_0[LUT_SIZE];
	U16 gamma_lut_1[LUT_SIZE];
	U16 gamma_lut_2[LUT_SIZE];
}HW_STRUCT_REG;

// top level function for HW synthesis
extern void v_gamma_lut(
		U16 &width,
		U16 &height,
		U16 &video_format,
        U16 gamma_lut_0[LUT_SIZE],
        U16 gamma_lut_1[LUT_SIZE],
        U16 gamma_lut_2[LUT_SIZE],	
        AXI_STREAM_IN& s_axis_video,
		AXI_STREAM_OUT& m_axis_video
);

#endif


