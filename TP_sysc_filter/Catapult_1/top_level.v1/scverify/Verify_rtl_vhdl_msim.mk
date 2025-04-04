# ----------------------------------------------------------------------------
# RTL VHDL
#
#    HLS version: 2022.2_1/1019737 Production Release
#       HLS date: Mon Nov 21 20:05:27 PST 2022
#  Flow Packages: HDL_Tcl 8.0a, SCVerify scver
#
#   Generated by: HLS_student@localhost.localdomain
# Generated date: Tue Feb 11 15:17:50 CET 2025
#
# ----------------------------------------------------------------------------
# ===================================================
# DEFAULT GOAL is the help target
.PHONY: all
all: help

# ===================================================
# Directories (at the time this makefile was created)
#   MGC_HOME      /usr/local/bin/Siemens_EDA/Catapult_Synthesis_2022.2_1-1019737/Mgc_home
#   PROJECT_HOME  /mnt/campux/github/CHLS2025/TP_sysc_filter
#   SOLUTION_DIR  /mnt/campux/github/CHLS2025/TP_sysc_filter/Catapult_1/top_level.v1
#   WORKING_DIR   /mnt/campux/github/CHLS2025/TP_sysc_filter/Catapult_1/top_level.v1/.

# ===================================================
# VARIABLES
# 
MGC_HOME          = /usr/local/bin/Siemens_EDA/Catapult_Synthesis_2022.2_1-1019737/Mgc_home
export MGC_HOME

WORK_DIR  = $(CURDIR)
WORK2PROJ = ../..
WORK2SOLN = .
PROJ2WORK = ./Catapult_1/top_level.v1
PROJ2SOLN = ./Catapult_1/top_level.v1
export WORK_DIR
export WORK2PROJ
export WORK2SOLN
export PROJ2WORK
export PROJ2SOLN

# Variables that can be overridden from the make command line
ifeq "$(INCL_DIRS)" ""
INCL_DIRS              = . /usr/local/bin/Siemens_EDA/Catapult_Synthesis_2022.2_1-1019737/Mgc_home/shared/include ./scverify . ../.. $(MGC_HOME)/shared/include
endif
export INCL_DIRS
ifeq "$(STAGE)" ""
STAGE                  = rtl
endif
export STAGE
ifeq "$(NETLIST_LEAF)" ""
NETLIST_LEAF           = rtl
endif
export NETLIST_LEAF
ifeq "$(SIMTOOL)" ""
SIMTOOL                = msim
endif
export SIMTOOL
ifeq "$(NETLIST)" ""
NETLIST                = vhdl
endif
export NETLIST
ifeq "$(INVOKE_ARGS)" ""
INVOKE_ARGS            = 
endif
export INVOKE_ARGS
export SCVLIBS
export MODELSIM
TOP_HDL_ENTITY           := top_level
TOP_DU                   := sc_main
TARGET                   := scverify/$(NETLIST_LEAF)_$(NETLIST)_$(SIMTOOL)
export TOP_HDL_ENTITY
export TARGET

ifeq ($(RECUR),)
ifeq ($(STAGE),mapped)
ifeq ($(RTLTOOL),)
   $(error This makefile requires specifying the RTLTOOL variable on the make command line)
endif
endif
endif
# ===================================================
# Include environment variables set by flow options
include ./ccs_env.mk

# ===================================================
# Include makefile for default commands and variables
include $(MGC_HOME)/shared/include/mkfiles/ccs_default_cmds.mk

SYNTHESIS_FLOWPKG := Vivado
SYN_FLOW          := Vivado
# ===================================================
# SOURCES
# 
# Specify list of Questa SIM libraries to create
HDL_LIB_NAMES = work
# ===================================================
# Simulation libraries required by loaded Catapult libraries or gate simulation
SIMLIBS_V   += 
SIMLIBS_VHD += 
# 
# 
# Specify list of source files - MUST be ordered properly
ifeq ($(STAGE),gate)
ifeq ($(RTLTOOL),)
# Unless overridden on make command line, GATE_*_DEP is the last item in the netlist dependency list
ifeq ($(GATE_VHDL_DEP),)
GATE_VHDL_DEP = ./rtl.vhdl/rtl.vhdl.vhdlts
endif
ifeq ($(GATE_VLOG_DEP),)
GATE_VLOG_DEP = 
endif
endif
VHDL_SRC +=  $(GATE_VHDL_DEP)
VLOG_SRC +=  $(GATE_VLOG_DEP)
else
VHDL_SRC += ./rtl.vhdl/rtl.vhdl.vhdlts
VLOG_SRC += 
endif
CXX_SRC  = ../../sc_main.cpp/sc_main.cpp.cxxts ./scverify/sysc_sim.cpp/sysc_sim.cpp.cxxts
# Specify RTL synthesis scripts (if any)
RTL_SCRIPT = 

