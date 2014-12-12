#!/bin/bash
#---------------------------------------------------------------------------------------------------
# Prepare weighted histogram for nice plotting
#
#                                                                         L.Di Matteo (Nov 14, 2014)
#---------------------------------------------------------------------------------------------------
if [ $1 = "sig" ]  || [ $1 = "all" ];
then
  # signal region plots
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,1,"metRaw",5,55,250,1000,1)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,1,"fjet1MassTrimmed",5,40,0,200)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,1,"fjet1.Pt()",5,55,250,1000,1)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,1,"bdt_all",10,40,-1.,1.)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,1,"metRaw",6,55,200,1000,1)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,1,"fjet1MassTrimmed",6,40,0,200)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,1,"jet1.Pt()",6,55,150,1000,1)'
fi
if [ $1 = "zll" ] || [ $1 = "all" ];
then
  # zll cr region plots, HORRIBLE fix for weird name
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,2,"met",2,35,250,1000,1)'
  mv BDT_Zll_TMath\:\:Sqrt\(TMath\:\:Power\(metRaw\*TMath\:\:Cos\(metRawPhi\ +\ lep1.Px\(\ +\ lep2.Px\(\,2\ +\ TMath\:\:Power\(metRaw\*TMath\:\:Sin\(metRawPhi\ +\ lep1.Py\(\ +\ lep2.Py\(\,2.root BDT_Zll_met.root
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,2,"fjet1MassTrimmed",2,40,0,200)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,2,"fjet1.Pt()",2,35,250,1000,1)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,2,"bdt_all",11,40,-1.,1.)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,2,"met",7,55,200,1000,1)'
  mv BDT_Zll_noVTagCut_TMath\:\:Sqrt\(TMath\:\:Power\(metRaw\*TMath\:\:Cos\(metRawPhi\ +\ lep1.Px\(\ +\ lep2.Px\(\,2\ +\ TMath\:\:Power\(metRaw\*TMath\:\:Sin\(metRawPhi\ +\ lep1.Py\(\ +\ lep2.Py\(\,2.root BDT_Zll_noVTagCut_met.root
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,2,"fjet1MassTrimmed",7,40,0,200)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,2,"jet1.Pt()",7,55,150,1000,1)'
fi
if [ $1 = "wlv" ] || [ $1 = "all" ];
then
  # wlv cr region plots, HORRIBLE fix for weird name
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,3,"met",3,35,250,1000,1)'
  mv BDT_Wlv_TMath\:\:Sqrt\(TMath\:\:Power\(metRaw\*TMath\:\:Cos\(metRawPhi\ +\ lep1.Px\(\,2\ +\ TMath\:\:Power\(metRaw\*TMath\:\:Sin\(metRawPhi\ +\ lep1.Py\(\,2.root BDT_Wlv_met.root
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,3,"fjet1MassTrimmed",3,40,0,200)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,3,"fjet1.Pt()",3,45,250,1000,1)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,3,"bdt_all",12,40,-1.,1.)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,3,"met",8,55,200,1000,1)'
  mv BDT_Wlv_noVTagCut_TMath\:\:Sqrt\(TMath\:\:Power\(metRaw\*TMath\:\:Cos\(metRawPhi\ +\ lep1.Px\(\,2\ +\ TMath\:\:Power\(metRaw\*TMath\:\:Sin\(metRawPhi\ +\ lep1.Py\(\,2.root BDT_Wlv_noVTagCut_met.root
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,3,"fjet1MassTrimmed",8,40,0,200)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,3,"jet1.Pt()",8,55,150,1000,1)'
fi
if [ $1 = "pj" ] || [ $1 = "all" ];
then
  # pj cr region plots, HORRIBLE fix for weird name
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,4,"met",4,55,250,1000,1)'
  mv BDT_Pj_TMath\:\:Sqrt\(TMath\:\:Power\(metRaw\*TMath\:\:Cos\(metRawPhi\ +\ pho1.Px\(\,2\ +\ TMath\:\:Power\(metRaw\*TMath\:\:Sin\(metRawPhi\ +\ pho1.Py\(\,2.root BDT_Pj_met.root
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,4,"fjet1MassTrimmed",4,40,0,200)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,4,"fjet1.Pt()",4,55,250,1000,1)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,4,"bdt_all",13,40,-1.,1.)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,4,"met",9,75,200,1000,1)'
  mv BDT_Pj_noVTagCut_TMath\:\:Sqrt\(TMath\:\:Power\(metRaw\*TMath\:\:Cos\(metRawPhi\ +\ pho1.Px\(\,2\ +\ TMath\:\:Power\(metRaw\*TMath\:\:Sin\(metRawPhi\ +\ pho1.Py\(\,2.root BDT_Pj_noVTagCut_met.root
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,4,"fjet1MassTrimmed",9,40,0,200)'
  root -b -q ../rootlogon_monojet.C makeRawPlot.C+'(19700,4,"jet1.Pt()",9,75,200,1000,1)'
fi
  
exit 0