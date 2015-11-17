//Maya ASCII 2015 scene
//Name: glyphBlue.ma
//Last modified: Mon, Nov 02, 2015 09:01:41 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201410051530-933320";
fileInfo "osv" "Microsoft Windows 8 , 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.860707832337074 19.650424834501557 -3.0343780032813461 ;
	setAttr ".r" -type "double3" 2809.8428552602559 610.66570632590845 3228.4444483624256 ;
	setAttr ".rp" -type "double3" 6.6613381477509392e-016 8.8817841970012523e-016 0 ;
	setAttr ".rpt" -type "double3" -1.6608494040520474e-015 4.01887115406561e-016 5.4134419355976942e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 19.992457409999311;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.6218487452277599 0.33950263483190835 0.77358473144360496 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".t" -type "double3" -2.5679254881822482 100.90582199702173 0.95102277866211293 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 28.429000523755867;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 -0.050481668486090592 -13.548348071033438 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.838267125519101;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 3.4694469519536142e-018 0.16806934387268657 -0.65024211768916762 ;
	setAttr ".r" -type "double3" 0 46.583423315876942 0 ;
	setAttr ".s" -type "double3" 4.0998735382682305 0.6029509678516537 4.0998735382682305 ;
createNode transform -n "transform2" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 3.4694469519536142e-018 0.16806934387268657 -0.65024211768916762 ;
	setAttr ".r" -type "double3" 0 46.583423315876942 0 ;
	setAttr ".s" -type "double3" 3.5365740495717 0.92424478910318464 3.5365740495717 ;
createNode transform -n "transform1" -p "pCube2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" -0.052651830361367197 0 -2.0621966891535273 ;
	setAttr ".r" -type "double3" 0 46.969289018370816 0 ;
	setAttr ".s" -type "double3" 1.125641303798246 1.125641303798246 1.125641303798246 ;
createNode transform -n "transform4" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" 0.21060732144546554 0 -2.3430064510808162 ;
	setAttr ".r" -type "double3" 0 46.969289018370816 0 ;
	setAttr ".s" -type "double3" 0.49970612448235963 1.3786548013068785 0.40320380695833852 ;
createNode transform -n "transform3" -p "pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group1";
	setAttr ".t" -type "double3" 0.012141969643170991 0 -13.258682439612866 ;
	setAttr ".r" -type "double3" 0 -0.86564644842896143 0 ;
	setAttr ".s" -type "double3" 1 0.2800940229950073 1 ;
createNode transform -n "pCube3" -p "group1";
	setAttr ".t" -type "double3" 0.23451241196069761 -0.16984542349714166 13.870390966198203 ;
	setAttr ".s" -type "double3" 1 0.44337392601367115 1 ;
	setAttr ".rp" -type "double3" 0 0.16806934028863907 -0.65024209022521973 ;
	setAttr ".sp" -type "double3" 0 0.16806934028863907 -0.65024209022521973 ;
createNode mesh -n "pCube3Shape" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCube6" -p "group1";
	setAttr ".t" -type "double3" 0.23451241196069761 0.010561585867381373 13.882665005841922 ;
	setAttr ".s" -type "double3" 1 0.23376719230049936 1 ;
	setAttr ".rp" -type "double3" -0.052651822566986084 -4.6622592183069251 -2.0621966719627398 ;
	setAttr ".sp" -type "double3" -0.052651822566986084 -19.944027099892445 -2.0621966719627398 ;
	setAttr ".spt" -type "double3" 0 15.281767881585502 0 ;
createNode mesh -n "pCube6Shape" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCube7" -p "group1";
	setAttr ".t" -type "double3" 1.6824377468982803 0.010561585867381373 15.225286680056772 ;
	setAttr ".r" -type "double3" 0 0.047235511919725061 0 ;
	setAttr ".s" -type "double3" 1 0.23376719230049936 1 ;
	setAttr ".rp" -type "double3" -0.052651822566986084 0 -2.062196671962738 ;
	setAttr ".sp" -type "double3" -0.052651822566986084 0 -2.062196671962738 ;
createNode mesh -n "pCube7Shape" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 0.83040667 0.5299964
		 0.83040667 0.5299964 0.91995645 0.625 0.91995645 0.625 1 0.375 1 0.70504355 0 0.70504355
		 0.25 0.625 0.33004355 0.5299964 0.33004355 0.5299964 0.41959333 0.625 0.41959333
		 0.625 0.5 0.375 0.5 0.79459333 0 0.875 0 0.875 0.25 0.79459333 0.25 0.37500003 0.22705975
		 0.58900559 0.22705974 0.58900559 0.022940248 0.37500003 0.02294025 0.125 0.02294025
		 0.125 0.22705975 0.37500003 0.72705978 0.58900565 0.72705972 0.58900565 0.52294028
		 0.37500003 0.52294028;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.025300004 -0.56282067 -1.26671827 0.74282664 -0.56282067 -2.089548588
		 0.74282664 0.56282067 -2.089548588 -0.025300004 0.56282067 -1.26671827 -0.84813029 -0.56282067 -2.034844875
		 -0.84813029 0.56282067 -2.034844875 -0.080003656 -0.56282067 -2.85767508 0.18464051 -0.56282067 -2.61062503
		 -0.10725856 -0.56282067 -2.29793787 0.1874786 -0.56282067 -2.022795677 0.47937763 -0.56282067 -2.33548284
		 0.47937763 0.56282067 -2.33548284 0.1874786 0.56282067 -2.022795677 -0.10725856 0.56282067 -2.29793787
		 0.18464051 0.56282067 -2.61062503 -0.080003656 0.56282067 -2.85767508;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 0 0 4 0 0 3 5 0 5 4 0
		 4 6 0 6 7 0 7 8 0 8 9 0 9 10 0 10 1 0 10 11 0 11 2 0 11 12 0 12 13 0 13 14 0 14 15 0
		 15 5 0 15 6 0 14 7 0 9 12 0 8 13 0;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 8 7 8 9 10 11 12 -1 -5
		mu 0 8 6 7 8 9 10 11 12 13
		f 4 -13 13 14 -2
		mu 0 4 1 14 15 2
		f 8 -3 -15 15 16 17 18 19 -6
		mu 0 8 3 2 16 17 18 19 20 21
		f 4 -20 20 -8 -7
		mu 0 4 21 20 7 6
		f 4 -9 -21 -19 21
		mu 0 4 22 23 24 25
		f 4 -16 -14 -12 22
		mu 0 4 26 27 28 29
		f 4 -11 23 -17 -23
		mu 0 4 29 30 31 26
		f 4 -10 -22 -18 -24
		mu 0 4 32 33 34 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube8" -p "group1";
	setAttr ".t" -type "double3" 0.31349015750274756 0.010561585867381373 16.690762625114807 ;
	setAttr ".r" -type "double3" 0 -181.57819736550124 0 ;
	setAttr ".s" -type "double3" 1 0.23376719230049936 1 ;
	setAttr ".rp" -type "double3" -0.052651822566986084 0 -2.062196671962738 ;
	setAttr ".sp" -type "double3" -0.052651822566986084 0 -2.062196671962738 ;
