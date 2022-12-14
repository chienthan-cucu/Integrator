#######################################################
#                                                     
#  Encounter Command Logging File                     
#  Created on Fri Nov 25 23:44:06 2022                
#                                                     
#######################################################

#@(#)CDS: Encounter v14.28-s033_1 (64bit) 03/21/2016 13:34 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute v14.28-s005 NR160313-1959/14_28-UB (database version 2.30, 267.6.1) {superthreading v1.25}
#@(#)CDS: CeltIC v14.28-s006_1 (64bit) 03/08/2016 00:08:23 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 14.28-s002 (64bit) 03/21/2016 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 14.28-s007_1 (64bit) Mar  7 2016 23:11:05 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v14.28-s006
#@(#)CDS: IQRC/TQRC 14.2.2-s217 (64bit) Wed Apr 15 23:10:24 PDT 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set gpsPrivate::dpgNewAddBufsDBUpdate 1
set gpsPrivate::lsgEnableNewDbApiInRestruct 1
set lsgOCPGainMult 1.000000
set pegDefaultResScaleFactor 1.000000
set pegDetailResScaleFactor 1.000000
set timing_library_float_precision_tol 0.000010
set timing_library_load_pin_cap_indices {}
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set gpsPrivate::dpgNewAddBufsDBUpdate 1
set gpsPrivate::lsgEnableNewDbApiInRestruct 1
set lsgOCPGainMult 1.000000
set pegDefaultResScaleFactor 1.000000
set pegDetailResScaleFactor 1.000000
set timing_library_float_precision_tol 0.000010
set timing_library_load_pin_cap_indices {}
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set init_gnd_net VSS
set init_lef_file {/Cadence/Libs/X_FAB/XKIT/xt018/cadence/v5_0/techLEF/v5_0_2/xt018_xx43_MET4_METMID_METTHK.lef /Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_5V/v5_0/LEF/v5_0_1/xt018_D_CELLS_5V.lef}
set init_design_settop 0
set init_verilog ../Outputs/Synthesis/Synth.v
set init_mmmc_file ../Scripts/MMMC.tcl
set init_io_file ../Source/Pinmap
set init_pwr_net VDD
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -fplanOrigin center -site core_5v -r 0.965442930809 0.700001 20.0 20.0 20.0 20.0
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect VDD -type pgpin -pin vdd5 -inst * -module {}
globalNetConnect VDD -type tiehi -pin vdd5 -inst * -module {}
globalNetConnect VDD -type tielo -pin vdd5 -inst * -module {}
clearGlobalNets
globalNetConnect VDD -type pgpin -pin vdd5 -inst * -module {}
globalNetConnect VDD -type tiehi -pin vdd5 -inst * -module {}
globalNetConnect VDD -type tielo -pin vdd5 -inst * -module {}
globalNetConnect VSS -type pgpin -pin gnd -inst * -module {}
globalNetConnect VSS -type tiehi -pin gnd -inst * -module {}
globalNetConnect VSS -type tielo -pin gnd -inst * -module {}
clearGlobalNets
globalNetConnect VDD -type pgpin -pin vdd5 -inst * -module {}
globalNetConnect VDD -type tiehi -pin vdd5 -inst * -module {}
globalNetConnect VDD -type tielo -pin vdd5 -inst * -module {}
globalNetConnect VSS -type pgpin -pin gnd -inst * -module {}
globalNetConnect VSS -type tiehi -pin gnd -inst * -module {}
globalNetConnect VSS -type tielo -pin gnd -inst * -module {}
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -stacked_via_top_layer METTPL -type core_rings -jog_distance 3.15 -threshold 3.15 -nets {VDD VSS} -follow core -stacked_via_bottom_layer MET1 -layer {bottom MET1 top MET1 right MET2 left MET2} -width 3 -spacing {bottom 0.23 top 0.23 right 0.28 left 0.28} -offset 3.15
set sprCreateIeStripeNets {}
set sprCreateIeStripeLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeSpacing 2.0
set sprCreateIeStripeThreshold 1.0
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit MET3 -max_same_layer_jog_length 6 -padcore_ring_bottom_layer_limit MET1 -set_to_set_distance 100 -skip_via_on_pin Standardcell -stacked_via_top_layer METTPL -padcore_ring_top_layer_limit MET3 -spacing 2.5 -merge_stripes_value 3.15 -layer MET2 -block_ring_bottom_layer_limit MET1 -width 3 -nets {VDD VSS} -stacked_via_bottom_layer MET1
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { MET1 METTPL } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { MET1 METTPL } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { MET1 METTPL }
editPowerVia -skip_via_on_pin Standardcell -bottom_layer MET1 -add_vias 1 -top_layer METTPL
set sprEpvLayers {}
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -prePlace -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix Integrator_prePlace -outDir ../Reports/timingReports
setPlaceMode -fp false
placeDesign -inPlaceOpt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix Integrator_preCTS -outDir ../Reports/timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix Integrator_preCTS -outDir ../Reports/timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -preCTS
createClockTreeSpec -bufferList {BU_5VX0 BU_5VX1 BU_5VX12 BU_5VX16 BU_5VX2 BU_5VX3 BU_5VX4 BU_5VX6 BU_5VX8 DLY1_5VX1 DLY2_5VX1 DLY4_5VX1 DLY8_5VX1 IN_5VX0 IN_5VX1 IN_5VX12 IN_5VX16 IN_5VX2 IN_5VX3 IN_5VX4 IN_5VX6 IN_5VX8 STE_5VX1 STE_5VX2 STE_5VX3 STE_5VX4 ST_5VX1 ST_5VX2 ST_5VX3 ST_5VX4} -file Clock.ctstch
setCTSMode -engine ck
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix Integrator_postCTS -outDir ../Reports/timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix Integrator_postCTS -outDir ../Reports/timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -postCTS
optDesign -postCTS -hold
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setAnalysisMode -analysisType onChipVariation -skew true -clockPropagation sdcControl
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix Integrator_postRoute -outDir ../Reports/timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix Integrator_postRoute -outDir ../Reports/timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -postRoute
optDesign -postRoute -hold
getFillerMode -quiet
addFiller -cell FEED7_5V FEED5_5V FEED3_5V FEED2_5V FEED25_5V FEED1_5V FEED15_5V -prefix FILLER
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verify_drc -report Integrator.drc.rpt -limit 1000
verifyConnectivity -type all -error 1000 -warning 50
setExtractRCMode -engine postRoute -effortLevel signoff
extractRC
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 50 -prefix Integrator_signOff -outDir ../Reports/timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -hold -pathReports -slackReports -numPaths 50 -prefix Integrator_signOff -outDir ../Reports/timingReports
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf -view TYPview ../Outputs/integrator.sdf
saveNetlist ../Outputs/netlist.v -includePhysicalCell {FEED7_5V FEED5_5V FEED3_5V FEED2_5V FEED25_5V FEED1_5V FEED15_5V}
defOut -floorplan -netlist -routing ../Outputs/integrator.def
