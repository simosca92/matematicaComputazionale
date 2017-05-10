(* ::Package:: *)

(* :Context: Introduzione all insiemistica
 :Authors:Simone Scala, Andrea Zuccarini 
 :Anno Accademico: 2016/2017 corso di Matematica Computazionale Laurea Magistrale Informatica
 :Summary: Package contenente un'esemplificazione delle basi dell insiemistica	
 :Sources:   biblio *)



	BeginPackage["`project`"]
	pathBanana = DirectoryName[ToFileName["FileName"/.NotebookInformation[SelectedNotebook[]]]]<>"img/banana.png"
	pathMela = DirectoryName[ToFileName["FileName"/.NotebookInformation[SelectedNotebook[]]]]<>"img/mela.png"
    pathPera = DirectoryName[ToFileName["FileName"/.NotebookInformation[SelectedNotebook[]]]]<>"img/pera.png"
    pathCesto = DirectoryName[ToFileName["FileName"/.NotebookInformation[SelectedNotebook[]]]]<>"img/cesto.png"
    pathScaff = DirectoryName[ToFileName["FileName"/.NotebookInformation[SelectedNotebook[]]]]<>"img/scaff.png"
    pathOnion = DirectoryName[ToFileName["FileName"/.NotebookInformation[SelectedNotebook[]]]]<>"img/onion.png"
    pathCarrot = DirectoryName[ToFileName["FileName"/.NotebookInformation[SelectedNotebook[]]]]<>"img/carrot.png"
	gameApp::usage = "gameApp[] semplice funzione che rappresenta graficamente il concetto di aggregazione"
	gameInter::usage = "gameInter[] semplice funzione che rappresenta graficamente il concetto di aggregazione"
	gameApp2::usage = "gameApp2[] semplice funzione che rappresenta graficamente il concetto di aggregazione"
	gameDiff::usage = "gameDiff[] semplice funzione che rappresenta graficamente il concetto di aggregazione"
	game1::usage = "game1[] semplice funzione che rappresenta graficamente il concetto di aggregazione"
	gamePart::usage = "gamePart[] semplice funzione che rappresenta graficamente il concetto di aggregazione"
    gameUnion::usage = "gameUnion[] semplice funzione che rappresenta graficamente il concetto di aggregazione"    
	Begin["`Private`"]
        banana = Import[pathBanana];
		mela = Import[pathMela];
		pera = Import[pathPera];
		cesto = Import[pathCesto];
		scaff = Import[pathScaff];
		onion = Import[pathOnion];
		carrot = Import[pathCarrot];
		gameUnion[] := (
  		DynamicModule[{pt1 = {-34, 7}, pt2 = {-31, 7}, pt3 = {-28, 7}, 
		    		    pt4 = {-24, 7}, pt5 = {-20, 7}, pt6 = {-16, 7}, 
		    pt7 = {16, 7}, 
		    		    pt8 = {19, 7}, pt9 = {23, 7}, pt10 = {31, 7}, 
		    pt11 = {35, 7}, 
		    		    pt12 = {27, 7}, pt13 = {25, 4} , eh1, eh, eh2, eh3, eh4, 
		    eh5, eh6,
		    		     eh7, eh8, eh9, eh10, eh11, eh12, l1, l2, l3, l4, inSix = 0, 
		    		    inTwelve = 0, inEighteen = 0, oneTime = 1, oneTimeOut = 1, 
		    prec, 
		    		    init = 1, init1 = 1, init2 = 1, init3 = 1, init4 = 1, 
		    init5 = 1, init6 = 1, init9 = 1, init15 = 1, init10 = 1, 
		    init16 = 1,
		    		    init8 = 1, init14 = 1, colEight = Black, colSix = Blue, 
		    colSix1 = Black, colTwelve = Blue, colFuorteen = Black, 
		    		    colTwelve1 = Black, colEighteen = Blue, 
		    colEighteen1 = Black, colThree = Blue, colNine = Blue, 
		    colFifteen = Blue, colTen = Black, colSixteen = Black,
		    		    ok1 = 0, ok2 = 0, ok3 = 0, ok4 = 0, ok5 = 0, ok6 = 0, 
		    ok7 = 0, ok8 = 0, ok9 = 0, ok10 = 0},
		        Row[{
		     		     Manipulate[
		      		      Dynamic[
		        Graphics[{eh[pt1, init6], eh1[pt2, init], eh2[pt3, init9], 
			 eh3[pt4, init2], 
			 			 eh4[pt5, init15], eh5[pt6, init3] , eh6[pt7, init1], 
			 eh7[pt8, init8], eh8[pt9, init10],
			 			  eh9[pt10, init14], eh10[pt11, init16], 
			 eh11[pt12, init4], eh12[pt13, init5], 
			 			 Blue, Thickness[0.005], 
			 			 
			 l1 = Line[{{-40, 13}, {-35, 1}, {-15, 1}, {-10, 13}, {-40, 
			     			     13}}], Red,
			 l2 =  Line[{{-15, 35}, {-10, 21}, {10, 21}, {15, 35}, {-15, 
			     35}}],
			 			  Black,
			 l3 = Line[{{10, 13}, {15, 1}, {35, 1}, {40, 13}, {10, 
			     13}}], 
			 			 Black, Thickness[0.001],
			 			 l4 = 
			  			  Line[{{-44, 0.2}, {44, 0.2}, {44, 40}, {-44, 40}, {-44, 
			     			     0.2}}], Blue, FontSize -> 20,
			 			 
			 			 
			 			 Text["A", {-40, 2}], Red, 
			 			 Text["A\[Union]B", {0, 38}], Black , Text["B", {10, 2}]
			 			 },
						ImageSize -> 750, PlotRange -> {{-45, 45}, {0, 40}}, 
						Axes -> False], None], 
		      		      Button["Valuta!", 
		       		       
		       If[ok1 == 1 && ok2 == 1 && ok3 == 1 && ok4 == 1 && ok5 == 1 && 
			 ok6 == 1 ok7 == 1 && ok8 == 1 && ok9 == 1 && ok10 == 1 , 
			Speak["Very good"], 
						Speak["You can do better"]]],
		      		      Button["Reset!",pt1 = {-34, 7}; pt2 = {-31, 7}; pt3 = {-28, 7}; 
		    				    pt4 = {-24, 7}; pt5 = {-20, 7}; pt6 = {-16, 7}; 
						        pt7 = {16, 7};  pt8 = {19, 7}; pt9 = {23, 7}; pt10 = {31, 7};pt11 = {35, 7};pt12 = {27, 7}; pt13 = {25, 4} ; inSix = 0; 
		    		    inTwelve = 0; inEighteen = 0; oneTime = 1; oneTimeOut = 1; 
		     init = 1; init1 = 1; init2 = 1; init3 = 1; init4 = 1; 
		    init5 = 1; init6 = 1; init9 = 1; init15 = 1; init10 = 1;
		    init16 = 1;    init8 = 1; init14 = 1; colEight = Black; colSix = Blue; 
		    colSix1 = Black; colTwelve = Blue; colFuorteen = Black;   colTwelve1 = Black; colEighteen = Blue; 
		    colEighteen1 = Black; colThree = Blue; colNine = Blue; colFifteen = Blue; colTen = Black; colSixteen = Black;   ok1 = 0; ok2 = 0; ok3 = 0; ok4 = 0; ok5 = 0; ok6 = 0;   ok7 = 0;ok8 = 0; ok9 = 0; ok10 = 0]],
		     		     Manipulate[
		      		      RegionPlot[{(x - (a/5))^2 + y^2 < 
			  			  
			  10 && ! ((x + (a/5))^2 + y^2 < 10), (x + (a/5))^2 + y^2 < 
			  			  
			  10 && ! ((x - (a/5))^2 + y^2 < 10), (x - (a/5))^2 + y^2 < 
			  			  10 && ((x + (a/5))^2 + y^2 < 10)}, {x, -8, 8}, {y, -8, 
			8}, 
		       		      
		       PlotStyle ->  If[a > 15, {Black, Blue, Blue}, {Red, Red, Red}], 
		       		       ImageSize -> Medium, 
		       		       Epilog -> {Text[
			  			  Style["A\[Union]B", Red, Italic, 
			   			   15], {0, -4.5}]}], {{a, 20, "A\[Union]B"}, 20, 10, 1}]
		     		    }],
		   		   Initialization :> (
		     		     testpoint[poly_, pt_] := 
		      		      Round[(Total@
			    			    
			    Mod[(# - RotateRight[#]) &@(ArcTan @@ (pt - #) & /@ 
				poly),
			     			      2 Pi, -Pi]/2/Pi)] != 0;
		     		     SetAttributes[eh1, HoldAll];
		     		     SetAttributes[eh, HoldAll];
		     		     SetAttributes[eh2, HoldAll];
		     		     SetAttributes[eh3, HoldAll];
		     		     SetAttributes[eh4, HoldAll];
		     		     SetAttributes[eh5, HoldAll];
		     		     SetAttributes[eh6, HoldAll];
		     		     SetAttributes[eh7, HoldAll];
		     		     SetAttributes[eh8, HoldAll];
		     		     SetAttributes[eh9, HoldAll];
		     		     SetAttributes[eh10, HoldAll];
		     		     SetAttributes[eh11, HoldAll];
		     		     SetAttributes[eh12, HoldAll];
		     		     SetAttributes[l1, HoldAll];
		     		     SetAttributes[l2, HoldAll];
		     		     SetAttributes[l3, HoldAll];
		     		     SetAttributes[l4, HoldAll];
		     		     SetAttributes[inSix, HoldAll];
		     		     SetAttributes[inEighteen, HoldAll];
		     		     SetAttributes[inTwelve, HoldAll];
		     		     
		     		     eh[val1_, oneTimeloc_] := 
		      		      EventHandler[{Text[Style["3", colThree, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
					
			"MouseDragged" :> (If[ oneTimeloc == 1 , 
			   val1 = MousePosition["Graphics"]];
			  			  (*se inserisco il numero tre nell'insieme unione*)
		    \
		      		    If[
			   			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   			   
			   If[oneTimeloc == 1, val1 = {-10, 31}; colThree = Red; 
			    ok4 = 1(*Speak[
			    			    "Very Bad!"];*)]]
			  			  )
						}];
		     		      eh1[val1_, oneTimeloc_] := 
		      		      EventHandler[{Text[Style["6", colSix, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
						"MouseDragged" :> ( 
			  			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   			   (*se inserisco il numero sei nell'insieme unione*)
		  \
			 		   
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    			    val1 = {-7, 31};
			    			    
			    			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     			     inSix = inSix + 1(*Speak["Very Bad!"];*)];
			    			    
			    If[inSix == 2, colSix = Red; colSix1 = Red; ok1 = 1];
			    			    ]
			  			  )
						}];
		     		      eh2[val1_, oneTimeloc_] := 
		      		      EventHandler[{Text[Style["9", colNine, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
					
			"MouseDragged" :> (If[ oneTimeloc == 1 , 
			   val1 = MousePosition["Graphics"]];
			  			  (*se inserisco il numero tre nell'insieme unione*)
		    \
		      		    If[
			   			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   			   
			   If[oneTimeloc == 1, val1 = {-1, 31}; colNine = Red; 
			    ok5 = 1(*Speak[
			    			    "Very Bad!"];*)]]
			  			  )
						}];
		     		      eh3[val1_, oneTimeloc_] := 
		      		      EventHandler[{Text[Style["12", colTwelve, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
						"MouseDragged" :> ( 
			  			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   			   (*se inserisco il numero sei nell'insieme \
		intersezione*)
			   		  
			   				    
			   			   
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    			    val1 = {6, 31};
			    			    
			    			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     			     inTwelve = inTwelve + 1(*Speak["Very Bad!"];*)];
			    			    
			    			    
			    If[inTwelve == 2, colTwelve = Red; colTwelve1 = Red; 
			     			     ok2 = 1];
			    			    
			    			    ]
			  			  )
						}];
		     		         eh4[val1_, oneTimeloc_] := 
		      		      
		      EventHandler[{Text[Style["15", colFifteen, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
					
			"MouseDragged" :> (If[ oneTimeloc == 1 , 
			   val1 = MousePosition["Graphics"]];
			  			  (*se inserisco il numero tre nell'insieme unione*)
		    \
		      		    If[
			   			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   			   
			   If[oneTimeloc == 1, val1 = {-3, 26}; colFifteen = Red; 
			    ok6 = 1(*Speak[
			    			    "Very Bad!"];*)]]
			  			  )
						}];
		     		       eh5[val1_, oneTimeloc_] := 
		      		      EventHandler[{Text[Style["18", colEighteen, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
						"MouseDragged" :> ( 
			  			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   			   (*se inserisco il numero sei nell'insieme \
		intersezione*)
			   		  
			   				    
			   			   
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    			    val1 = {5, 26};
			    			    
			    			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     			     inEighteen = inEighteen + 1(*Speak["Very Bad!"];*)];
			    			    
			    			    
			    If[inEighteen == 2, colEighteen = Red; 
			     colEighteen1 = Red;
			     			      ok3 = 1];
			    			    
			    			    ]
			  			  )
						}];
		     		      eh6[val1_, oneTimeloc_] := 
		      		      EventHandler[{Text[Style["6", colSix1, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
						"MouseDragged" :> ( 
			  			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   			   (*se inserisco il numero sei nell'insieme \
		intersezione*)
			   		  
			   				    
			   			   
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    			    val1 = {-7, 31};
			    			    
			    			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     			     inSix = inSix + 1(*Speak["Very Bad!"];*)];
			    			    
			    If[inSix == 2, colSix1 = Red; colSix = Red; ok1 = 1];
			    			    
			    			    ]
			  			  
			  			  )
						}];
		     		       eh7[val1_, oneTimeloc_] := 
		      		      EventHandler[{Text[Style["8", colEight, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
					
			"MouseDragged" :> (If[ oneTimeloc == 1 , 
			   val1 = MousePosition["Graphics"]];
			  			  (*se inserisco il numero tre nell'insieme unione*)
		    \
		      		    If[
			   			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   			   
			   If[oneTimeloc == 1, val1 = {-4, 31}; colEight = Red; 
			    ok7 = 1(*Speak[
			    			    "Very Bad!"];*)]]
			  			  )
						}];
		     		       eh8[val1_, oneTimeloc_] := 
		      		      EventHandler[{Text[Style["10", colTen, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
					
			"MouseDragged" :> (If[ oneTimeloc == 1 , 
			   val1 = MousePosition["Graphics"]];
			  			  (*se inserisco il numero tre nell'insieme unione*)
		    \
		      		    If[
			   			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   			   
			   If[oneTimeloc == 1, val1 = {2, 31}; colTen = Red; 
			    ok8 = 1(*Speak[
			    			    "Very Bad!"];*)]]
			  			  )
						}];
		     		     eh9[val1_, oneTimeloc_] := 
		      		      EventHandler[{Text[Style["14", colFuorteen, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
					
			"MouseDragged" :> (If[ oneTimeloc == 1 , 
			   val1 = MousePosition["Graphics"]];
			  			  (*se inserisco il numero tre nell'insieme unione*)
		    \
		      		    If[
			   			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   			   
			   If[oneTimeloc == 1, val1 = {10, 31}; colFuorteen = Red; 
			    ok9 = 1(*Speak[
			    			    "Very Bad!"];*)]]
			  			  )
						}];
		     		     eh10[val1_, oneTimeloc_] := 
		      		      
		      EventHandler[{Text[Style["16", colSixteen, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
					
			"MouseDragged" :> (If[ oneTimeloc == 1 , 
			   val1 = MousePosition["Graphics"]];
			  			  (*se inserisco il numero tre nell'insieme unione*)
		    \
		      		    If[
			   			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   			   
			   If[oneTimeloc == 1, val1 = {1, 26}; colSixteen = Red; 
			    ok10 = 1(*Speak[
			    			    "Very Bad!"];*)]]
			  			  )
						}];
		     		     eh11[val1_, oneTimeloc_] := 
		      		      
		      EventHandler[{Text[Style["12", colTwelve1, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
						"MouseDragged" :> ( 
			  			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   			   (*se inserisco il numero sei nell'insieme \
		intersezione*)
			   		  
			   				    
			   			   
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    			    val1 = {6, 31};
			    			    
			    			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     			     inTwelve = inTwelve + 1(*Speak["Very Bad!"];*)];
			    			    
			    			    
			    If[inTwelve == 2, colTwelve = Red; colTwelve1 = Red; 
			     			     ok2 = 1];
			    			    
			    			    ]
			  			  
			  			  )
						}];
		     		      eh12[val1_, oneTimeloc_] := 
		      		      
		      EventHandler[{Text[Style["18", colEighteen1, Italic, 20], 
			 			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
						"MouseDragged" :> ( 
			  			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   			   (*se inserisco il numero sei nell'insieme \
		intersezione*)
			   		  
			   				    
			   			   
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    			    val1 = {5, 26};
			    			    
			    			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     			     inEighteen = inEighteen + 1(*Speak["Very Bad!"];*)];
			    			    
			    			    
			    If[inEighteen == 2, colEighteen = Red; 
			     colEighteen1 = Red;
			     			      ok3 = 1];
			    			    
			    			    ]
			  			  )
						}];
		     		     
		     		     )
		   		   ])
		gameApp[] := (
		  Row[{Graphics[{Black, Thickness[0.005], FontSize -> 30,
		      Text["A", {20, 8}], Brown,
		      Text["B", {-20, 2}],
		      (*Line[{{-10,22},{-5,15},{5,15},{10,22},{-10,22}}],*)
		      
		      Black, Thickness[0.001],
		      Inset[scaff, {-20, 20}, Automatic, 30],
		      Inset[mela, {20, 20}, Automatic, 5],
		      Inset[onion, {-20, 20}, Automatic, 5],
		      Inset[banana, {-15, 20}, Automatic, 5],
		      Inset[carrot, {23, 25}, Automatic, 8],
		      Inset[cesto, {20, 20}, Automatic, 30],
		      
		      Line[{{-44, 0.2}, {44, 0.2}, {44, 40}, {-44, 40}, {-44, 0.2}}]
		      },
		     ImageSize -> 900, PlotRange -> {{-45, 45}, {0, 40}}, 
		     Axes -> False],
		    DynamicModule[{yesNoTest1 = False, yesNoTest = False, 
		      yesNoTest2 = False, yesNoTest3 = False, yesNoTest4 = False, 
		      yesNoTest5 = False, yesNoTest6 = False, yesNoTest7 = False}, 
		     Grid[{{"    Food    ", "\[Element] ad A", 
			"\[NotElement] ad A"}, {ImageResize[mela, 30], 
			Checkbox[
			 Dynamic[yesNoTest, (yesNoTest = #; 
			    If[#, yesNoTest1 = False, yesNoTest = True]) &]], 
			Checkbox[
			 Dynamic[yesNoTest1, (yesNoTest1 = #; 
			    If[#, yesNoTest = False, yesNoTest1 = True]) &]]},
		       (*ROW 2*)
		       {ImageResize[banana, 30], 
			Checkbox[
			 Dynamic[yesNoTest2, (yesNoTest2 = #; 
			    If[#, yesNoTest3 = False, yesNoTest2 = True]) &]], 
			Checkbox[
			 Dynamic[yesNoTest3, (yesNoTest3 = #; 
			    If[#, yesNoTest2 = False, yesNoTest3 = True]) &]]},
		       (*ROW 3*)
		       {ImageResize[onion, 30], 
			Checkbox[
			 Dynamic[yesNoTest4, (yesNoTest4 = #; 
			    If[#, yesNoTest5 = False, yesNoTest4 = True]) &]], 
			Checkbox[
			 Dynamic[yesNoTest5, (yesNoTest5 = #; 
			    If[#, yesNoTest4 = False, yesNoTest5 = True]) &]]},
		       (*ROW 4*)
		       {ImageResize[carrot, 30], 
			Checkbox[
			 Dynamic[yesNoTest6, (yesNoTest6 = #; 
			    If[#, yesNoTest7 = False, yesNoTest6 = True]) &]], 
			Checkbox[
			 Dynamic[yesNoTest7, (yesNoTest7 = #; 
			    If[#, yesNoTest6 = False, yesNoTest7 = True]) &]]},
		       {Button["Valuta!", 
			 If[ yesNoTest == True && yesNoTest2 == False && 
			   yesNoTest4 == False && yesNoTest6 == True, 
			  Speak["Very Good!"], Speak["You can do better!"]]]}}, 
		      Frame -> All]]}, "  "])
		gameInter[] :=(
		DynamicModule[{pt1 = {-34, 7}, pt2 = {-31, 7}, pt3 = {-28, 7}, 
		    pt4 = {-24, 7}, pt5 = {-20, 7}, pt6 = {-16, 7}, pt7 = {16, 7}, 
		    pt8 = {19, 7}, pt9 = {23, 7}, pt10 = {31, 7}, pt11 = {35, 7}, 
		    pt12 = {27, 7}, pt13 = {25, 4} , eh1, eh, eh2, eh3, eh4, eh5, eh6,
		     eh7, eh8, eh9, eh10, eh11, eh12, l1, l2, l3, l4, inSix = 0, 
		    inTwelve = 0, inEighteen = 0, oneTime = 1, oneTimeOut = 1, prec, 
		    init = 1, init1 = 1, init2 = 1, init3 = 1, init4 = 1, init5 = 1, 
		    colSix = Blue, colSix1 = Black, colTwelve = Blue, 
		    colTwelve1 = Black, colEighteen = Blue, colEighteen1 = Black, 
		    ok1 = 0, ok2 = 0, ok3 = 0},
		   
		   Row[{
		     Manipulate[
		      Dynamic[
		       
		       Graphics[{eh[pt1], eh1[pt2, init], eh2@pt3, eh3[pt4, init2], 
			 eh4@pt5, eh5[pt6, init3] , eh6[pt7, init1], eh7@pt8, eh8@pt9,
			  eh9@pt10, eh10@pt11, eh11[pt12, init4], eh12[pt13, init5], 
			 Blue, Thickness[0.005], 
			 l1 = Line[{{-40, 13}, {-35, 1}, {-15, 1}, {-10, 13}, {-40, 
			     13}}], Red,
			 l2 = 
			  Line[{{-15, 35}, {-10, 21}, {10, 21}, {15, 35}, {-15, 35}}],
			  Black,
			 l3 = Line[{{10, 13}, {15, 1}, {35, 1}, {40, 13}, {10, 13}}], 
			 Black, Thickness[0.001],
			 l4 = 
			  Line[{{-44, 0.2}, {44, 0.2}, {44, 40}, {-44, 40}, {-44, 
			     0.2}}], Blue, FontSize -> 20,
			 
			 
			 Text["A", {-40, 2}], Red, 
			 Text["A\[Intersection]B", {0, 38}], Black , Text["B", {10, 2}]
			 },
			ImageSize -> 750, PlotRange -> {{-45, 45}, {0, 40}}, 
			Axes -> False], None], 
		      Button["Valuta!", 
		       If[ok1 == 1 && ok2 == 1 && ok3 == 1, Speak["Very good"], 
			Speak["You can do better"]]]],
		     Manipulate[
		      RegionPlot[{(x - (a/5))^2 + y^2 < 
			  							       
			  10 && ! ((x + (a/5))^2 + y^2 < 10), (x + (a/5))^2 + y^2 < 
			  							       
			  10 && ! ((x - (a/5))^2 + y^2 < 10), (x - (a/5))^2 + y^2 < 
			  							       10 && ((x + (a/5))^2 + y^2 < 10)}, {x, -8, 
			8}, {y, -8, 8}, 
		       							    PlotStyle -> {Black, Blue, Red}, 
		       ImageSize -> Medium, 
		       Epilog -> {Text[
			  Style["A\[Intersection]B", Red, Italic, 
			   15], {0, -4.5}]}], {{a, 10, "A \[Intersection] B"}, 10, 
		       							  20, 1}]
		     
		     }, "    "],
		   Initialization :> (
		     testpoint[poly_, pt_] := 
		      Round[(Total@
			    Mod[(# - RotateRight[#]) &@(ArcTan @@ (pt - #) & /@ poly),
			      2 Pi, -Pi]/2/Pi)] != 0;
		     SetAttributes[eh1, HoldAll];
		     SetAttributes[eh, HoldAll];
		     SetAttributes[eh2, HoldAll];
		     SetAttributes[eh3, HoldAll];
		     SetAttributes[eh4, HoldAll];
		     SetAttributes[eh5, HoldAll];
		     SetAttributes[eh6, HoldAll];
		     SetAttributes[eh7, HoldAll];
		     SetAttributes[eh8, HoldAll];
		     SetAttributes[eh9, HoldAll];
		     SetAttributes[eh10, HoldAll];
		     SetAttributes[eh11, HoldAll];
		     SetAttributes[eh12, HoldAll];
		     SetAttributes[l1, HoldAll];
		     SetAttributes[l2, HoldAll];
		     SetAttributes[l3, HoldAll];
		     SetAttributes[l4, HoldAll];
		     SetAttributes[inSix, HoldAll];
		     SetAttributes[inEighteen, HoldAll];
		     SetAttributes[inTwelve, HoldAll];
		     
		     eh[val1_] := 
		      EventHandler[{Text[Style["3", Blue, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[ oneTimeOut == 1 , 
			   val1 = MousePosition["Graphics"];, 
			   If[ oneTimeOut == 0, oneTimeOut = 1]; ];
			  (*se inserisco il numero uno nell'insieme intersezione*)
		   
				 If[
			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   If[oneTimeOut == 1, val1 = {-34, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]]
			  )
			}];
		      eh1[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["6", colSix, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   (*se inserisco il numero sei nell'insieme intersezione*)
		  
				    
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    val1 = {-5, 28};
			    
			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     inSix = inSix + 1(*Speak["Very Bad!"];*)];
			    If[inSix == 2, colSix = Red; colSix1 = Red; ok1 = 1];
			    ]
			  )
			}];
		      eh2[val1_] := 
		      EventHandler[{Text[Style["9", Blue, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[ oneTimeOut == 1 , 
			   val1 = MousePosition["Graphics"];, 
			   If[ oneTimeOut == 0, oneTimeOut = 1]; ];
			  (*se inserisco il numero uno nell'insieme intersezione*)
		   
				 If[
			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   If[oneTimeOut == 1, val1 = {-28, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]]
			  )
			}];
		      eh3[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["12", colTwelve, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   (*se inserisco il numero sei nell'insieme intersezione*)
		  
				    
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    val1 = {0, 28};
			    
			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     inTwelve = inTwelve + 1(*Speak["Very Bad!"];*)];
			    
			    If[inTwelve == 2, colTwelve = Red; colTwelve1 = Red; 
			     ok2 = 1];
			    
			    ]
			  )
			}];
		      eh4[val1_] := 
		      EventHandler[{Text[Style["15", Blue, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[ oneTimeOut == 1 , 
			   val1 = MousePosition["Graphics"];, 
			   If[ oneTimeOut == 0, oneTimeOut = 1]; ];
			  (*se inserisco il numero uno nell'insieme intersezione*)
		   
				 If[
			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   If[oneTimeOut == 1, val1 = {-20, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]]
			  )
			}];
		       eh5[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["18", colEighteen, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   (*se inserisco il numero sei nell'insieme intersezione*)
		  
				    
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    val1 = {5, 28};
			    
			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     inEighteen = inEighteen + 1(*Speak["Very Bad!"];*)];
			    
			    If[inEighteen == 2, colEighteen = Red; colEighteen1 = Red;
			      ok3 = 1];
			    
			    ]
			  )
			}];
		      eh6[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["6", colSix1, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   (*se inserisco il numero sei nell'insieme intersezione*)
		  
				    
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    val1 = {-5, 28};
			    
			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     inSix = inSix + 1(*Speak["Very Bad!"];*)];
			    If[inSix == 2, colSix1 = Red; colSix = Red; ok1 = 1];
			    
			    ]
			  
			  )
			}];
		      eh7[val1_] := 
		      EventHandler[{Text[Style["8", Black, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[ oneTimeOut == 1 , 
			   val1 = MousePosition["Graphics"];, 
			   If[ oneTimeOut == 0, oneTimeOut = 1]; ];
			  (*se inserisco il numero otto nell'insieme intersezione*)
		  
				  If[
			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   If[oneTimeOut == 1, val1 = {19, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]]
			  )
			}];
		      eh8[val1_] := 
		      EventHandler[{Text[Style["10", Black, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[ oneTimeOut == 1 , 
			   val1 = MousePosition["Graphics"];, 
			   If[ oneTimeOut == 0, oneTimeOut = 1]; ];
			  (*se inserisco il numero otto nell'insieme intersezione*)
		  
				  If[
			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   If[oneTimeOut == 1, val1 = {23, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]]
			  )
			}];
		      eh9[val1_] := 
		      EventHandler[{Text[Style["14", Black, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[ oneTimeOut == 1 , 
			   val1 = MousePosition["Graphics"];, 
			   If[ oneTimeOut == 0, oneTimeOut = 1]; ];
			  (*se inserisco il numero otto nell'insieme intersezione*)
		  
				  If[
			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   If[oneTimeOut == 1, val1 = {31, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]]
			  )
			}];
		     eh10[val1_] := 
		      EventHandler[{Text[Style["16", Black, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[ oneTimeOut == 1 , 
			   val1 = MousePosition["Graphics"];, 
			   If[ oneTimeOut == 0, oneTimeOut = 1]; ];
			  (*se inserisco il numero otto nell'insieme intersezione*)
		  
				  If[
			   val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 , 
			   If[oneTimeOut == 1, val1 = {35, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]]
			  )
			}];
		     eh11[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["12", colTwelve1, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   (*se inserisco il numero sei nell'insieme intersezione*)
		  
				    
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    val1 = {0, 28};
			    
			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     inTwelve = inTwelve + 1(*Speak["Very Bad!"];*)];
			    
			    If[inTwelve == 2, colTwelve = Red; colTwelve1 = Red; 
			     ok2 = 1];
			    
			    ]
			  
			  )
			}];
		      eh12[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["18", colEighteen1, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"];]
			   (*se inserisco il numero sei nell'insieme intersezione*)
		  
				    
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15 ,
			    val1 = {5, 28};
			    
			    If[oneTimeloc == 1, oneTimeloc = 0; 
			     inEighteen = inEighteen + 1(*Speak["Very Bad!"];*)];
			    
			    If[inEighteen == 2, colEighteen = Red; colEighteen1 = Red;
			      ok3 = 1];
			    
			    ]
			  )
			}];
		     
		     )
		   ])
		gameApp2[] := (
		  Manipulate[
		   With[{p = Rest@pts, pt = First@pts}, 
		    Graphics[{If[testpoint[p, pt], Pink, Orange], Polygon@p}, 
		     PlotRange -> 3 {{-1, 1}, {-1, 1}}, ImageSize -> {400, 475}, 
		     PlotLabel -> 
		      Text[Style[If[testpoint[p, pt], "True ", "False"], Bold, 
			Italic]]]], {{pts, {{0, 0}, {-2, -2}, {2, -2}, {0, 2}}}, 
		    Sequence @@ (3 {{-1, -1}, {1,1}}), Locator, 
		    LocatorAutoCreate -> {4, Infinity}}, SaveDefinitions -> True, 
		    Initialization :> {(*test if point pt inside polygon poly*)
		    testpoint[poly_, pt_] := 
		      Round[(Total@
			    Mod[(# - RotateRight[#]) &@(ArcTan @@ (pt - #) & /@ poly),
			      2 Pi, -Pi]/2/Pi)] != 0}]
		)

		gameDiff[] :=(
		    DynamicModule[{pt3b = {-34, 7}, pt6b = {-31, 7}, pt9b = {-28, 7}, 
		    pt12b = {-24, 7}, pt15b = {-20, 7}, pt18b = {-16, 7}, 
		    pt6n = {16, 7}, pt8n = {19, 7}, pt10n = {23, 7}, pt14n = {31, 7}, 
		    pt16n = {35, 7}, pt12n = {27, 7}, pt18n = {25, 4} , eh3b, eh6b, 
		    eh9b, eh12b, eh15b, eh18b, eh6n, eh8n, eh10n, eh12n, eh14n, eh16n,
		     eh18n, l1, l2, l3, l4, inThree = 0, inNine = 0, inFifteen = 0, 
		    oneTime = 1, oneTimeOut = 1, prec, init = 1, init1 = 1, init2 = 1,
		     colThree = Blue, colNine = Blue, colFifteen = Blue, ok1 = 0, 
		    ok2 = 0, ok3 = 0},
		   
		   Row[{
		     Manipulate[
		      Dynamic[
		       
		       Graphics[{eh3b[pt3b, init], eh6b[pt6b], eh9b[pt9b, init1], 
			 eh12b[pt12b], eh15b[pt15b, init2], eh18b@pt18b , eh6n@pt6n, 
			 eh8n@pt8n, eh10n@pt10n, eh12n@pt12n, eh14n@pt14n, 
			 eh16n@pt16n, eh18n@pt18n, Blue, Thickness[0.005], 
			 l1 = Line[{{-40, 13}, {-35, 1}, {-15, 1}, {-10, 13}, {-40, 
			     13}}], Red,
			 l2 = 
			  Line[{{-15, 35}, {-10, 21}, {10, 21}, {15, 35}, {-15, 35}}],
			  Black,
			 l3 = Line[{{10, 13}, {15, 1}, {35, 1}, {40, 13}, {10, 13}}], 
			 Black, Thickness[0.001],
			 l4 = 
			  Line[{{-44, 0.2}, {44, 0.2}, {44, 40}, {-44, 40}, {-44, 
			     0.2}}], Blue, FontSize -> 20,
			 
			 
			 Text["A", {-40, 2}], Red, Text["A-B", {0, 38}], Black , 
			 Text["B", {10, 2}]
			 },
			ImageSize -> 750, PlotRange -> {{-45, 45}, {0, 40}}, 
			Axes -> False], None], 
		      Button["Valuta!", 
		       If[ok1 == 1 && ok2 == 1 && ok3 == 1, Speak["Very good"], 
			Speak["You can do better"]]]],
		     Manipulate[
		      RegionPlot[{(x - (a/5))^2 + y^2 < 
			  10 && ! ((x + (a/5))^2 + y^2 < 10), (x + (a/5))^2 + y^2 < 10, 
             (x + (a/5))^2 + y^2 < 10 && ! ((x - (a/5))^2 + y^2 < 10)}, {x, -8, 
			8}, {y, -8, 8}, 
		       PlotStyle -> If[a>15,{Black, Black, Blue},{Black, Black, Red}], 
		       ImageSize -> Medium, 
		       Epilog -> {Text[
			  Style["A-B", Red, Italic, 15], {0, -4.5}]}], {{a, 10, 
			"A-B"}, 10, 20, 1}]
		     
		     }, "    "],
		   Initialization :> (testpoint[poly_, pt_] := 
		      Round[(Total@
			    Mod[(# - RotateRight[#]) &@(ArcTan @@ (pt - #) & /@ poly),
			      2 Pi, -Pi]/2/Pi)] != 0;
		     SetAttributes[eh3b, HoldAll];
		     SetAttributes[eh6b, HoldAll];
		     SetAttributes[eh9b, HoldAll];
		     SetAttributes[eh12b, HoldAll];
		     SetAttributes[eh15b, HoldAll];
		     SetAttributes[eh18b, HoldAll];
		     SetAttributes[eh6n, HoldAll];
		     SetAttributes[eh8n, HoldAll];
		     SetAttributes[eh10n, HoldAll];
		     SetAttributes[eh12n, HoldAll];
		     SetAttributes[eh14n, HoldAll];
		     SetAttributes[eh16n, HoldAll];
		     SetAttributes[eh18n, HoldAll];
		     SetAttributes[l1, HoldAll];
		     SetAttributes[l2, HoldAll];
		     SetAttributes[l3, HoldAll];
		     SetAttributes[l4, HoldAll];
		     SetAttributes[inThree, HoldAll];
		     SetAttributes[inNine, HoldAll];
		     SetAttributes[inFifteen, HoldAll];
		     eh3b[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["3", colThree, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}),
			"MouseDragged" :> (If[oneTimeloc == 1, 
			    val1 = MousePosition["Graphics"];]
			   (*se inserisco il numero tre blu nell'insieme intersezione*) 
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			    val1 = {-5, 28};
			      colThree = Red;ok1=1])}];
		     
		     eh6b[val1_] := 
		      EventHandler[{Text[Style["6", Blue, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeOut == 1, 
			   val1 = MousePosition["Graphics"];, 
			   If[oneTimeOut == 0, oneTimeOut = 1];];
			  (*se inserisco il numero sei blu nell'insieme intersezione*)
			  If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			   If[oneTimeOut == 1, val1 = {-31, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]])}];
		     
		     eh9b[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["9", colNine, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeloc == 1, 
			    val1 = MousePosition["Graphics"];]
			   (*se inserisco il numero nove blu nell'insieme \
		intersezione*) 
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			    val1 = {0, 28};
			    colNine = Red;ok2=1])}];
		     
		     eh12b[val1_] := 
		      EventHandler[{Text[Style["12", Blue, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeOut == 1, 
			   val1 = MousePosition["Graphics"];, 
			   If[oneTimeOut == 0, oneTimeOut = 1];];
			  (*se inserisco il numero dodici blu nell'insieme \
		intersezione*)
			  If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			   If[oneTimeOut == 1, val1 = {-24, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]])}];
		     
		     eh15b[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["15", colFifteen, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeloc == 1, 
			    val1 = MousePosition["Graphics"];]
			   (*se inserisco il numero quindici blu nell'insieme \
		intersezione*) 
			   If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			    val1 = {5, 28};
			    colFifteen = Red;ok3=1])}];
		     
		     eh18b[val1_] := 
		      EventHandler[{Text[Style["18", Blue, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeOut == 1, 
			   val1 = MousePosition["Graphics"];, 
			   If[oneTimeOut == 0, oneTimeOut = 1];];
			  (*se inserisco il numero diciotto blu nell'insieme \
		intersezione*)
			  If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			   If[oneTimeOut == 1, val1 = {-16, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]])}];
		     
		     eh6n[val1_] := 
		      EventHandler[{Text[Style["6", Black, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeOut == 1, 
			   val1 = MousePosition["Graphics"];, 
			   If[oneTimeOut == 0, oneTimeOut = 1];];
			  (*se inserisco il numero sei nero nell'insieme intersezione*)
			  If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			   If[oneTimeOut == 1, val1 = {16, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]])}];
		     
		     eh8n[val1_] := 
		      EventHandler[{Text[Style["8", Black, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeOut == 1, 
			   val1 = MousePosition["Graphics"];, 
			   If[oneTimeOut == 0, oneTimeOut = 1];];
			  (*se inserisco il numero otto nero nell'insieme \
		intersezione*)
			  If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			   If[oneTimeOut == 1, val1 = {19, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]])}];
		     
		     eh10n[val1_] := 
		      EventHandler[{Text[Style["10", Black, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeOut == 1, 
			   val1 = MousePosition["Graphics"];, 
			   If[oneTimeOut == 0, oneTimeOut = 1];];
			  (*se inserisco il numero dieci nero nell'insieme \
		intersezione*)
			  If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			   If[oneTimeOut == 1, val1 = {23, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]])}];
		     eh12n[val1_] := 
		      EventHandler[{Text[Style["12", Black, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeOut == 1, 
			   val1 = MousePosition["Graphics"];, 
			   If[oneTimeOut == 0, oneTimeOut = 1];];
			  (*se inserisco il numero dodici nero nell'insieme \
		intersezione*)
			  If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			   If[oneTimeOut == 1, val1 = {27, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]])}];
		     
		     eh14n[val1_] := 
		      EventHandler[{Text[Style["14", Black, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeOut == 1, 
			   val1 = MousePosition["Graphics"];, 
			   If[oneTimeOut == 0, oneTimeOut = 1];];
			  (*se inserisco il numero quattordici nero nell'insieme \
		intersezione*)
			  If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			   If[oneTimeOut == 1, val1 = {31, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]])}];
		     
		     eh16n[val1_] := 
		      EventHandler[{Text[Style["16", Black, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeOut == 1, 
			   val1 = MousePosition["Graphics"];, 
			   If[oneTimeOut == 0, oneTimeOut = 1];];
			  (*se inserisco il numero sedici nero nell'insieme \
		intersezione*)
			  If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			   If[oneTimeOut == 1, val1 = {35, 7}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]])}];
		     eh18n[val1_] := 
		      EventHandler[{Text[Style["18", Black, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[oneTimeOut == 1, 
			   val1 = MousePosition["Graphics"];, 
			   If[oneTimeOut == 0, oneTimeOut = 1];];
			  (*se inserisco il numero diciotto nero nell'insieme \
		intersezione*)
			  If[val1[[2]] > 25 && val1[[1]] > -15 && val1[[1]] < 15, 
			   If[oneTimeOut == 1, val1 = {25, 4}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]])}];
		     
		     
		     )
		   ])

		game1[] := (DynamicModule[{pt1 = {RandomInteger[{-35, 35}], 
		      RandomInteger[{15, 35}]}, 
		    pt2 = {RandomInteger[{-35, 35}], RandomInteger[{15, 35}]}, 
		    pt3 = {RandomInteger[{-35, 35}], RandomInteger[{15, 35}]}, 
		    pt4 = {RandomInteger[{-35, 35}], RandomInteger[{15, 35}]}, 
		    pt5 = {RandomInteger[{-35, 35}], RandomInteger[{15, 35}]}, 
		    pt6 = {RandomInteger[{-35, 35}], RandomInteger[{15, 35}]}, eh1, 
		    eh, eh2, l1, l2, l3, l4, inPera = 0, inBanana = 0, inMela = 0, 
		    oneTime = 1, oneTimeOut = 1, prec}, 
		   Dynamic[Graphics[{eh@pt1, eh@pt2, eh1@pt3, eh1@pt4, eh2@pt5, 
		      eh2@pt6, Yellow, Thickness[0.01], 
		      l1 = Line[{{-40, 8}, {-35, 1}, {-25, 1}, {-20, 8}, {-40, 8}}], 
		      Red,
		      l2 = Line[{{-10, 8}, {-5, 1}, {5, 1}, {10, 8}, {-10, 8}}], Green,
		      l3 = Line[{{20, 8}, {25, 1}, {35, 1}, {40, 8}, {20, 8}}], Black,
		       Thickness[0.001],
		      l4 = 
		       Line[{{-44, 0.2}, {44, 0.2}, {44, 40}, {-44, 40}, {-44, 0.2}}],
		       Yellow, FontSize -> 20,
		      
		      
		      Text["A", {-40, 2}], Red, Text["B", {-10, 2}], Green , 
		      Text["C", {20, 2}]
		      },
		     ImageSize -> 900, PlotRange -> {{-45, 45}, {0, 40}}, 
		     Axes -> False], None],
		   Initialization :> (
		     testpoint[poly_, pt_] := 
		      Round[(Total@
			    Mod[(# - RotateRight[#]) &@(ArcTan @@ (pt - #) & /@ poly),
			      2 Pi, -Pi]/2/Pi)] != 0;
		     SetAttributes[eh1, HoldAll];
		     SetAttributes[eh, HoldAll];
		     SetAttributes[eh2, HoldAll];
		     SetAttributes[l1, HoldAll];
		     SetAttributes[l2, HoldAll];
		     SetAttributes[l3, HoldAll];
		     SetAttributes[l4, HoldAll];
		     SetAttributes[inPera, HoldAll];
		     SetAttributes[inBanana, HoldAll];
		     SetAttributes[oneTime, HoldAll];
		     SetAttributes[oneTimeOut, HoldAll];
		     SetAttributes[prec, HoldAll];
		     eh1[val1_] := 
		      EventHandler[{Inset[mela, Dynamic@val1, Automatic, 
			 5]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> (If[ inMela == 0 && oneTimeOut == 1 , 
			   val1 = MousePosition["Graphics"];, 
			   If[ oneTimeOut == 0, oneTimeOut = 1]; inMela = 1;];
			  (*se la mela viene messa all'interno del contenitore delle mele*)
			   
			  If[val1[[2]] < 5 && val1[[1]] > -5 && val1[[1]] < 10 , 
			    inMela = 1; 
			    If[oneTime == 1, oneTime = 0; Speak["Very good!"];];, 
			    inMela = 0; oneTime = 1]
			   (*se la mela viene messa all'interno del contenitore banana*)
			   
			   If[val1[[2]] < 5 && val1[[1]] > -35 && val1[[1]] < -20 , 
			    If[oneTimeOut == 1, val1 = {-30, 15}; 
			     oneTimeOut = 0(*Speak["Very Bad!"];*)]]
			   (*se la mela viene messa all'interno del contenitore pera*)

				      
			   If[val1[[2]] < 5 && val1[[1]] > 25 && val1[[1]] < 40 , 
			    If[oneTimeOut == 1, val1 = {30, 15}; 
			     oneTimeOut = 0(*Speak["Very Bad!"];*)]]
			  )
			}];
		     eh[val_] := 
		      EventHandler[{Inset[banana, Dynamic@val, Automatic, 
			 5]}, {"MouseClicked" :> (val = {0,15}), 
			"MouseDragged" :> (If[ inBanana == 0 && oneTimeOut == 1, 
			   val = MousePosition["Graphics"], 
			   If[ oneTimeOut == 0, oneTimeOut = 1]; inBanana = 1;]; 
			  If[val[[2]] < 5 && val[[1]] > -35 && val[[1]] < -20 , 
			    inBanana = 1; 
			    If[oneTime == 1, oneTime = 0; Speak["Very good!"];];, 
			    inBanana = 0; oneTime = 1]
			   (*se la banana viene messa all'interno del contenitore mela*)
			   
			   If[val[[2]] < 5 && val[[1]] > -5 && val[[1]] < 10 , 
			    If[oneTimeOut == 1, val = {0, 15}; oneTimeOut = 0(*Speak[
			     "Very Bad!"];*)]]
			   (*se la banana viene messa all'interno del contenitore pera*)
			   
			   If[val[[2]] < 5 && val[[1]] > 25 && val[[1]] < 40 , 
			    If[oneTimeOut == 1, val = {30, 15}; oneTimeOut = 0(*Speak[
			     "Very Bad!"];*)]]
			  
			  )
			}];
		     eh2[val2_] := 
		      EventHandler[{Inset[pera, Dynamic@val2, Automatic, 
			 5]}, {"MouseClicked" :> (val2 = {0,15}), 
			"MouseDragged" :> (If[ inPera == 0 && oneTimeOut == 1, 
			   val2 = MousePosition["Graphics"], 
			   If[ oneTimeOut == 0, oneTimeOut = 1]; inPera = 1;]; 
			  If[val2[[2]] < 5 && val2[[1]] > 25 && val2[[1]] < 40 , 
			    inPera = 1; 
			    If[oneTime == 1, oneTime = 0; Speak["Very good!"];];, 
			    inPera = 0; oneTime = 1]
			   (*se la pera viene messa all'interno del contenitore mela*)

				      
			   If[val2[[2]] < 5 && val2[[1]] > -5 && val2[[1]] < 10 , 
			    If[oneTimeOut == 1, val2 = {0, 15}; oneTimeOut = 0(*Speak[
			     "Very Bad!"];*)]]
			   (*se la pera viene messa all'interno del contenitore banana*)
			   
			   If[val2[[2]] < 5 && val2[[1]] > -35 && val2[[1]] < -20, 
			    If[oneTimeOut == 1, val2 = {-30, 15}; 
			     oneTimeOut = 0(*Speak["Very Bad!"];*)]]
			  
			  )
			}];
		     )
		   ])

		gamePart[] := (
		    DynamicModule[{pt1 = {-10, 8}, pt2 = {-7, 8}, pt3 = {-4, 8}, 
		    pt4 = {-1, 8}, pt5 = {2, 8}, pt6 = {5, 8}, pt7 = {8, 8}, 
		    pt8 = {11, 8}, pt9 = {-1, 4}, pt10 = {2, 4} , eh1, eh2, eh3, eh4, 
		    eh5, eh6, eh7, eh8, eh9, eh10, l1, l2, l3, l4, init1 = 1, 
		    init2 = 1, init3 = 1, init4 = 1, init5 = 1, init6 = 1, init7 = 1, 
		    init8 = 1, init9 = 1, init10 = 1, colOne = Red, colTwo = Red, 
		    colThree = Red, colFour = Red, colFive = Red, colSix = Red, 
		    colSeven = Red, colEight = Red, colNine = Red, colTen = Red, 
		    ok1 = 0, ok2 = 0, ok3 = 0, ok4 = 0, ok5 = 0, ok6 = 0, ok7 = 0, 
		    ok8 = 0, ok9 = 0, ok10 = 0, oneTimeOut = 1},
		   
		   
		   Manipulate[
		    Dynamic[
		     
		     Graphics[{eh1[pt1, init1], eh2[pt2, init2], eh3[pt3, init3], 
		       eh4[pt4, init4], eh5[pt5, init5] , eh6[pt6, init6], 
		       eh7[pt7, init7], eh8[pt8, init8], eh9[pt9, init9], 
		       eh10[pt10, init10], Blue, Thickness[0.005], 
		       l1 = Line[{{-40, 35}, {-35, 21}, {-15, 21}, {-10, 35}, {-40, 
			   35}}], Red,
		       l2 = Line[{{-15, 13}, {-10, 1}, {10, 1}, {15, 13}, {-15, 13}}],
			Black,
		       l3 = Line[{{10, 35}, {15, 21}, {35, 21}, {40, 35}, {10, 35}}], 
		       Black, Thickness[0.001],
		       l4 = 
			Line[{{-44, 0.2}, {44, 0.2}, {44, 40}, {-44, 40}, {-44, 
			   0.2}}], Blue, FontSize -> 20,
		       
		       
		       Text["D(A)", {-39, 23}], Red, Text["A", {-13, 2}], Black , 
		       Text["P(A)", {11, 23}]
		       },
		      ImageSize -> 900, PlotRange -> {{-45, 45}, {0, 40}}, 
		      Axes -> False], None], 
		    Button["Valuta!", 
		     If[ok1 == 1 && ok2 == 1 && ok3 == 1 && ok4 == 1 && ok5 == 1 && 
		       ok6 == 1 && ok7 == 1 && ok8 == 1 && ok9 == 1 && ok10 == 1 , 
		      Speak["Very good"], Speak["You can do better"]]]],
		   Initialization :> (
		     SetAttributes[eh1, HoldAll];
		     SetAttributes[eh2, HoldAll];
		     SetAttributes[eh3, HoldAll];
		     SetAttributes[eh4, HoldAll];
		     SetAttributes[eh5, HoldAll];
		     SetAttributes[eh6, HoldAll];
		     SetAttributes[eh7, HoldAll];
		     SetAttributes[eh8, HoldAll];
		     SetAttributes[eh9, HoldAll];
		     SetAttributes[eh10, HoldAll];
		     SetAttributes[l1, HoldAll];
		     SetAttributes[l2, HoldAll];
		     SetAttributes[l3, HoldAll];
		     SetAttributes[l4, HoldAll];
		      eh1[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["1", colOne, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"]; 
			    If[ oneTimeOut == 0, oneTimeOut = 1];]
			   (*se inserisco il numero uno nell'insieme dispari*)
		       
			       If[val1[[2]] > 25 && val1[[1]] > -40 && 
			     val1[[1]] < -10 ,
			    val1 = {-33, 28};
			    
			    If[oneTimeloc == 1, oneTimeloc = 0; colOne = Blue; 
			     ok1 = 1;];
			    ];
			  (*numero dispari nell'insieme pari*)
			  
			  If[val1[[2]] > 25 && val1[[1]] > 15 && val1[[1]] < 40 , 
			   If[oneTimeOut == 1, val1 = {-10, 8}; oneTimeOut = 0(*Speak[
			    "Very Bad!"];*)]];
			  )
			}];
		      eh2[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["2", colTwo, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"]; 
			     If[ oneTimeOut == 0, oneTimeOut = 1];]
			    (*se inserisco il numero sei nell'insieme intersezione*)
		 
				       
			    If[val1[[2]] > 25 && val1[[1]] > 15 && val1[[1]] < 40 ,
			     val1 = {16.9, 28};
			     
			     If[oneTimeloc == 1, oneTimeloc = 0; colTwo = Black; 
			      ok2 = 1;];
			     ]
			    
			    If[val1[[2]] > 25 && val1[[1]] > -40 && val1[[1]] < -10 , 
			     If[oneTimeOut == 1, val1 = {-7, 8}; 
			      oneTimeOut = 0(*Speak["Very Bad!"];*)]];
			  )
			}];
		       eh3[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["3", colThree, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"]; 
			     If[ oneTimeOut == 0, oneTimeOut = 1];]
			    (*se inserisco il numero sei nell'insieme intersezione*)
		 
				       
			    If[val1[[2]] > 25 && val1[[1]] > -40 && val1[[1]] < -10 ,
			     val1 = {-29, 28};
			     
			     If[oneTimeloc == 1, oneTimeloc = 0; colThree = Blue; 
			      ok3 = 1;];
			     ]
			    
			    If[val1[[2]] > 25 && val1[[1]] > 15 && val1[[1]] < 40 , 
			     If[oneTimeOut == 1, val1 = {-4, 8}; 
			      oneTimeOut = 0(*Speak["Very Bad!"];*)]];
			  )
			}];
			eh4[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["4", colFour, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"]; 
			     If[ oneTimeOut == 0, oneTimeOut = 1];]
			    (*se inserisco il numero sei nell'insieme intersezione*)
		 
				       
			    If[val1[[2]] > 25 && val1[[1]] > 15 && val1[[1]] < 40 ,
			     val1 = {21, 28};
			     
			     If[oneTimeloc == 1, oneTimeloc = 0; colFour = Black; 
			      ok4 = 1;];
			     ]
			    
			    If[val1[[2]] > 25 && val1[[1]] > -40 && val1[[1]] < -10 , 
			     If[oneTimeOut == 1, val1 = {-1, 8}; 
			      oneTimeOut = 0(*Speak["Very Bad!"];*)]];
			  )
			}];
		      eh5[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["5", colFive, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"]; 
			     If[ oneTimeOut == 0, oneTimeOut = 1];]
			    (*se inserisco il numero sei nell'insieme intersezione*)
		 
				       
			    If[val1[[2]] > 25 && val1[[1]] > -40 && val1[[1]] < -10 ,
			     val1 = {-25, 28};
			     
			     If[oneTimeloc == 1, oneTimeloc = 0; colFive = Blue; 
			      ok5 = 1;];
			     ]
			    
			    If[val1[[2]] > 25 && val1[[1]] > 15 && val1[[1]] < 40 , 
			     If[oneTimeOut == 1, val1 = {2, 8}; oneTimeOut = 0(*Speak[
			      "Very Bad!"];*)]];
			  )
			}];
		      eh6[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["6", colSix, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"]; 
			     If[ oneTimeOut == 0, oneTimeOut = 1];]
			    (*se inserisco il numero sei nell'insieme intersezione*)
		 
				       
			    If[val1[[2]] > 25 && val1[[1]] > 15 && val1[[1]] < 40 ,
			     val1 = {25, 28};
			     
			     If[oneTimeloc == 1, oneTimeloc = 0; colSix = Black; 
			      ok6 = 1;];
			     ]
			    
			    If[val1[[2]] > 25 && val1[[1]] > -40 && val1[[1]] < -10 , 
			     If[oneTimeOut == 1, val1 = {5, 8}; oneTimeOut = 0(*Speak[
			      "Very Bad!"];*)]];
			  )
			}];
		      eh7[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["7", colSeven, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"]; 
			     If[ oneTimeOut == 0, oneTimeOut = 1];]
			    (*se inserisco il numero sei nell'insieme intersezione*)
		 
				       
			    If[val1[[2]] > 25 && val1[[1]] > -40 && val1[[1]] < -10 ,
			     val1 = {-21, 28};
			     
			     If[oneTimeloc == 1, oneTimeloc = 0; colSeven = Blue; 
			      ok7 = 1;];
			     ]
			    
			    If[val1[[2]] > 25 && val1[[1]] > 15 && val1[[1]] < 40 , 
			     If[oneTimeOut == 1, val1 = {8, 8}; oneTimeOut = 0(*Speak[
			      "Very Bad!"];*)]];
			  )
			}];
		      eh8[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["8", colEight, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"]; 
			     If[ oneTimeOut == 0, oneTimeOut = 1];]
			    (*se inserisco il numero sei nell'insieme intersezione*)
		 
				       
			    If[val1[[2]] > 25 && val1[[1]] > 15 && val1[[1]] < 40 ,
			     val1 = {29, 28};
			     
			     If[oneTimeloc == 1, oneTimeloc = 0; colEight = Black; 
			      ok8 = 1;];
			     ]
			    
			    If[val1[[2]] > 25 && val1[[1]] > -40 && val1[[1]] < -10 , 
			     If[oneTimeOut == 1, val1 = {11, 8}; 
			      oneTimeOut = 0(*Speak["Very Bad!"];*)]];
			  )
			}];
		      eh9[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["9", colNine, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"]; 
			     If[ oneTimeOut == 0, oneTimeOut = 1];]
			    (*se inserisco il numero sei nell'insieme intersezione*)
		 
				       
			    If[val1[[2]] > 25 && val1[[1]] > -40 && val1[[1]] < -10 ,
			     val1 = {-17, 28};
			     
			     If[oneTimeloc == 1, oneTimeloc = 0; colNine = Blue; 
			      ok9 = 1;];
			     ]
			    
			    If[val1[[2]] > 25 && val1[[1]] > 15 && val1[[1]] < 40 , 
			     If[oneTimeOut == 1, val1 = {-1, 4}; 
			      oneTimeOut = 0(*Speak["Very Bad!"];*)]];
			  )
			}];
		      eh10[val1_, oneTimeloc_] := 
		      EventHandler[{Text[Style["10", colTen, Italic, 20], 
			 Dynamic@val1]}, {"MouseClicked" :> (val1 = {0,15}), 
			"MouseDragged" :> ( 
			  If[oneTimeloc == 1, val1 = MousePosition["Graphics"]; 
			     If[ oneTimeOut == 0, oneTimeOut = 1];]
			    (*se inserisco il numero sei nell'insieme intersezione*)
		 
				       
			    If[val1[[2]] > 25 && val1[[1]] > 15 && val1[[1]] < 40 ,
			     val1 = {33, 28};
			     
			     If[oneTimeloc == 1, oneTimeloc = 0; colTen = Black; 
			      ok10 = 1;];
			     ]
			    
			    If[val1[[2]] > 25 && val1[[1]] > -40 && val1[[1]] < -10 , 
			     If[oneTimeOut == 1, val1 = {2, 4}; oneTimeOut = 0(*Speak[
			      "Very Bad!"];*)]];
			  )
			}];
		     )
		   ])

	End[ ]
	Protect[project]
EndPackage[ ]




"Global`project`Private`"
{}