createNode mesh -n "pCube8Shape" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 0.83040667 0.5299964
		 0.83040667 0.5299964 0.91995645 0.625 0.91995645 0.625 1 0.375 1 0.70504355 0 0.70504355
		 0.25 0.625 0.33004355 0.5299964 0.33004355 0.5299964 0.41959333 0.625 0.41959333
		 0.625 0.5 0.375 0.5 0.79459333 0 0.875 0 0.875 0.25 0.79459333 0.25 0.37500003 0.22705975
		 0.58900559 0.22705974 0.58900559 0.022940248 0.37500003 0.02294025 0.125 0.02294025
		 0.125 0.22705975 0.37500003 0.72705978 0.58900565 0.72705972 0.58900565 0.52294028
		 0.37500003 0.52294028;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.025300004 -0.56282067 -1.26671827 0.74282664 -0.56282067 -2.089548588
		 0.74282664 0.56282067 -2.089548588 -0.025300004 0.56282067 -1.26671827 -0.84813029 -0.56282067 -2.034844875
		 -0.84813029 0.56282067 -2.034844875 -0.080003656 -0.56282067 -2.85767508 0.18464051 -0.56282067 -2.61062503
		 -0.10725856 -0.56282067 -2.29793787 0.1874786 -0.56282067 -2.022795677 0.47937763 -0.56282067 -2.33548284
		 0.47937763 0.56282067 -2.33548284 0.1874786 0.56282067 -2.022795677 -0.10725856 0.56282067 -2.29793787
		 0.18464051 0.56282067 -2.61062503 -0.080003656 0.56282067 -2.85767508;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 0 0 4 0 0 3 5 0 5 4 0
		 4 6 0 6 7 0 7 8 0 8 9 0 9 10 0 10 1 0 10 11 0 11 2 0 11 12 0 12 13 0 13 14 0 14 15 0
		 15 5 0 15 6 0 14 7 0 9 12 0 8 13 0;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 8 7 8 9 10 11 12 -1 -5
		mu 0 8 6 7 8 9 10 11 12 13
		f 4 -13 13 14 -2
		mu 0 4 1 14 15 2
		f 8 -3 -15 15 16 17 18 19 -6
		mu 0 8 3 2 16 17 18 19 20 21
		f 4 -20 20 -8 -7
		mu 0 4 21 20 7 6
		f 4 -9 -21 -19 21
		mu 0 4 22 23 24 25
		f 4 -16 -14 -12 22
		mu 0 4 26 27 28 29
		f 4 -11 23 -17 -23
		mu 0 4 29 30 31 26
		f 4 -10 -22 -18 -24
		mu 0 4 32 33 34 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube9" -p "group1";
	setAttr ".t" -type "double3" -1.1344351774348351 0.010561585867381373 15.34814095089996 ;
	setAttr ".r" -type "double3" 0 -179.24075081444559 0 ;
	setAttr ".s" -type "double3" 1 0.23376719230049936 1 ;
	setAttr ".rp" -type "double3" -0.052651822566986084 0 -2.062196671962738 ;
	setAttr ".sp" -type "double3" -0.052651822566986084 0 -2.062196671962738 ;
createNode mesh -n "pCube9Shape" -p "pCube9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32749819755554199 0.45997822284698486 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 0.83040667 0.5299964
		 0.83040667 0.5299964 0.91995645 0.625 0.91995645 0.625 1 0.375 1 0.70504355 0 0.70504355
		 0.25 0.625 0.33004355 0.5299964 0.33004355 0.5299964 0.41959333 0.625 0.41959333
		 0.625 0.5 0.375 0.5 0.79459333 0 0.875 0 0.875 0.25 0.79459333 0.25 0.37500003 0.22705975
		 0.58900559 0.22705974 0.58900559 0.022940248 0.37500003 0.02294025 0.125 0.02294025
		 0.125 0.22705975 0.37500003 0.72705978 0.58900565 0.72705972 0.58900565 0.52294028
		 0.37500003 0.52294028;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.025300004 -0.56282067 -1.26671827 0.74282664 -0.56282067 -2.089548588
		 0.74282664 0.56282067 -2.089548588 -0.025300004 0.56282067 -1.26671827 -0.84813029 -0.56282067 -2.034844875
		 -0.84813029 0.56282067 -2.034844875 -0.080003656 -0.56282067 -2.85767508 0.18464051 -0.56282067 -2.61062503
		 -0.10725856 -0.56282067 -2.29793787 0.1874786 -0.56282067 -2.022795677 0.47937763 -0.56282067 -2.33548284
		 0.47937763 0.56282067 -2.33548284 0.1874786 0.56282067 -2.022795677 -0.10725856 0.56282067 -2.29793787
		 0.18464051 0.56282067 -2.61062503 -0.080003656 0.56282067 -2.85767508;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 0 0 4 0 0 3 5 0 5 4 0
		 4 6 0 6 7 0 7 8 0 8 9 0 9 10 0 10 1 0 10 11 0 11 2 0 11 12 0 12 13 0 13 14 0 14 15 0
		 15 5 0 15 6 0 14 7 0 9 12 0 8 13 0;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 8 7 8 9 10 11 12 -1 -5
		mu 0 8 6 7 8 9 10 11 12 13
		f 4 -13 13 14 -2
		mu 0 4 1 14 15 2
		f 8 -3 -15 15 16 17 18 19 -6
		mu 0 8 3 2 16 17 18 19 20 21
		f 4 -20 20 -8 -7
		mu 0 4 21 20 7 6
		f 4 -9 -21 -19 21
		mu 0 4 22 23 24 25
		f 4 -16 -14 -12 22
		mu 0 4 26 27 28 29
		f 4 -11 23 -17 -23
		mu 0 4 29 30 31 26
		f 4 -10 -22 -18 -24
		mu 0 4 32 33 34 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "imagePlane1";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	setAttr -k off ".v";
	setAttr ".fc" 102;
	setAttr ".imn" -type "string" "/Users/bopu/Downloads/Glyph_1.png";
	setAttr ".cov" -type "short2" 2115 7500 ;
	setAttr ".dlc" no;
	setAttr ".w" 21.15;
	setAttr ".h" 74.999999999999986;
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" -0.28145059112688831 0.44459785669092267 -2.2344703250949474 ;
	setAttr ".s" -type "double3" 0.12405837032442632 2.0180889916241491 3.8568356231113796 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane2";
	setAttr ".t" -type "double3" 0.71815349746415913 0.20123630840412587 -1.2803318087853528 ;
	setAttr ".s" -type "double3" 0.10201330036846594 1.6594762444039131 3.171479117961562 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "pPlane2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  7.50428295 -1.110223e-016 0.50041211 8.50428391 -1.110223e-016 0.50041211
		 7.50428104 3.5762787e-007 1.22729445 8.504282 3.5762787e-007 1.22729445 -2.032934666 3.5762787e-007 1.4491806
		 -1.032933712 3.5762787e-007 1.4491806 -2.032934666 3.5762787e-007 2.012115479 -1.032933712 3.5762787e-007 2.012115479;
	setAttr -s 10 ".ed[0:9]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 3 5 0 4 5 1
		 4 6 0 5 7 0 6 7 0;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 -1 1 3 -3
		mu 0 4 0 1 2 3
		f 4 -4 4 6 -6
		mu 0 4 4 5 6 7
		f 4 -7 7 9 -9
		mu 0 4 8 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane3";
	setAttr ".t" -type "double3" 0.1416557847787604 0.35036029290299231 -2.0683982185188805 ;
	setAttr ".s" -type "double3" 0.11631136647771625 1.8920665141385089 4.6521696122096632 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0 0 0.028959109 0 0 0.028959109 
		0 0 -0.59228623 0 0 -0.59228623 0 0 0 0 0 0 1.0658141e-014 0 -0.0058024256 1.0658141e-014 
		0 -0.0058024256 0 0 0.069629118 0 0 0.069629118 0 0 -5.9604645e-008 0 0 -5.9604645e-008 
		0 0 0.028959109 0 0 0.028959109 0 0 -0.59228623 0 0 -0.59228623 0 0 0 0 0 0 1.0658141e-014 
		0 -0.0058024256 1.0658141e-014 0 -0.0058024256 0 0 0.069629118 0 0 0.069629118 0 
		0 -5.9604645e-008 0 0 -5.9604645e-008;
