// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xpixel_pack_2.h"

extern XPixel_pack_2_Config XPixel_pack_2_ConfigTable[];

XPixel_pack_2_Config *XPixel_pack_2_LookupConfig(u16 DeviceId) {
	XPixel_pack_2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPIXEL_PACK_2_NUM_INSTANCES; Index++) {
		if (XPixel_pack_2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPixel_pack_2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPixel_pack_2_Initialize(XPixel_pack_2 *InstancePtr, u16 DeviceId) {
	XPixel_pack_2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPixel_pack_2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPixel_pack_2_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

