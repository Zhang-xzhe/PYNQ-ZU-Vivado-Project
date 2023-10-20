// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcolor_convert_2.h"

extern XColor_convert_2_Config XColor_convert_2_ConfigTable[];

XColor_convert_2_Config *XColor_convert_2_LookupConfig(u16 DeviceId) {
	XColor_convert_2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOLOR_CONVERT_2_NUM_INSTANCES; Index++) {
		if (XColor_convert_2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XColor_convert_2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XColor_convert_2_Initialize(XColor_convert_2 *InstancePtr, u16 DeviceId) {
	XColor_convert_2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XColor_convert_2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XColor_convert_2_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

