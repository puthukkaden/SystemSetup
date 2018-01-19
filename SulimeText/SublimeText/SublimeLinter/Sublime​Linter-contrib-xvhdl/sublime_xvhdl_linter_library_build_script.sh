#!/usr/bin/env bash

# Script to build the entire project for being used by xvhdl linter
# plugin in Sublime Text

echo
echo
echo "Xvhdl Sublime linter pluging build script"
echo "===== ======= ====== ======= ===== ======"

echo ">Deleting temp directory if present."
rm -rf /tmp/SublimeXvhdlLinterTemDir

echo ">Deleting xsim folder in temp_entity_tc."
rm -rf /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/xsim.dir

echo ">Deleting xsim folder in temp_entity_tm."
rm -rf /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/xsim.dir

echo ">Deleting xsim folder in temp_entity_other_modules."
rm -rf /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_other_modules/xsim.dir

echo ">Deleting xsim folder in temp_pkg."
rm -rf /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/xsim.dir

echo ">Creating temporary directory."
mkdir /tmp/SublimeXvhdlLinterTemDir

echo ">Changing to temporary directory."
cd /tmp/SublimeXvhdlLinterTemDir
echo

echo "Executing xvhdl linter"
echo "--------- ----- ------"

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/LfpgaTmtc_TcScclPkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_DeRandomiser.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_BchDecoder.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/LfpgaTmtc_UsrPkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_other_modules/GenFifo16BitWide.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/LfpgaTmtc_TcPkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_TickGenerator.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_TimerModule.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_Tc_Sccl.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_Tc_Router.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_Tc_Lpl.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_Tc_Farm.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_Tc.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_StartTailSeqDetect.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_PulseGenerator1.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_PingPongBuffer.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_CrcGenerator.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_1kRam.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/GenFifo10BitWide.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/GenFifo8BitWide.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/UsrPkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/LfpgaTmtcObcInterfacePkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_WdogMonitor.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_ObcTopModule.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_ObcSyncGenerator.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/UartPkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/UartReceiver.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/UartBaudGenerator.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/UartBufferStatus.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/Uart.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_ObcInterfaceModuleFsm.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_GlitchFilter.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/LfpgaTmTcRSEncPkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/LfpgaTmtcTurboEncoderPkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/LfpgaTmtcTmscclPkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/LfpgaTMLinkProtocolPkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_crc_generator.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_bram_unit.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_tmlink_channel_if.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_tmlink_datasource_if.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_tmlink_isbtfsm.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_tmlink_isbtidle_gen.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_tmlink_lvi_if.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_tmlink_mux.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_tmlink_wrapper.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_tmlink_xtxfsm.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_tmlink_xtxidle_gen.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/LfpgaTmtc_ComponentEncoder.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/LfpgaTmtc_TurboCodeInterleaver.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/LfpgaTmtc_TurboEncoder.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_RSEnc_conventional.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_RSEnc_interleaver.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_RSEnc_Itracemult.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_RSEnc_TMlink_if.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_RSEnc_tracemult.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_RSEnc_wrapper.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/LfpgaTmtc_Randomiser.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/LfpgaTmtc_TmscclTmInterface.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/LfpgaTmtc_TmscclLviInterface.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/LfpgaTmtc_TmAsmAttacher.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/LfpgaTmtc_Tmsccl.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/LfpgaTmtc_TmIntegrated.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/UartTransmitter.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_other_modules/LfpgaTmtc_PulseGenerator2.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_other_modules/LfpgaTmtc_PulseGenerator3.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_other_modules/LfpgaTmtc_EedmIntrfceModule.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_other_modules/LfpgaTmtc_Processor.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/LfpgaTmtcPcdmPkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_other_modules/LfpgaTmtc_SpiClockDivider.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_other_modules/LfpgaTmtc_Spi.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_other_modules/LfpgaTmtc_PcdmInterfaceModule.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc_LpcocInterfaceModule.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/LfpgaTmtc_XtxInterface.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/LfpgaTmTcEEPROMInterfacePkg.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_eeprom_wrapper.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_eeprom_ram_mux.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/Lfpga_eeprom_master.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

/opt/Xilinx/Vivado/2017.4/bin/xvhdl --2008 /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/LfpgaTmtc.vhd
if [[ $? -ne 0 ]]; then echo; echo Error encountered. Exiting........; rm -rf /tmp/SublimeXvhdlLinterTemDir; echo; exit 1; fi
echo

echo "-------------------------------------------"
echo

echo ">Copying the xsim folder from the xvhdl working directory to the temp_entity_tc folder."
cp -r /tmp/SublimeXvhdlLinterTemDir/xsim.dir /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tc/

echo ">Copying the xsim folder from the xvhdl working directory to the temp_entity_tm folder."
cp -r /tmp/SublimeXvhdlLinterTemDir/xsim.dir /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_tm/

echo ">Copying the xsim folder from the xvhdl working directory to the temp_entity_other_modules folder."
cp -r /tmp/SublimeXvhdlLinterTemDir/xsim.dir /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_entity_other_modules/

echo ">Copying the xsim folder from the xvhdl working directory to the temp_pkg folder."
cp -r /tmp/SublimeXvhdlLinterTemDir/xsim.dir /mnt/288C513D8C51072A/projects/team_indus_tmtc_fpga/repo/sept30/tmtc_fpga_dev/main/src/temp_pkg/

echo ">Deleting temp folder."
rm -rf /tmp/SublimeXvhdlLinterTemDir
echo

echo "The script has successfully executed"
echo "Exiting ........"
echo
exit 0