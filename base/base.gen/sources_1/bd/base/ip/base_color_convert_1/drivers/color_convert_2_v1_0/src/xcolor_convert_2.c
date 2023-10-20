// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcolor_convert_2.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XColor_convert_2_CfgInitialize(XColor_convert_2 *InstancePtr, XColor_convert_2_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XColor_convert_2_Set_c1_c1(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C1_C1_DATA, Data);
}

u32 XColor_convert_2_Get_c1_c1(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C1_C1_DATA);
    return Data;
}

void XColor_convert_2_Set_c1_c2(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C1_C2_DATA, Data);
}

u32 XColor_convert_2_Get_c1_c2(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C1_C2_DATA);
    return Data;
}

void XColor_convert_2_Set_c1_c3(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C1_C3_DATA, Data);
}

u32 XColor_convert_2_Get_c1_c3(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C1_C3_DATA);
    return Data;
}

void XColor_convert_2_Set_c2_c1(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C2_C1_DATA, Data);
}

u32 XColor_convert_2_Get_c2_c1(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C2_C1_DATA);
    return Data;
}

void XColor_convert_2_Set_c2_c2(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C2_C2_DATA, Data);
}

u32 XColor_convert_2_Get_c2_c2(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C2_C2_DATA);
    return Data;
}

void XColor_convert_2_Set_c2_c3(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C2_C3_DATA, Data);
}

u32 XColor_convert_2_Get_c2_c3(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C2_C3_DATA);
    return Data;
}

void XColor_convert_2_Set_c3_c1(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C3_C1_DATA, Data);
}

u32 XColor_convert_2_Get_c3_c1(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C3_C1_DATA);
    return Data;
}

void XColor_convert_2_Set_c3_c2(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C3_C2_DATA, Data);
}

u32 XColor_convert_2_Get_c3_c2(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C3_C2_DATA);
    return Data;
}

void XColor_convert_2_Set_c3_c3(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C3_C3_DATA, Data);
}

u32 XColor_convert_2_Get_c3_c3(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_C3_C3_DATA);
    return Data;
}

void XColor_convert_2_Set_bias_c1(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_BIAS_C1_DATA, Data);
}

u32 XColor_convert_2_Get_bias_c1(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_BIAS_C1_DATA);
    return Data;
}

void XColor_convert_2_Set_bias_c2(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_BIAS_C2_DATA, Data);
}

u32 XColor_convert_2_Get_bias_c2(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_BIAS_C2_DATA);
    return Data;
}

void XColor_convert_2_Set_bias_c3(XColor_convert_2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_2_WriteReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_BIAS_C3_DATA, Data);
}

u32 XColor_convert_2_Get_bias_c3(XColor_convert_2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_2_ReadReg(InstancePtr->Control_BaseAddress, XCOLOR_CONVERT_2_CONTROL_ADDR_BIAS_C3_DATA);
    return Data;
}

