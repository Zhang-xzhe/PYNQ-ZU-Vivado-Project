// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XPIXEL_UNPACK_2_H
#define XPIXEL_UNPACK_2_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xpixel_unpack_2_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XPixel_unpack_2_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XPixel_unpack_2;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPixel_unpack_2_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPixel_unpack_2_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPixel_unpack_2_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPixel_unpack_2_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XPixel_unpack_2_Initialize(XPixel_unpack_2 *InstancePtr, u16 DeviceId);
XPixel_unpack_2_Config* XPixel_unpack_2_LookupConfig(u16 DeviceId);
int XPixel_unpack_2_CfgInitialize(XPixel_unpack_2 *InstancePtr, XPixel_unpack_2_Config *ConfigPtr);
#else
int XPixel_unpack_2_Initialize(XPixel_unpack_2 *InstancePtr, const char* InstanceName);
int XPixel_unpack_2_Release(XPixel_unpack_2 *InstancePtr);
#endif


void XPixel_unpack_2_Set_mode(XPixel_unpack_2 *InstancePtr, u32 Data);
u32 XPixel_unpack_2_Get_mode(XPixel_unpack_2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