createNode mesh -n "polySurfaceShape5" -p "pPlane3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 1 0 0 1 1 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.29543626 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.29543626 ;
	setAttr ".pt[4]" -type "float3" 18.465771 -1.110223e-016 -0.29543626 ;
	setAttr ".pt[5]" -type "float3" 18.465771 -1.110223e-016 -0.29543626 ;
	setAttr ".pt[6]" -type "float3" 18.542885 -1.110223e-016 0 ;
	setAttr ".pt[7]" -type "float3" 18.542885 -1.110223e-016 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 0 0.49999809 0.5 0 0.49999809 -0.5 0 -0.5
		 0.5 0 -0.5 -8.80339718 0 0.79584837 -7.80339622 0 0.79584837 -8.80339718 3.5762787e-007 1.22729445
		 -7.80339622 3.5762787e-007 1.22729445 -2.032934666 3.5762787e-007 1.4491806 -1.032933712 3.5762787e-007 1.4491806
		 -2.032934666 3.5762787e-007 2.012115479 -1.032933712 3.5762787e-007 2.012115479;
	setAttr -s 16 ".ed[0:15]"  0 1 1 0 2 0 1 3 0 2 3 0 0 4 0 1 5 0 4 5 1
		 4 6 0 5 7 0 6 7 1 6 8 0 7 9 0 8 9 1 8 10 0 9 11 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 -1 4 6 -6
		mu 0 4 4 5 6 7
		f 4 -7 7 9 -9
		mu 0 4 8 9 10 11
		f 4 -10 10 12 -12
		mu 0 4 12 13 14 15
		f 4 -13 13 15 -15
		mu 0 4 16 17 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane4";
	setAttr ".t" -type "double3" -2.0481483148829818 0.38765187752575891 -4.516165557900397 ;
	setAttr ".s" -type "double3" 0.12313254366382484 2.0030283343946071 3.5830933992716196 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "pPlane4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  3.1020992 0.013276337 0.016087038 
		3.1020992 0.013276337 0.016087038 3.1020992 0.013276337 0.016087038 3.1020992 0.013276337 
		0.016087038;
	setAttr -s 8 ".vt[0:7]"  7.50428295 -1.110223e-016 0.50041211 8.50428391 -1.110223e-016 0.50041211
		 7.50428104 3.5762787e-007 1.22729445 8.504282 3.5762787e-007 1.22729445 -2.032934666 3.5762787e-007 1.4491806
		 -1.032933712 3.5762787e-007 1.4491806 -2.032934666 3.5762787e-007 2.012115479 -1.032933712 3.5762787e-007 2.012115479;
	setAttr -s 10 ".ed[0:9]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 3 5 0 4 5 1
		 4 6 0 5 7 0 6 7 0;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 -1 1 3 -3
		mu 0 4 0 1 2 3
		f 4 -4 4 6 -6
		mu 0 4 4 5 6 7
		f 4 -7 7 9 -9
		mu 0 4 8 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane5";
	setAttr ".t" -type "double3" 1.5509714142638613 0.30674413874468953 -16.426346677754264 ;
	setAttr ".r" -type "double3" 0 45.363763335834591 0 ;
	setAttr ".s" -type "double3" 0.055335690636368555 1 1 ;
createNode transform -n "transform8" -p "pPlane5";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape5" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane6";
	setAttr ".t" -type "double3" 1.5509714142638613 0.28265523311768004 -16.033513489163919 ;
	setAttr ".r" -type "double3" 0 45.363763335834591 0 ;
	setAttr ".s" -type "double3" 0.055335690636368555 1 1 ;
createNode mesh -n "polySurfaceShape10" -p "pPlane6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform7" -p "pPlane6";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape6" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane7";
	setAttr ".t" -type "double3" 1.5509714142638613 0.25816475636862146 -15.654965143795073 ;
	setAttr ".r" -type "double3" 0 45.363763335834591 0 ;
	setAttr ".s" -type "double3" 0.055335690636368555 1 1 ;
createNode mesh -n "polySurfaceShape8" -p "pPlane7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform6" -p "pPlane7";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape7" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane8";
	setAttr ".t" -type "double3" 1.9080924948005109 0.32264035154320092 -15.468412244321446 ;
	setAttr ".s" -type "double3" 0.055335690636368555 1 1 ;
createNode mesh -n "polySurfaceShape9" -p "pPlane8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform5" -p "pPlane8";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape8" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[2]" -type "float3" -6.1839422e-014 0 -0.12051396 ;
	setAttr ".pt[3]" -type "float3" -6.655787e-014 0 -0.12051396 ;
	setAttr ".pt[6]" -type "float3" -6.1839422e-014 0 -0.12051396 ;
	setAttr ".pt[7]" -type "float3" -6.655787e-014 0 -0.12051396 ;
createNode transform -n "pPlane9";
	setAttr ".t" -type "double3" 2.2057644871001849 0.26616378248043832 2.042428426860603 ;
	setAttr ".s" -type "double3" 0.13297946366937372 2.403140941047095 2.403140941047095 ;
