IOC_TOP = /reg/g/pcds/epics/ioc/common/ads-ioc/R0.8.0
IOC_INSTANCE_PATH := $(shell pwd)

PROJECT_NAME = plc_kfe_xgmd_vac
PROJECT_PATH := ../../plc-kfe-xgmd-vac/plc_kfe_xgmd_vac.tsproj
PLC = plc_kfe_xgmd_vac

PYTMC_OPTS = 
PREFIX = IOC:PLC:KFE:XGMD:VAC

PRODUCTION_IOC := 1

include $(IOC_TOP)/iocBoot/templates/Makefile.base

# With two $$, as in $$(IOCNAME) below, this will be expanded in the
# environment of st.cmd:
DB_PARAMETERS := 'PREFIX=$(PREFIX):,IOCNAME=$$(IOC),IOC=$$(IOC)'
