{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 42.0, 85.0, 1852.0, 920.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 1073.0, 208.0, 144.0, 22.0 ],
					"text" : "\"Photosens 1-02.maxpat\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 477.5, 214.0, 140.0, 22.0 ],
					"text" : "MAIN_cheapbox.maxpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 372.0, 482.0, 74.0, 22.0 ],
					"text" : "loadmess -1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 15.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 287.5, 530.5, 52.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 508.5, 301.5, 48.0, 24.0 ],
					"text" : "GAIN"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 15.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 287.5, 320.0, 47.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 508.5, 204.5, 39.0, 24.0 ],
					"text" : "PAN"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 18.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1094.0, 172.0, 114.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 147.0, 114.0, 28.0 ],
					"text" : "PHOTOSENS"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 18.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 497.5, 184.0, 113.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 609.5, 147.0, 113.0, 28.0 ],
					"text" : "CHEAPBOX"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741176470588235, 0.105882352941176, 0.105882352941176, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1279.0, 320.0, 95.0, 22.0 ],
					"text" : "r~ PLANCHE_R"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741176470588235, 0.105882352941176, 0.105882352941176, 1.0 ],
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 938.0, 320.0, 93.0, 22.0 ],
					"text" : "r~ PLANCHE_L"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741176470588235, 0.105882352941176, 0.105882352941176, 1.0 ],
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 708.0, 320.0, 105.0, 22.0 ],
					"text" : "r~ CHEAPBOX_R"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741176470588235, 0.105882352941176, 0.105882352941176, 1.0 ],
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 372.0, 320.0, 103.0, 22.0 ],
					"text" : "r~ CHEAPBOX_L"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1069.5, 283.0, 77.0, 22.0 ],
					"text" : "loadmess 63"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1088.0, 483.0, 48.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 830.0, 276.0, 71.0, 161.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[23]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1145.75, 428.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1053.0, 428.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1069.5, 368.0, 103.0, 22.0 ],
					"text" : "scale 0. 127. 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1063.5, 400.0, 29.5, 22.0 ],
					"text" : "!- 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1069.5, 320.0, 184.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 773.5, 199.0, 184.0, 39.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 501.5, 288.0, 77.0, 22.0 ],
					"text" : "loadmess 63"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 523.5, 487.0, 48.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 624.0, 276.0, 84.0, 161.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[22]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 583.75, 437.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 491.0, 437.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 507.5, 377.0, 103.0, 22.0 ],
					"text" : "scale 0. 127. 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 501.5, 409.0, 29.5, 22.0 ],
					"text" : "!- 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 501.5, 320.0, 184.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 574.0, 199.0, 184.0, 39.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 735.5, 685.0, 195.0, 195.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 712.5, 543.0, 90.0, 90.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 30.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 701.5, 79.0, 285.0, 41.0 ],
					"text" : "CONTROLE AUDIO"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 1104.75, 625.5, 921.0, 625.5 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 1097.5, 628.0, 745.0, 628.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 540.25, 629.0, 921.0, 629.0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 533.0, 632.0, 745.0, 632.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"midpoints" : [ 1079.0, 408.5, 1165.75, 408.5 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"midpoints" : [ 517.0, 417.5, 603.75, 417.5 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-12" : [ "live.gain~[23]", "live.gain~", 0 ],
			"obj-13" : [ "live.gain~[22]", "live.gain~", 0 ],
			"obj-20::obj-10::obj-364" : [ "number[4]", "number", 0 ],
			"obj-20::obj-10::obj-365" : [ "number[5]", "number", 0 ],
			"obj-20::obj-10::obj-391" : [ "live.gain~[20]", "live.gain~", 0 ],
			"obj-20::obj-10::obj-395::obj-18" : [ "live.gain~[18]", "live.gain~", 0 ],
			"obj-20::obj-10::obj-395::obj-77" : [ "live.gain~[19]", "live.gain~", 0 ],
			"obj-20::obj-10::obj-71" : [ "live.gain~[21]", "live.gain~", 0 ],
			"obj-20::obj-125::obj-105" : [ "number[9]", "number", 0 ],
			"obj-20::obj-125::obj-108" : [ "gain~[15]", "gain~", 0 ],
			"obj-20::obj-125::obj-116" : [ "number[11]", "number", 0 ],
			"obj-20::obj-125::obj-119" : [ "gain~[17]", "gain~", 0 ],
			"obj-20::obj-125::obj-127" : [ "number[13]", "number", 0 ],
			"obj-20::obj-125::obj-130" : [ "gain~[10]", "gain~", 0 ],
			"obj-20::obj-125::obj-151" : [ "number[15]", "number", 0 ],
			"obj-20::obj-125::obj-154" : [ "gain~[11]", "gain~", 0 ],
			"obj-20::obj-125::obj-172" : [ "number[17]", "number", 0 ],
			"obj-20::obj-125::obj-175" : [ "gain~[18]", "gain~", 0 ],
			"obj-20::obj-125::obj-183" : [ "number[19]", "number", 0 ],
			"obj-20::obj-125::obj-186" : [ "gain~[12]", "gain~", 0 ],
			"obj-20::obj-125::obj-194" : [ "number[21]", "number", 0 ],
			"obj-20::obj-125::obj-197" : [ "gain~[26]", "gain~", 0 ],
			"obj-20::obj-125::obj-20" : [ "gain~[25]", "gain~", 0 ],
			"obj-20::obj-125::obj-207" : [ "number[23]", "number", 0 ],
			"obj-20::obj-125::obj-210" : [ "gain~[28]", "gain~", 0 ],
			"obj-20::obj-125::obj-220" : [ "number[25]", "number", 0 ],
			"obj-20::obj-125::obj-223" : [ "gain~[24]", "gain~", 0 ],
			"obj-20::obj-125::obj-231" : [ "number[27]", "number", 0 ],
			"obj-20::obj-125::obj-234" : [ "gain~[14]", "gain~", 0 ],
			"obj-20::obj-125::obj-91" : [ "number[7]", "number", 0 ],
			"obj-20::obj-125::obj-95" : [ "gain~[16]", "gain~", 0 ],
			"obj-20::obj-125::obj-96" : [ "number[14]", "number", 0 ],
			"obj-20::obj-399::obj-364" : [ "number[2]", "number", 0 ],
			"obj-20::obj-399::obj-365" : [ "number[3]", "number", 0 ],
			"obj-20::obj-399::obj-391" : [ "live.gain~[17]", "live.gain~", 0 ],
			"obj-20::obj-399::obj-395::obj-18" : [ "live.gain~[15]", "live.gain~", 0 ],
			"obj-20::obj-399::obj-395::obj-77" : [ "live.gain~[16]", "live.gain~", 0 ],
			"obj-21::obj-120" : [ "gain~[19]", "gain~", 0 ],
			"obj-21::obj-128::obj-102" : [ "live.gain~[13]", "live.gain~[2]", 0 ],
			"obj-21::obj-128::obj-106" : [ "live.gain~[12]", "live.gain~[2]", 0 ],
			"obj-21::obj-128::obj-110" : [ "gain~[3]", "gain~[4]", 0 ],
			"obj-21::obj-128::obj-112" : [ "live.gain~[7]", "live.gain~[2]", 0 ],
			"obj-21::obj-128::obj-114" : [ "gain~[5]", "gain~[4]", 0 ],
			"obj-21::obj-128::obj-118" : [ "live.gain~[14]", "live.gain~[2]", 0 ],
			"obj-21::obj-128::obj-120" : [ "gain~[7]", "gain~[4]", 0 ],
			"obj-21::obj-128::obj-124" : [ "live.gain~[3]", "live.gain~[2]", 0 ],
			"obj-21::obj-128::obj-337" : [ "gain~[1]", "gain~[4]", 0 ],
			"obj-21::obj-128::obj-338" : [ "gain~[2]", "gain~[4]", 0 ],
			"obj-21::obj-128::obj-339" : [ "gain~[4]", "gain~[4]", 0 ],
			"obj-21::obj-128::obj-340" : [ "gain~[6]", "gain~[4]", 0 ],
			"obj-21::obj-128::obj-58" : [ "live.gain~[2]", "live.gain~[2]", 0 ],
			"obj-21::obj-128::obj-62" : [ "gain~[8]", "gain~[4]", 0 ],
			"obj-21::obj-128::obj-94" : [ "live.gain~[6]", "live.gain~[2]", 0 ],
			"obj-21::obj-128::obj-98" : [ "live.gain~[4]", "live.gain~[2]", 0 ],
			"obj-21::obj-13" : [ "live.gain~", "live.gain~", 0 ],
			"obj-21::obj-136" : [ "live.gain~[5]", "live.gain~", 0 ],
			"obj-21::obj-144" : [ "live.gain~[1]", "live.gain~[1]", 0 ],
			"obj-21::obj-1::obj-18" : [ "live.gain~[9]", "live.gain~", 0 ],
			"obj-21::obj-1::obj-77" : [ "live.gain~[10]", "live.gain~", 0 ],
			"obj-21::obj-200" : [ "dial[2]", "dial", 0 ],
			"obj-21::obj-37::obj-30" : [ "live.gain~[24]", "live.gain~[24]", 0 ],
			"obj-21::obj-40" : [ "live.gain~[11]", "live.gain~", 0 ],
			"obj-21::obj-54::obj-71" : [ "live.gain~[8]", "live.gain~", 0 ],
			"obj-21::obj-76" : [ "number", "number", 0 ],
			"obj-21::obj-83" : [ "number[1]", "number", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-21::obj-37::obj-30" : 				{
					"parameter_longname" : "live.gain~[24]",
					"parameter_shortname" : "live.gain~[24]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "MAIN_cheapbox.maxpat",
				"bootpath" : "~/Desktop/_Installation version 31_01/instal_projet_31janvier/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Photosens 1-02.maxpat",
				"bootpath" : "~/Desktop/_Installation version 31_01/instal_projet_31janvier/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ampfollower.maxpat",
				"bootpath" : "~/Desktop/_Installation version 31_01/instal_projet_31janvier/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "harmo_Plet_Quentin.maxpat",
				"bootpath" : "~/Desktop/_Installation version 31_01/instal_projet_31janvier/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "helpargs.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "munger~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "yafr2.maxpat",
				"bootpath" : "~/Desktop/_Installation version 31_01/instal_projet_31janvier/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