createNode mesh -n "pPlaneShape9" -p "pPlane9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 3.5762787e-007 ;
	setAttr ".pt[3]" -type "float3" 0 0 3.5762787e-007 ;
	setAttr ".pt[6]" -type "float3" 0 0 3.5762787e-007 ;
	setAttr ".pt[7]" -type "float3" 0 0 3.5762787e-007 ;
createNode mesh -n "polySurfaceShape7" -p "pPlane9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane10";
	setAttr ".t" -type "double3" -0.55040510025040434 0.50356984066072918 1.4092296163136329 ;
	setAttr ".s" -type "double3" 0.055335690636368555 1 1 ;
createNode mesh -n "pPlaneShape10" -p "pPlane10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape4" -p "pPlane10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane11";
	setAttr ".t" -type "double3" -2.3126539054048001 0.22513018328638001 -14.892800648771562 ;
	setAttr ".s" -type "double3" 0.055335690636368555 1 1 ;
createNode mesh -n "polySurfaceShape1" -p "pPlane11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform10" -p "pPlane11";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape11" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 1.110223e-015 0 -0.037683859 ;
	setAttr ".pt[1]" -type "float3" -1.110223e-015 0 -0.037683859 ;
	setAttr ".pt[4]" -type "float3" 1.110223e-015 0 -0.037683859 ;
	setAttr ".pt[5]" -type "float3" -1.110223e-015 0 -0.037683859 ;
	setAttr ".pt[8]" -type "float3" 1.7763568e-014 0 -0.037683859 ;
	setAttr ".pt[9]" -type "float3" 1.7763568e-014 0 -0.037683859 ;
	setAttr ".pt[10]" -type "float3" 1.7763568e-014 0 -0.037683859 ;
	setAttr ".pt[11]" -type "float3" 1.7763568e-014 0 -0.037683859 ;
createNode transform -n "pPlane12";
	setAttr ".t" -type "double3" -2.1055595278918062 0.13198065379992163 -15.589039477437144 ;
	setAttr ".r" -type "double3" 0 -44.37071502568822 0 ;
	setAttr ".s" -type "double3" 0.055335690636368555 1 0.6132922537744615 ;
createNode mesh -n "polySurfaceShape2" -p "pPlane12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform9" -p "pPlane12";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape12" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane13";
	setAttr ".t" -type "double3" 0.40177866265115014 1.6653345369377348e-016 12.683923542560342 ;
	setAttr ".s" -type "double3" 1.7706868169420422 1.7706868169420422 1.7706868169420422 ;
	setAttr ".rp" -type "double3" 1.6726625069045331 0 -15.806583041490574 ;
	setAttr ".sp" -type "double3" 1.6726625069045331 0 -15.806583041490574 ;
createNode mesh -n "pPlane13Shape" -p "pPlane13";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane14";
	setAttr ".t" -type "double3" -0.55207816631799345 1.6653345369377348e-016 12.336173619338497 ;
	setAttr ".s" -type "double3" 2.4150812560504713 2.4150812560504713 2.4150812560504713 ;
	setAttr ".rp" -type "double3" -2.2658873673861457 0 -14.803797466922816 ;
	setAttr ".sp" -type "double3" -2.2658873673861457 0 -14.803797466922816 ;
createNode mesh -n "pPlane14Shape" -p "pPlane14";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 0.59663439 ;
	setAttr ".pt[3]" -type "float3" 0 0 0.59663439 ;
	setAttr ".pt[6]" -type "float3" 0 0 0.59663439 ;
	setAttr ".pt[7]" -type "float3" 0 0 0.59663439 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.59663439 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.59663439 ;
	setAttr ".pt[14]" -type "float3" 0 0 0.59663439 ;
	setAttr ".pt[15]" -type "float3" 0 0 0.59663439 ;
	setAttr ".pt[16]" -type "float3" 0 0 0.59663439 ;
	setAttr ".pt[17]" -type "float3" 0 0 0.59663439 ;
	setAttr ".pt[18]" -type "float3" 0 0 0.59663439 ;
	setAttr ".pt[19]" -type "float3" 0 0 0.59663439 ;
createNode transform -n "pPlane15";
	setAttr ".t" -type "double3" -2.2099592190695945 0.26616378248043832 1.2057649877968561 ;
	setAttr ".r" -type "double3" 0 44.968018460120874 0 ;
	setAttr ".s" -type "double3" 0.13297946366937372 2.403140941047095 2.403140941047095 ;
createNode mesh -n "pPlaneShape15" -p "pPlane15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 0 1 0 0 1 1 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 3.5762787e-007 ;
	setAttr ".pt[3]" -type "float3" 0 0 3.5762787e-007 ;
	setAttr ".pt[6]" -type "float3" 0 0 3.5762787e-007 ;
	setAttr ".pt[7]" -type "float3" 0 0 3.5762787e-007 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 0 0.5 0.50000381 0 0.5 -0.5 0 -0.49999964
		 0.50000381 0 -0.49999964 -0.5 -0.045043349 0.5 0.50000381 -0.045043349 0.5 -0.5 -0.045043349 -0.49999964
		 0.50000381 -0.045043349 -0.49999964 5.066926956 0 -0.81327057 6.066930771 0 -0.81327057
		 6.066930771 -0.045043349 -0.81327057 5.066926956 -0.045043349 -0.81327057;
	setAttr -s 20 ".ed[0:19]"  0 1 0 0 2 0 1 3 0 2 3 1 0 4 0 1 5 0 4 5 0
		 2 6 0 4 6 0 3 7 0 5 7 0 6 7 0 2 8 0 3 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 -1 4 6 -6
		mu 0 4 4 5 6 7
		f 4 1 7 -9 -5
		mu 0 4 8 9 10 11
		f 4 -3 5 10 -10
		mu 0 4 12 13 14 15
		f 4 14 16 -19 -20
		mu 0 4 20 21 22 23
		f 4 3 13 -15 -13
		mu 0 4 16 17 21 20
		f 4 9 15 -17 -14
		mu 0 4 17 18 22 21
		f 4 -12 17 18 -16
		mu 0 4 18 19 23 22
		f 4 -8 12 19 -18
		mu 0 4 19 16 20 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "pPlane15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10";
	setAttr ".t" -type "double3" 4.3973174191191289 0.33950263483190829 -9.8607613152626465e-032 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.10303732439528163 0.085832287847125446 1 ;