# Specify hold time file name (for verifying synthesized netlists)
HLD_CONSTRAINT_FNAME = top_gate_constraints.cpp

# ===================================================
# GLOBAL OPTIONS
# 
# CXXFLAGS - global C++ options (apply to all C++ compilations) except for include file search paths
CXXFLAGS += -DSC_INCLUDE_DYNAMIC_PROCESSES -DCCS_SYSC -DSC_USE_STD_STRING -DTOP_HDL_ENTITY=$(TOP_HDL_ENTITY)
# 
# If the make command line includes a definition of the special variable MC_DEFAULT_TRANSACTOR_LOG
# then define that value for all compilations as well
ifneq "$(MC_DEFAULT_TRANSACTOR_LOG)" ""
CXXFLAGS += -DMC_DEFAULT_TRANSACTOR_LOG=$(MC_DEFAULT_TRANSACTOR_LOG)
endif
# 
# CXX_INCLUDES - include file search paths
CXX_INCLUDES = . /usr/local/bin/Siemens_EDA/Catapult_Synthesis_2022.2_1-1019737/Mgc_home/shared/include ./scverify . ../.. $(MGC_HOME)/shared/include
# 
# TCL shell
TCLSH_CMD = /usr/local/bin/Siemens_EDA/Catapult_Synthesis_2022.2_1-1019737/Mgc_home/bin/tclsh8.5

# Pass along SCVerify_DEADLOCK_DETECTION option
ifneq "$(SCVerify_DEADLOCK_DETECTION)" "false"
CXXFLAGS += -DDEADLOCK_DETECTION
endif
# ===================================================
# PER SOURCE FILE SPECIALIZATIONS
# 
# Specify source file paths
$(TARGET)/rtl.vhdl.vhdlts: ./rtl.vhdl
ifeq ($(STAGE),gate)
ifneq ($(GATE_VHDL_DEP),)
$(TARGET)/$(notdir $(GATE_VHDL_DEP)): $(dir $(GATE_VHDL_DEP))
endif
ifneq ($(GATE_VLOG_DEP),)
$(TARGET)/$(notdir $(GATE_VLOG_DEP)): $(dir $(GATE_VLOG_DEP))
endif
endif
$(TARGET)/sc_main.cpp.cxxts: ../../sc_main.cpp
$(TARGET)/sysc_sim.cpp.cxxts: ./scverify/sysc_sim.cpp
# 
# Specify additional C++ options per C++ source by setting CXX_OPTS
$(TARGET)/sysc_sim.cpp.cxxts: CXX_OPTS=
$(TARGET)/sc_main.cpp.cxxts: CXX_OPTS=
# 
# Specify dependencies
$(TARGET)/sc_main.cpp.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts
$(TARGET)/sysc_sim.cpp.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts
# 
# Specify compilation library for HDL source
$(TARGET)/rtl.vhdl.vhdlts: HDL_LIB=work
ifeq ($(STAGE),gate)
ifneq ($(GATE_VHDL_DEP),)
$(TARGET)/$(notdir $(GATE_VHDL_DEP)): HDL_LIB=work
$(TARGET)/$(notdir $(GATE_VHDL_DEP)): VHDL_TOP=1
$(TARGET)/$(notdir $(GATE_VHDL_DEP)): DUT_E=my_func
$(TARGET)/$(notdir $(GATE_VHDL_DEP)): DUT_E=top_level
endif
ifneq ($(GATE_VLOG_DEP),)
$(TARGET)/$(notdir $(GATE_VLOG_DEP)): HDL_LIB=work
$(TARGET)/$(notdir $(GATE_VLOG_DEP)): VLOG_TOP=1
$(TARGET)/$(notdir $(GATE_VLOG_DEP)): DUT_E=my_func
$(TARGET)/$(notdir $(GATE_VLOG_DEP)): DUT_E=top_level
endif
endif
# 
# Specify additional HDL source compilation options if any
$(TARGET)/rtl.vhdl.vhdlts: VHDL_F_OPTS=
# 
# Specify top design unit for HDL source
$(TARGET)/rtl.vhdl.vhdlts: DUT_E=top_level

# Specify top design unit
$(TARGET)/rtl.vhdl.vhdlts: VHDL_TOP=1

ifneq "$(RTLTOOL)" ""
# ===================================================
# Include makefile for RTL synthesis
include $(MGC_HOME)/shared/include/mkfiles/ccs_$(RTLTOOL).mk
else
# ===================================================
# Include makefile for simulator
include $(MGC_HOME)/shared/include/mkfiles/ccs_questasim.mk
endif

