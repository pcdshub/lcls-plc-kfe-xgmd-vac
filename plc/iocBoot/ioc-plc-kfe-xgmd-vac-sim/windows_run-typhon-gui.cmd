@echo off
echo Starting Typhon...
echo on

"C:/Program Files/Docker/Docker/resources/bin/docker.exe" run ^
        -v "C:\repos\ads-deploy\tools\:/ads-deploy/tools" ^
        -v "C:\Users\nwbrown\Documents\TwinCAT3 workspace\lcls-plc-kfe-xgmd-vac\plc\:/reg/g/pcds/epics/ioc/plc_kfe_xgmd_vac" ^
	-e DISPLAY=host.docker.internal:0.0 ^
	-i pcdshub/ads-deploy:latest ^
	"cd '/reg/g/pcds/epics/ioc/plc_kfe_xgmd_vac/iocBoot/ioc-plc-kfe-xgmd-vac-sim' && pytmc stcmd --template-path /ads-deploy/tools/templates --template typhon_display.py --only-motor """/reg/g/pcds/epics/ioc/plc_kfe_xgmd_vac/plc-kfe-xgmd-vac/plc_kfe_xgmd_vac.tsproj""" > /tmp/display.py && echo 'Running Typhon...' && python /tmp/display.py; sleep 1"