createNode mesh -n "pCubeShape6" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube11";
	setAttr ".t" -type "double3" -2.1421691205575737 0.33950263483190846 0.75927190991455451 ;
	setAttr ".r" -type "double3" 0 40.286621299180929 0 ;
	setAttr ".s" -type "double3" 0.10303732439528163 0.085832287847125446 1 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" 1.137936 0 -0.13832176 ;
	setAttr ".pt[1]" -type "float3" 1.137936 0 -0.13832176 ;
	setAttr ".pt[2]" -type "float3" 1.137936 0 -0.13832176 ;
	setAttr ".pt[3]" -type "float3" 1.137936 0 -0.13832176 ;
	setAttr ".pt[8]" -type "float3" 1.137936 0 -0.13832176 ;
	setAttr ".pt[9]" -type "float3" 1.137936 0 -0.13832176 ;
	setAttr ".pt[14]" -type "float3" 1.137936 0 -0.13832176 ;
	setAttr ".pt[15]" -type "float3" 1.137936 0 -0.13832176 ;
	setAttr ".pt[16]" -type "float3" -4.3794341 0 -0.3825027 ;
	setAttr ".pt[17]" -type "float3" -4.3794341 0 -0.3825027 ;
	setAttr ".pt[18]" -type "float3" -4.3794341 0 -0.3825027 ;
	setAttr ".pt[19]" -type "float3" -4.3794341 0 -0.3825027 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 -0.5 -0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 0.5 -0.5 -0.5 0.5
		 -10.78454018 0.5 -1.39607882 -9.59573174 0.5 -1.39607882 -9.59573174 -0.5 -1.39607882
		 -10.78454018 -0.5 -1.39607882;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 1 8 11 0 7 12 0 10 12 0
		 6 13 0 13 12 1 11 13 0 1 14 0 12 14 0 0 15 0 15 14 0 13 15 0 11 16 0 10 17 0 16 17 0
		 12 18 0 17 18 0 13 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2
		f 4 12 14 -17 -18
		mu 0 4 14 15 16 17
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 21 24 -27 -28
		mu 0 4 19 18 20 21
		f 4 -10 -8 -6 -4
		mu 0 4 1 10 11 3
		f 4 8 2 4 6
		mu 0 4 12 0 2 13
		f 4 1 11 -13 -11
		mu 0 4 2 3 15 14
		f 4 5 13 -15 -12
		mu 0 4 3 5 16 15
		f 4 -5 10 17 -16
		mu 0 4 4 2 14 17
		f 4 7 18 -20 -14
		mu 0 4 5 7 18 16
		f 4 -7 15 22 -21
		mu 0 4 6 4 17 19
		f 4 9 23 -25 -19
		mu 0 4 7 9 20 18
		f 4 -1 25 26 -24
		mu 0 4 9 8 21 20
		f 4 -9 20 27 -26
		mu 0 4 8 6 19 21
		f 4 16 29 -31 -29
		mu 0 4 17 16 23 22
		f 4 19 31 -33 -30
		mu 0 4 16 18 24 23
		f 4 -22 33 34 -32
		mu 0 4 18 19 25 24
		f 4 -23 28 35 -34
		mu 0 4 19 17 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 2 89 -91 ;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube2";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 2 94 -96 ;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode lambert -n "glyphBlue";
	setAttr ".c" -type "float3" 0 0.56179976 1 ;
	setAttr ".ambc" -type "float3" 0.25082499 0.31125572 0.63499999 ;
	setAttr ".gi" 0.19191919267177582;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n"
		+ "\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n"
		+ "                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane1";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0]";
	setAttr ".ix" -type "matrix" 0.061473191142371077 0 0 0 0 1 0 0 0 0 1.9111325809311372 0
		 -0.30219096446019755 0.38765187752575886 -15.475819215054704 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.30219096 0.38765189 -14.520253 ;
	setAttr ".rs" 1177750695;
	setAttr ".lt" -type "double3" -0.51043627577137818 -0.56540633623906622 2.5109085310462574e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33292756003138307 0.38765187752575875 -14.520252924589135 ;
	setAttr ".cbx" -type "double3" -0.27145436888901203 0.38765187752575875 -14.520252924589135 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6]";
	setAttr ".ix" -type "matrix" 0.061473191142371077 0 0 0 0 1 0 0 0 0 1.9111325809311372 0
		 -0.30219096446019755 0.38765187752575886 -15.475819215054704 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.81262726 0.38765189 -13.954846 ;
	setAttr ".rs" 1639519529;
	setAttr ".lt" -type "double3" 0 -0.82455090701530409 1.8308708038878942e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.84336388192555323 0.38765187752575886 -13.954846555135269 ;
	setAttr ".cbx" -type "double3" -0.78189063215777865 0.38765187752575886 -13.954846555135269 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[9]";
	setAttr ".ix" -type "matrix" 0.061473191142371077 0 0 0 0 1 0 0 0 0 1.9111325809311372 0
		 -0.30219096446019755 0.38765187752575886 -15.475819215054704 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.81262726 0.38765225 -13.130297 ;
	setAttr ".rs" 1586696431;
	setAttr ".lt" -type "double3" 0.41620188639820066 -0.42405475217925848 -1.8392302974838796e-007 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.84336388192555323 0.38765223515362751 -13.130296814747085 ;
	setAttr ".cbx" -type "double3" -0.78189063215777865 0.38765223515362751 -13.130296814747085 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12]";
	setAttr ".ix" -type "matrix" 0.061473191142371077 0 0 0 0 1 0 0 0 0 1.9111325809311372 0
		 -0.30219096446019755 0.38765187752575886 -15.475819215054704 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.39642534 0.38765225 -12.706242 ;
	setAttr ".rs" 727585414;
	setAttr ".lt" -type "double3" 1.0547118733938987e-015 -1.0758426120104438 1.8337389651411492e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.42716197505619402 0.38765223515362751 -12.706242037656686 ;
	setAttr ".cbx" -type "double3" -0.36568872528841939 0.38765223515362751 -12.706242037656686 ;
createNode polyPlane -n "polyPlane2";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.055335690636368555 0 0 0 0 1 0 0 0 0 1 0 -2.0038720718319052 0.22513018328638001 -14.097093616102947 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 2130320230;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0315399171500896 0.2251301832863799 -14.597093616102947 ;
	setAttr ".cbx" -type "double3" -1.976204226513721 0.22513018328638013 -13.597093616102947 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.039555622676068471 0 0.038696141576549777 0 0 1 0 0
		 -0.42887408843977315 0 0.4383998229980392 0 -1.7967776943189115 0.13198065379992163 -14.793332444768529 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 2004702199;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0309925498768324 0.13198065379992152 -15.031880427055823 ;
	setAttr ".cbx" -type "double3" -1.5625628387609907 0.13198065379992174 -14.554784462481235 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:9]";
	setAttr ".ix" -type "matrix" 0.061473191142371077 0 0 0 0 1 0 0 0 0 1.7888380996640119 0
		 -1.6081041345419025 0.38765187752575875 -16.49530824980322 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 1714592267;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5423791799768447 0.38765187752575864 -15.600152008137892 ;
	setAttr ".cbx" -type "double3" -1.0853186645190465 0.40092857186825276 -12.867182283646359 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.055335690636368555 0 0 0 0 1 0 0 0 0 1 0 -1.2808494958431382 0.30674413874468948 -13.633849444468598 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 1678242458;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3085173411613225 0.30674413874468937 -14.133849444468598 ;
	setAttr ".cbx" -type "double3" -1.253181650524954 0.30674413874468959 -13.133849444468598 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:15]";
	setAttr ".ix" -type "matrix" 0.061473191142371077 0 0 0 0 1 0 0 0 0 1.9111325809311372 0
		 -0.30219096446019755 0.4445978566909225 -15.475819215054704 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 627972117;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.84336388192555323 0.4445978566909225 -16.431385505520272 ;
	setAttr ".cbx" -type "double3" -0.27145436888901203 0.44459821431879115 -12.165514101553338 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[10:11]" -type "float3"  0 0 -0.2799986 0 0 -0.2799986;
