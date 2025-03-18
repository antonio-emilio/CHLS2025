#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/usr/home/enstb1/Xilinx/Vitis2020.2/Vitis/2020.2/bin:/usr/home/enstb1/Xilinx/Vitis2020.2/Vivado/2020.2/ids_lite/ISE/bin/lin64:/usr/home/enstb1/Xilinx/Vitis2020.2/Vivado/2020.2/bin
else
  PATH=/usr/home/enstb1/Xilinx/Vitis2020.2/Vitis/2020.2/bin:/usr/home/enstb1/Xilinx/Vitis2020.2/Vivado/2020.2/ids_lite/ISE/bin/lin64:/usr/home/enstb1/Xilinx/Vitis2020.2/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/homes/a24perei/github/CHLS2025/Mini_projet_FFT/FFT_FIFO_FLOAT_STUDENT_CABA_FIXED/Filtre_NexysVideo_STUDENT/proj/AudioProc.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log FFT.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source FFT.tcl