createNode polyExtrudeEdge -n "polyExtrudeEdge10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:15]";
	setAttr ".ix" -type "matrix" 0.061473191142371077 0 0 0 0 1 0 0 0 0 2.458776991953624 0
		 -0.013938764280703508 0.35036029290299214 -15.475819215054704 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 25674937;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.13890974556399818 0.35036029290299203 -16.705207711031516 ;
	setAttr ".cbx" -type "double3" 0.6462518713019676 0.3503606505308608 -10.52847597132673 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:9]";
	setAttr ".ix" -type "matrix" 0.061473191142371077 0 0 0 0 1 0 0 0 0 1.9111325809311372 0
		 0.4352692065716911 0.20123630840412571 -15.475819215054704 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 1460683158;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.31029822528839646 0.2012363084041256 -14.51946533440346 ;
	setAttr ".cbx" -type "double3" 0.95805467659454702 0.20123666603199436 -11.630399767467647 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.055335690636368555 0 0 0 0 1 0 0 0 0 1 0 1.6098360957337774 0.22513018328638001 -13.787964059561482 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 244572459;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.5821682504155932 0.2251301832863799 -14.287964059561482 ;
	setAttr ".cbx" -type "double3" 1.6375039410519616 0.22513018328638013 -13.287964059561482 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.0378393053079931 0 -0.040376052704695777 0 0 1 0 0
		 0.72965661475198462 0 0.68381373527348344 0 1.6641666484582767 0.25816475636862146 -14.255468781783975 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 1871075835;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.2804186884282878 0.25816475636862135 -14.617563675773065 ;
	setAttr ".cbx" -type "double3" 2.0479146084882656 0.25816475636862157 -13.893373887794885 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.055335690636368555 0 0 0 0 1 0 0 0 0 1 0 2.0212877289949263 0.32264035154320092 -14.212614252119574 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 2140944799;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.993619883676742 0.32264035154320081 -14.712614252119574 ;
	setAttr ".cbx" -type "double3" 2.0489555743131107 0.32264035154320103 -13.712614252119574 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.0378393053079931 0 -0.040376052704695777 0 0 1 0 0
		 0.72965661475198462 0 0.68381373527348344 0 1.6641666484582767 0.28265523311768004 -14.634017127152822 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 198954420;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.2804186884282878 0.28265523311767993 -14.996112021141911 ;
	setAttr ".cbx" -type "double3" 2.0479146084882656 0.28265523311768015 -14.271922233163732 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.0378393053079931 0 -0.040376052704695777 0 0 1 0 0
		 0.72965661475198462 0 0.68381373527348344 0 1.6641666484582767 0.30674413874468953 -15.026850315743134 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0087078288 0.28828943 -13.616842 ;
	setAttr ".rs" 1781078157;
	setAttr ".lt" -type "double3" 2.8145020249394272e-015 -4.1546757414670342e-016 -0.045043346779639226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.2804186884282878 0.30674413874468942 -15.388945209732224 ;
	setAttr ".cbx" -type "double3" 2.0479146084882656 0.30674413874468964 -14.664755421754045 ;
createNode lambert -n "glyph2";
	setAttr ".c" -type "float3" 1 0.87083179 0.59299999 ;
	setAttr ".ambc" -type "float3" 1 0.83274776 0.47299999 ;
	setAttr ".gi" 0.10101009905338287;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 23 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 14 ".gn";
createNode materialInfo -n "materialInfo2";
createNode polyExtrudeEdge -n "polyExtrudeEdge17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
	setAttr ".ix" -type "matrix" 0.055335690636368555 0 0 0 0 1 0 0 0 0 1 0 1.6098360957337774 0.26616378248043815 -12.147273768230587 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.6098361 0.2661638 -12.647273 ;
	setAttr ".rs" 678102967;
	setAttr ".lt" -type "double3" 0.55289986287016424 0.38421856576031954 0.38421856576031937 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.5821682504155932 0.26616378248043815 -12.647273410602718 ;
	setAttr ".cbx" -type "double3" 1.6375040465964155 0.26616378248043815 -12.647273410602718 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.055335690636368555 0 0 0 0 1 0 0 0 0 1 0 1.6098360957337774 0.26616378248043815 -12.147273768230587 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.6098362 0.24364211 -12.647273 ;
	setAttr ".rs" 1977299224;
	setAttr ".lt" -type "double3" 0.30804957232305941 -3.8364602310930089e-017 0.31327075151497574 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.5821682504155932 0.2211204332143859 -12.647273410602718 ;
	setAttr ".cbx" -type "double3" 1.6375041521408695 0.26616378248043815 -12.647273410602718 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.061473191142371077 0 0 0 0 1 0 0 0 0 1.9111325809311372 0
		 0.48463531592706521 0.20123630840412571 -13.79737149697201 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.97668415 0.17871463 -12.360415 ;
	setAttr ".rs" 738580416;
	setAttr ".lt" -type "double3" 0.40725197696946824 -1.023317920417917e-006 0.40464138737221683 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.94594750686944473 0.15619295913807346 -12.360414570155614 ;
	setAttr ".cbx" -type "double3" 1.0074207859499211 0.20123630840412571 -12.360414456243234 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 3.5527137e-015 0 0.25147563 ;
	setAttr ".tk[1]" -type "float3" 3.5527137e-015 0 0.25147563 ;
	setAttr ".tk[4]" -type "float3" -3.5527137e-015 0 0.097046815 ;
	setAttr ".tk[5]" -type "float3" -3.5527137e-015 0 0.097046815 ;
	setAttr ".tk[6]" -type "float3" -3.5527137e-015 0 0.097046815 ;
	setAttr ".tk[7]" -type "float3" -3.5527137e-015 0 0.097046815 ;
	setAttr ".tk[8]" -type "float3" 3.5527137e-015 0 0.25147566 ;
	setAttr ".tk[9]" -type "float3" 3.5527137e-015 0 0.25147566 ;
	setAttr ".tk[12]" -type "float3" -3.5527137e-015 0 0.097046815 ;
	setAttr ".tk[13]" -type "float3" -3.5527137e-015 0 0.097046815 ;
	setAttr ".tk[14]" -type "float3" -3.5527137e-015 0 0.097046815 ;
	setAttr ".tk[15]" -type "float3" -3.5527137e-015 0 0.097046815 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.055335690636368555 0 0 0 0 1 0 0 0 0 1 0 1.9080924948005109 0.32264035154320092 -15.468412244321446 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.9080925 0.30011868 -14.968412 ;
	setAttr ".rs" 286739345;
	setAttr ".lt" -type "double3" 0.43172551322874919 0 0.43172551322874853 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.8804246494823267 0.27759700227714867 -14.968412244321446 ;
	setAttr ".cbx" -type "double3" 1.9357603401186951 0.32264035154320092 -14.968412244321446 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.055335690636368555 0 0 0 0 1 0 0 0 0 1 0 -2.3126539054048001 0.22513018328638001 -14.892800648771562 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.312654 0.20260851 -14.3928 ;
	setAttr ".rs" 833516566;
	setAttr ".lt" -type "double3" -0.34857565014322178 0 0.3674175771779904 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3403217507229845 0.18008683402032777 -14.392800648771562 ;
	setAttr ".cbx" -type "double3" -2.2849862711755238 0.22513018328638001 -14.392800648771562 ;
createNode polyUnite -n "polyUnite1";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyUnite -n "polyUnite2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode polyCube -n "polyCube3";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[1:3]";
	setAttr ".ix" -type "matrix" 3.216125688536436e-017 0 -0.14484142452469373 0 0 1 0 0
		 1 0 2.2204460492503131e-016 0 4.3973174191191289 0 -9.8607613152626465e-032 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.3973174 0 0 ;
	setAttr ".rs" 877844591;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.8973174191191289 -0.5 -0.072420712262346976 ;
	setAttr ".cbx" -type "double3" 4.8973174191191289 0.5 0.072420712262346976 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 2.2878881987882599e-017 0 -0.10303732439528163 0 0 0.085832287847125446 0 0
		 1 0 2.2204460492503131e-016 0 4.3973174191191289 0.33950263483190829 -9.8607613152626465e-032 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" -0.89607891060431255 0 1.0499643078427074 ;
	setAttr ".s" -type "double3" 1 1 1.188808382552704 ;
	setAttr ".pvt" -type "float3" 3.0012393 0.33950263 1.0499643 ;
	setAttr ".rs" 197023978;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.8973174191191289 0.29658649090834555 -0.051518659126889361 ;
	setAttr ".cbx" -type "double3" 3.8973174191191289 0.38241877875547103 0.051518659126889139 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId4.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId6.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape3.i";
connectAttr "groupId7.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupId8.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupId9.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "polyCBoolOp1.out" "pCube3Shape.i";
connectAttr "polyCBoolOp2.out" "pCube6Shape.i";
connectAttr ":topShape.msg" "imagePlaneShape1.ltc";
connectAttr "polyExtrudeEdge9.out" "pPlaneShape1.i";
connectAttr "polyExtrudeFace2.out" "pPlaneShape2.i";
connectAttr "polyExtrudeEdge10.out" "pPlaneShape3.i";
connectAttr "polyExtrudeEdge7.out" "pPlaneShape4.i";
connectAttr "groupId14.id" "pPlaneShape5.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pPlaneShape5.iog.og[0].gco";
connectAttr "groupParts3.og" "pPlaneShape5.i";
connectAttr "groupId15.id" "pPlaneShape5.ciog.cog[0].cgid";
connectAttr "groupId16.id" "pPlaneShape6.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pPlaneShape6.iog.og[0].gco";
connectAttr "groupParts4.og" "pPlaneShape6.i";
connectAttr "groupId17.id" "pPlaneShape6.ciog.cog[0].cgid";
connectAttr "groupId18.id" "pPlaneShape7.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pPlaneShape7.iog.og[0].gco";
connectAttr "groupParts5.og" "pPlaneShape7.i";
connectAttr "groupId19.id" "pPlaneShape7.ciog.cog[0].cgid";
connectAttr "groupId20.id" "pPlaneShape8.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pPlaneShape8.iog.og[0].gco";
connectAttr "groupParts6.og" "pPlaneShape8.i";
connectAttr "groupId21.id" "pPlaneShape8.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace1.out" "pPlaneShape9.i";
connectAttr "polyExtrudeEdge8.out" "pPlaneShape10.i";
connectAttr "groupId23.id" "pPlaneShape11.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pPlaneShape11.iog.og[0].gco";
connectAttr "groupParts8.og" "pPlaneShape11.i";
connectAttr "groupId24.id" "pPlaneShape11.ciog.cog[0].cgid";
connectAttr "groupId25.id" "pPlaneShape12.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pPlaneShape12.iog.og[0].gco";
connectAttr "groupParts9.og" "pPlaneShape12.i";
connectAttr "groupId26.id" "pPlaneShape12.ciog.cog[0].cgid";
connectAttr "groupParts7.og" "pPlane13Shape.i";
connectAttr "groupId22.id" "pPlane13Shape.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pPlane13Shape.iog.og[0].gco";
connectAttr "groupParts10.og" "pPlane14Shape.i";
connectAttr "groupId27.id" "pPlane14Shape.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "pPlane14Shape.iog.og[0].gco";
connectAttr "polyExtrudeFace6.out" "pCubeShape6.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pCubeShape1.o" "polyCBoolOp1.ip[0]";
connectAttr "pCubeShape2.o" "polyCBoolOp1.ip[1]";
connectAttr "pCubeShape1.wm" "polyCBoolOp1.im[0]";
connectAttr "pCubeShape2.wm" "polyCBoolOp1.im[1]";
connectAttr "polyCube1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "pCubeShape3.o" "polyCBoolOp2.ip[0]";
connectAttr "pCubeShape5.o" "polyCBoolOp2.ip[1]";
connectAttr "pCubeShape3.wm" "polyCBoolOp2.im[0]";
connectAttr "pCubeShape5.wm" "polyCBoolOp2.im[1]";
connectAttr "polyCube2.out" "groupParts2.ig";
connectAttr "groupId6.id" "groupParts2.gi";
connectAttr "glyphBlue.oc" "lambert2SG.ss";
connectAttr "pCube9Shape.iog" "lambert2SG.dsm" -na;
connectAttr "pCube8Shape.iog" "lambert2SG.dsm" -na;
connectAttr "pCube7Shape.iog" "lambert2SG.dsm" -na;
connectAttr "pCube6Shape.iog" "lambert2SG.dsm" -na;
connectAttr "pCube3Shape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "glyphBlue.msg" "materialInfo1.m";
connectAttr "polyPlane1.out" "polyExtrudeEdge1.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeEdge2.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyExtrudeEdge3.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "polyExtrudeEdge4.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeEdge4.mp";
connectAttr "polySurfaceShape1.o" "polyExtrudeEdge5.ip";
connectAttr "pPlaneShape11.wm" "polyExtrudeEdge5.mp";
connectAttr "polySurfaceShape2.o" "polyExtrudeEdge6.ip";
connectAttr "pPlaneShape12.wm" "polyExtrudeEdge6.mp";
connectAttr "polySurfaceShape3.o" "polyExtrudeEdge7.ip";
connectAttr "pPlaneShape4.wm" "polyExtrudeEdge7.mp";
connectAttr "polySurfaceShape4.o" "polyExtrudeEdge8.ip";
connectAttr "pPlaneShape10.wm" "polyExtrudeEdge8.mp";
connectAttr "polyTweak1.out" "polyExtrudeEdge9.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeEdge9.mp";
connectAttr "polyExtrudeEdge4.out" "polyTweak1.ip";
connectAttr "polySurfaceShape5.o" "polyExtrudeEdge10.ip";
connectAttr "pPlaneShape3.wm" "polyExtrudeEdge10.mp";
connectAttr "polySurfaceShape6.o" "polyExtrudeEdge11.ip";
connectAttr "pPlaneShape2.wm" "polyExtrudeEdge11.mp";
connectAttr "|pPlane9|polySurfaceShape7.o" "polyExtrudeEdge12.ip";
connectAttr "pPlaneShape9.wm" "polyExtrudeEdge12.mp";
connectAttr "polySurfaceShape8.o" "polyExtrudeEdge13.ip";
connectAttr "pPlaneShape7.wm" "polyExtrudeEdge13.mp";
connectAttr "polySurfaceShape9.o" "polyExtrudeEdge14.ip";
connectAttr "pPlaneShape8.wm" "polyExtrudeEdge14.mp";
connectAttr "polySurfaceShape10.o" "polyExtrudeEdge15.ip";
connectAttr "pPlaneShape6.wm" "polyExtrudeEdge15.mp";
connectAttr "polyPlane2.out" "polyExtrudeEdge16.ip";
connectAttr "pPlaneShape5.wm" "polyExtrudeEdge16.mp";
connectAttr "glyph2.oc" "lambert3SG.ss";
connectAttr "pPlaneShape1.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape10.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape9.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape4.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape3.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape2.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape5.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape5.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape6.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape6.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape7.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape7.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape8.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape8.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "pPlane13Shape.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape11.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape11.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape12.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape12.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "pPlane14Shape.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape15.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape6.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape11.iog" "lambert3SG.dsm" -na;
connectAttr "groupId14.msg" "lambert3SG.gn" -na;
connectAttr "groupId15.msg" "lambert3SG.gn" -na;
connectAttr "groupId16.msg" "lambert3SG.gn" -na;
connectAttr "groupId17.msg" "lambert3SG.gn" -na;
connectAttr "groupId18.msg" "lambert3SG.gn" -na;
connectAttr "groupId19.msg" "lambert3SG.gn" -na;
connectAttr "groupId20.msg" "lambert3SG.gn" -na;
connectAttr "groupId21.msg" "lambert3SG.gn" -na;
connectAttr "groupId22.msg" "lambert3SG.gn" -na;
connectAttr "groupId23.msg" "lambert3SG.gn" -na;
connectAttr "groupId24.msg" "lambert3SG.gn" -na;
connectAttr "groupId25.msg" "lambert3SG.gn" -na;
connectAttr "groupId26.msg" "lambert3SG.gn" -na;
connectAttr "groupId27.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "glyph2.msg" "materialInfo2.m";
connectAttr "polyExtrudeEdge12.out" "polyExtrudeEdge17.ip";
connectAttr "pPlaneShape9.wm" "polyExtrudeEdge17.mp";
connectAttr "polyExtrudeEdge17.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeFace1.ip";
connectAttr "pPlaneShape9.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pPlaneShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeEdge11.out" "polyTweak2.ip";
connectAttr "polyExtrudeEdge14.out" "polyExtrudeFace3.ip";
connectAttr "pPlaneShape8.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeEdge5.out" "polyExtrudeFace4.ip";
connectAttr "pPlaneShape11.wm" "polyExtrudeFace4.mp";
connectAttr "pPlaneShape5.o" "polyUnite1.ip[0]";
connectAttr "pPlaneShape6.o" "polyUnite1.ip[1]";
connectAttr "pPlaneShape7.o" "polyUnite1.ip[2]";
connectAttr "pPlaneShape8.o" "polyUnite1.ip[3]";
connectAttr "pPlaneShape5.wm" "polyUnite1.im[0]";
connectAttr "pPlaneShape6.wm" "polyUnite1.im[1]";
connectAttr "pPlaneShape7.wm" "polyUnite1.im[2]";
connectAttr "pPlaneShape8.wm" "polyUnite1.im[3]";
connectAttr "polyExtrudeEdge16.out" "groupParts3.ig";
connectAttr "groupId14.id" "groupParts3.gi";
connectAttr "polyExtrudeEdge15.out" "groupParts4.ig";
connectAttr "groupId16.id" "groupParts4.gi";
connectAttr "polyExtrudeEdge13.out" "groupParts5.ig";
connectAttr "groupId18.id" "groupParts5.gi";
connectAttr "polyExtrudeFace3.out" "groupParts6.ig";
connectAttr "groupId20.id" "groupParts6.gi";
connectAttr "polyUnite1.out" "groupParts7.ig";
connectAttr "groupId22.id" "groupParts7.gi";
connectAttr "pPlaneShape11.o" "polyUnite2.ip[0]";
connectAttr "pPlaneShape12.o" "polyUnite2.ip[1]";
connectAttr "pPlaneShape11.wm" "polyUnite2.im[0]";
connectAttr "pPlaneShape12.wm" "polyUnite2.im[1]";
connectAttr "polyExtrudeFace4.out" "groupParts8.ig";
connectAttr "groupId23.id" "groupParts8.gi";
connectAttr "polyExtrudeEdge6.out" "groupParts9.ig";
connectAttr "groupId25.id" "groupParts9.gi";
connectAttr "polyUnite2.out" "groupParts10.ig";
connectAttr "groupId27.id" "groupParts10.gi";
connectAttr "polyCube3.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace6.mp";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "glyphBlue.msg" ":defaultShaderList1.s" -na;
connectAttr "glyph2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"|imagePlane1|imagePlaneShape1\" \"imageName\" \"/Users/bopu/Downloads/Glyph_1.png\" 183833834 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of glyphBlue.ma
