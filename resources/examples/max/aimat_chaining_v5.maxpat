{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 90.0, 1428.0, 843.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.86, 0.86, 0.84, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 1400.0, 800.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 1400.0, 800.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 22.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 300.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 6.0, 300.0, 31.0 ],
					"text" : "AIMAT CHAIN v5"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 600.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 250.0, 14.0, 600.0, 19.0 ],
					"text" : "a source is transcribed → continued → continued again… you shape what comes out"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.2, 0.2, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 0.0, 0.0, 30.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1300.0, 6.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1334.0, 12.0, 60.0, 20.0 ],
					"text" : "PANIC"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 0.0, 107.0, 22.0 ],
					"text" : "s chain_panic"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1600.0, 10.0, 200.0, 22.0 ],
					"text" : "AIMAT connection"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1600.0, 40.0, 100.0, 22.0 ],
					"text" : "r aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1600.0, 70.0, 170.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 5005"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1600.0, 120.0, 121.0, 22.0 ],
					"text" : "udpreceive 7400"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1750.0, 120.0, 93.0, 22.0 ],
					"text" : "print aimat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"patching_rect" : [ 1600.0, 150.0, 520.0, 22.0 ],
					"text" : "route /musika_done /basic_pitch_done /midi_ddsp_done /status /continuator_done"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1600.0, 440.0, 130.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "chain_engine.js",
						"parameter_enable" : 0
					}
,
					"text" : "js chain_engine.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1800.0, 410.0, 135.0, 22.0 ],
					"text" : "r chain_to_engine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1940.0, 410.0, 569.0, 22.0 ],
					"text" : "loadmess feedback /Users/ericbrowne/aimat/basic_pitch/output/chain_feedback.mid"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1600.0, 480.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1740.0, 480.0, 93.0, 22.0 ],
					"text" : "route 1 2 3"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.96, 0.96, 0.95, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 44.0, 280.0, 246.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 44.0, 280.0, 246.0 ],
					"rounded" : 6
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.98, 0.72, 0.36, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 44.0, 280.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 44.0, 280.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 13.0,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 44.0, 270.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 46.0, 268.0, 21.0 ],
					"text" : "1 · GENERATE (Musika)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1600.0, 700.0, 36.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 78.0, 36.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-22",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 120.0, 31.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 62.0, 80.0, 106.0, 31.0 ],
					"text" : "NEW SOURCE\n(re-seeds the chain)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"items" : [ "pipes", ",", "misc", ",", "techno" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1600.0, 740.0, 86.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 192.0, 84.0, 86.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1700.0, 740.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1600.0, 780.0, 36.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 126.0, 36.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 120.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 62.0, 134.0, 120.0, 19.0 ],
					"text" : "NEW BED (techno)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1600.0, 820.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 172.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "truncation",
							"parameter_mmax" : 4.0,
							"parameter_mmin" : 0.1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "wildness",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "truncation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1660.0, 820.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.0, 188.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1660.0, 790.0, 93.0, 22.0 ],
					"text" : "loadmess 20"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 60.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.0, 212.0, 60.0, 18.0 ],
					"text" : "seconds"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-31",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 140.0, 37.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 138.0, 178.0, 86.0, 37.0 ],
					"text" : "wildness: Musika's\ntruncation (higher =\nless predictable)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1600.0, 870.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 234.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 110.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.0, 236.0, 110.0, 19.0 ],
					"text" : "new source every"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1640.0, 870.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 162.0, 234.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1640.0, 840.0, 93.0, 22.0 ],
					"text" : "loadmess 45"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 30.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 216.0, 236.0, 30.0, 19.0 ],
					"text" : "sec"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 260.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 266.0, 260.0, 18.0 ],
					"text" : "one Musika job at a time: wait for results"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1600.0, 900.0, 93.0, 22.0 ],
					"text" : "metro 45000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1640.0, 930.0, 58.0, 22.0 ],
					"text" : "* 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2200.0, 900.0, 58.0, 22.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 2200.0, 700.0, 65.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2200.0, 730.0, 190.0, 22.0 ],
					"text" : "pack musika 1. 20 techno"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2200.0, 760.0, 170.0, 22.0 ],
					"text" : "prepend /trigger_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2200.0, 790.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2400.0, 760.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2400.0, 700.0, 44.0, 22.0 ],
					"text" : "f 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2400.0, 730.0, 44.0, 22.0 ],
					"text" : "f 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 2460.0, 700.0, 65.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2460.0, 730.0, 190.0, 22.0 ],
					"text" : "pack musika 1. 20 pipes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2460.0, 760.0, 170.0, 22.0 ],
					"text" : "prepend /trigger_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2460.0, 790.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2660.0, 760.0, 40.0, 22.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2660.0, 700.0, 44.0, 22.0 ],
					"text" : "f 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2660.0, 730.0, 44.0, 22.0 ],
					"text" : "f 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2460.0, 670.0, 114.0, 22.0 ],
					"text" : "prepend symbol"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.96, 0.96, 0.95, 1.0 ],
					"id" : "obj-56",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 296.0, 44.0, 440.0, 246.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 296.0, 44.0, 440.0, 246.0 ],
					"rounded" : 6
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.93, 0.42, 0.4, 1.0 ],
					"id" : "obj-57",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 296.0, 44.0, 440.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 296.0, 44.0, 440.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 13.0,
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 296.0, 44.0, 430.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 302.0, 46.0, 428.0, 21.0 ],
					"text" : "2 · CHAIN REACTION"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1900.0, 520.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 308.0, 78.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.3 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "chaos",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "chaos",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "chaos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1960.0, 520.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 360.0, 78.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "density",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "density",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "density"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2020.0, 520.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 412.0, 78.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "pace",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : -1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "pace",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "pace"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 22.0,
					"id" : "obj-62",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1900.0, 640.0, 64.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 466.0, 78.0, 64.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 70.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 466.0, 114.0, 70.0, 18.0 ],
					"text" : "generation"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-64",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 236.0, 40.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 308.0, 136.0, 182.0, 40.0 ],
					"text" : "chaos: how different each generation is\ndensity: notes heard in the source\npace: how fast the voices play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2080.0, 520.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 546.0, 78.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2080.0, 490.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 160.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 80.0, 160.0, 19.0 ],
					"text" : "keep feeding back (drift)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2120.0, 520.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 546.0, 108.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-69",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 160.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 110.0, 160.0, 19.0 ],
					"text" : "next generation now"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2160.0, 520.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 546.0, 138.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 160.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 140.0, 160.0, 19.0 ],
					"text" : "reset chain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2200.0, 520.0, 36.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 546.0, 168.0, 36.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2200.0, 490.0, 86.0, 22.0 ],
					"text" : "loadmess 4"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 146.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 586.0, 170.0, 146.0, 18.0 ],
					"text" : "MIDI-DDSP every n (0 off)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1900.0, 580.0, 107.0, 22.0 ],
					"text" : "prepend chaos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1960.0, 580.0, 121.0, 22.0 ],
					"text" : "prepend density"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2080.0, 580.0, 107.0, 22.0 ],
					"text" : "prepend drift"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2200.0, 580.0, 142.0, 22.0 ],
					"text" : "prepend ddsp_every"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2120.0, 550.0, 65.0, 22.0 ],
					"text" : "advance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2160.0, 550.0, 51.0, 22.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2020.0, 580.0, 135.0, 22.0 ],
					"text" : "expr pow(4\\, $f1)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2020.0, 610.0, 100.0, 22.0 ],
					"text" : "s chain_pace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2000.0, 640.0, 416.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 308.0, 202.0, 416.0, 22.0 ],
					"text" : "\"chain stalled at gen 33: NEW SOURCE or next generation now\""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-84",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 70.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 308.0, 234.0, 70.0, 18.0 ],
					"text" : "AIMAT says:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1600.0, 200.0, 344.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 380.0, 232.0, 344.0, 22.0 ],
					"text" : "\"Generating audio with midi_ddsp.\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2000.0, 200.0, 93.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 416.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 308.0, 262.0, 416.0, 18.0 ],
					"text" : "the chain runs by itself while drift is on: shape it with the mixer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1600.0, 260.0, 114.0, 22.0 ],
					"text" : "prepend source"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1730.0, 260.0, 100.0, 22.0 ],
					"text" : "prepend seed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1850.0, 260.0, 135.0, 22.0 ],
					"text" : "prepend continued"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.96, 0.96, 0.95, 1.0 ],
					"id" : "obj-91",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 744.0, 44.0, 322.0, 246.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 744.0, 44.0, 322.0, 246.0 ],
					"rounded" : 6
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.45, 0.66, 0.93, 1.0 ],
					"id" : "obj-92",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 744.0, 44.0, 322.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 744.0, 44.0, 322.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 13.0,
					"id" : "obj-93",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 744.0, 44.0, 312.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 750.0, 46.0, 310.0, 21.0 ],
					"text" : "3 · BED (techno) · snap loop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 2400.0, 40.0, 65.0, 22.0 ],
					"text" : "t b b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2550.0, 70.0, 121.0, 22.0 ],
					"text" : "prepend replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 2550.0, 98.0, 135.0, 22.0 ],
					"text" : "buffer~ chain_bed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2690.0, 70.0, 107.0, 22.0 ],
					"text" : "normalize 0.9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2400.0, 70.0, 79.0, 22.0 ],
					"text" : "startloop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2475.0, 98.0, 65.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2475.0, 126.0, 128.0, 22.0 ],
					"text" : "prepend duration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2690.0, 126.0, 58.0, 22.0 ],
					"text" : "loop 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2690.0, 98.0, 72.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 2475.0, 160.0, 120.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "chain_loop.js",
						"parameter_enable" : 0
					}
,
					"text" : "js chain_loop.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 2400.0, 200.0, 180.0, 22.0 ],
					"text" : "groove~ chain_bed 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2620.0, 230.0, 65.0, 22.0 ],
					"text" : "*~ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2700.0, 230.0, 58.0, 22.0 ],
					"text" : "!-~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2700.0, 258.0, 65.0, 22.0 ],
					"text" : "*~ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2620.0, 286.0, 72.0, 22.0 ],
					"text" : "minimum~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2620.0, 314.0, 93.0, 22.0 ],
					"text" : "clip~ 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2400.0, 350.0, 40.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2465.0, 350.0, 40.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2400.0, 420.0, 28.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 756.0, 78.0, 28.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-113",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 36.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 788.0, 84.0, 36.0, 19.0 ],
					"text" : "ARM"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2440.0, 420.0, 28.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 834.0, 78.0, 28.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-115",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 60.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 866.0, 84.0, 60.0, 19.0 ],
					"text" : "RELEASE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2400.0, 450.0, 40.0, 22.0 ],
					"text" : "arm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2440.0, 480.0, 65.0, 22.0 ],
					"text" : "release"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"items" : [ "2 hits", ",", "4 hits", ",", "8 hits", ",", "16 hits" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2500.0, 420.0, 84.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 970.0, 82.0, 84.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2500.0, 390.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2500.0, 450.0, 163.0, 22.0 ],
					"text" : "expr pow(2\\, $i1 + 1)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2500.0, 480.0, 100.0, 22.0 ],
					"text" : "prepend hits"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 2600.0, 420.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 756.0, 114.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "bed_threshold",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.05,
							"parameter_modmode" : 0,
							"parameter_shortname" : "hit level",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "bed_threshold"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2720.0, 540.0, 18.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 806.0, 130.0, 18.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 26.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 828.0, 130.0, 26.0, 18.0 ],
					"text" : "hit"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-125",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 190.0, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 864.0, 118.0, 145.0, 29.0 ],
					"text" : "ARM catches the next drum hit\nand loops exactly N hits"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 46.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 756.0, 174.0, 46.0, 19.0 ],
					"text" : "SPEED"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-127",
					"maxclass" : "slider",
					"min" : -2.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2800.0, 420.0, 170.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 172.0, 170.0, 20.0 ],
					"size" : 4.0
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-128",
					"maxclass" : "flonum",
					"maximum" : 4.0,
					"minimum" : -4.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2980.0, 420.0, 56.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 978.0, 171.0, 56.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2980.0, 480.0, 65.0, 22.0 ],
					"text" : "sig~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2980.0, 390.0, 93.0, 22.0 ],
					"text" : "loadmess 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2800.0, 480.0, 93.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2800.0, 450.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 756.0, 198.0, 42.0, 22.0 ],
					"text" : "0.25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2845.0, 450.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 198.0, 42.0, 22.0 ],
					"text" : "0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2890.0, 450.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 848.0, 198.0, 42.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2935.0, 450.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 894.0, 198.0, 42.0, 22.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2980.0, 450.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 940.0, 198.0, 42.0, 22.0 ],
					"text" : "-1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3040.0, 450.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 992.0, 199.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-138",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 40.0, 27.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1014.0, 196.0, 28.0, 27.0 ],
					"text" : "keep\npitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3040.0, 420.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3040.0, 480.0, 149.0, 22.0 ],
					"text" : "prepend timestretch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2500.0, 540.0, 298.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 756.0, 230.0, 298.0, 22.0 ],
					"text" : "\"loop spans 4 hits\""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-142",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 300.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 756.0, 258.0, 300.0, 17.0 ],
					"text" : "speed 1 = normal · −1 = reverse · keep pitch = stretch, not tape"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2400.0, 580.0, 44.0, 22.0 ],
					"text" : "abs~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2400.0, 608.0, 121.0, 22.0 ],
					"text" : "slide~ 1. 2000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2400.0, 636.0, 58.0, 22.0 ],
					"text" : ">~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 2400.0, 664.0, 51.0, 22.0 ],
					"text" : "edge~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2400.0, 692.0, 100.0, 22.0 ],
					"text" : "speedlim 120"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 2400.0, 720.0, 51.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2400.0, 748.0, 79.0, 22.0 ],
					"text" : "snapshot~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2400.0, 776.0, 107.0, 22.0 ],
					"text" : "prepend onset"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.96, 0.96, 0.95, 1.0 ],
					"id" : "obj-151",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1074.0, 44.0, 318.0, 246.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1074.0, 44.0, 318.0, 246.0 ],
					"rounded" : 6
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.45, 0.8, 0.7, 1.0 ],
					"id" : "obj-152",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1074.0, 44.0, 318.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1074.0, 44.0, 318.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 13.0,
					"id" : "obj-153",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1074.0, 44.0, 308.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1080.0, 46.0, 306.0, 21.0 ],
					"text" : "4 · SOURCE (feeds the chain) · slice"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 3100.0, 40.0, 65.0, 22.0 ],
					"text" : "t b b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3250.0, 70.0, 121.0, 22.0 ],
					"text" : "prepend replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 3250.0, 98.0, 156.0, 22.0 ],
					"text" : "buffer~ chain_source"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3390.0, 70.0, 107.0, 22.0 ],
					"text" : "normalize 0.9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3100.0, 70.0, 79.0, 22.0 ],
					"text" : "startloop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3175.0, 98.0, 65.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3175.0, 126.0, 128.0, 22.0 ],
					"text" : "prepend duration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3390.0, 126.0, 58.0, 22.0 ],
					"text" : "loop 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3390.0, 98.0, 72.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 3175.0, 160.0, 120.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "chain_loop.js",
						"parameter_enable" : 0
					}
,
					"text" : "js chain_loop.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 3100.0, 200.0, 180.0, 22.0 ],
					"text" : "groove~ chain_source 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3320.0, 230.0, 65.0, 22.0 ],
					"text" : "*~ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3400.0, 230.0, 58.0, 22.0 ],
					"text" : "!-~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3400.0, 258.0, 65.0, 22.0 ],
					"text" : "*~ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3320.0, 286.0, 72.0, 22.0 ],
					"text" : "minimum~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3320.0, 314.0, 93.0, 22.0 ],
					"text" : "clip~ 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3100.0, 350.0, 40.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3165.0, 350.0, 40.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 3100.0, 420.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1086.0, 78.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "slice_pos",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "position",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "slice_pos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 3160.0, 420.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1138.0, 78.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "slice_ms",
							"parameter_mmax" : 1000.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "slice",
							"parameter_type" : 0,
							"parameter_unitstyle" : 2
						}

					}
,
					"varname" : "slice_ms"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-174",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 190.0, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1194.0, 82.0, 112.0, 29.0 ],
					"text" : "slice 0 = the whole clip;\nsmall slices stutter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3100.0, 480.0, 79.0, 22.0 ],
					"text" : "pak 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3100.0, 510.0, 107.0, 22.0 ],
					"text" : "prepend slice"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-177",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 46.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1086.0, 174.0, 46.0, 19.0 ],
					"text" : "SPEED"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-178",
					"maxclass" : "slider",
					"min" : -2.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3300.0, 420.0, 170.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1132.0, 172.0, 170.0, 20.0 ],
					"size" : 4.0
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-179",
					"maxclass" : "flonum",
					"maximum" : 4.0,
					"minimum" : -4.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3480.0, 420.0, 56.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1308.0, 171.0, 56.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 3480.0, 480.0, 65.0, 22.0 ],
					"text" : "sig~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3480.0, 390.0, 93.0, 22.0 ],
					"text" : "loadmess 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3300.0, 480.0, 93.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3300.0, 450.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1086.0, 198.0, 42.0, 22.0 ],
					"text" : "0.25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3345.0, 450.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1132.0, 198.0, 42.0, 22.0 ],
					"text" : "0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3390.0, 450.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1178.0, 198.0, 42.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-186",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3435.0, 450.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1224.0, 198.0, 42.0, 22.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3480.0, 450.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1270.0, 198.0, 42.0, 22.0 ],
					"text" : "-1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3540.0, 450.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1322.0, 199.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-189",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 40.0, 27.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1344.0, 196.0, 28.0, 27.0 ],
					"text" : "keep\npitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3540.0, 420.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3540.0, 480.0, 149.0, 22.0 ],
					"text" : "prepend timestretch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3100.0, 540.0, 294.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1086.0, 230.0, 294.0, 22.0 ],
					"text" : "\"full loop\""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-193",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 300.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1086.0, 258.0, 300.0, 17.0 ],
					"text" : "speed only changes what you hear; the chain uses the original"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.96, 0.96, 0.95, 1.0 ],
					"id" : "obj-194",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 296.0, 254.0, 118.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 296.0, 254.0, 118.0 ],
					"rounded" : 6
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.72, 0.58, 0.9, 1.0 ],
					"id" : "obj-195",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 296.0, 254.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 296.0, 254.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 13.0,
					"id" : "obj-196",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 296.0, 244.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 298.0, 242.0, 21.0 ],
					"text" : "VOICE 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 3700.0, 40.0, 219.0, 22.0 ],
					"text" : "route speed octave load write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3700.0, 140.0, 58.0, 22.0 ],
					"text" : "f 1024"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 3700.0, 170.0, 44.0, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3760.0, 140.0, 100.0, 22.0 ],
					"text" : "r chain_pace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-201",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 3700.0, 200.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3700.0, 230.0, 107.0, 22.0 ],
					"text" : "prepend start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "" ],
					"patching_rect" : [ 3700.0, 260.0, 40.0, 22.0 ],
					"text" : "seq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-204",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "bang" ],
					"patching_rect" : [ 3830.0, 80.0, 65.0, 22.0 ],
					"text" : "t b s b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-205",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3960.0, 110.0, 44.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4010.0, 110.0, 51.0, 22.0 ],
					"text" : "panic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-207",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3880.0, 110.0, 100.0, 22.0 ],
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4080.0, 200.0, 107.0, 22.0 ],
					"text" : "prepend write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-209",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 3800.0, 300.0, 51.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-210",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3880.0, 330.0, 65.0, 22.0 ],
					"text" : "ended 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-211",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3880.0, 360.0, 135.0, 22.0 ],
					"text" : "s chain_to_engine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 3800.0, 330.0, 79.0, 22.0 ],
					"text" : "delay 150"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-213",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3740.0, 330.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 220.0, 360.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-214",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3740.0, 300.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-215",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 40.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 216.0, 384.0, 40.0, 18.0 ],
					"text" : "loop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-216",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3800.0, 360.0, 72.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-217",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 3700.0, 400.0, 79.0, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-218",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3700.0, 430.0, 130.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "chain_shaper.js",
						"parameter_enable" : 0
					}
,
					"text" : "js chain_shaper.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-219",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 400.0, 114.0, 22.0 ],
					"text" : "prepend octave"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-220",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4030.0, 400.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.0, 328.0, 40.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-221",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 28.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.0, 330.0, 28.0, 18.0 ],
					"text" : "oct"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"items" : [ "off", ",", "minpent", ",", "dorian", ",", "wholetone", ",", "major" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3900.0, 460.0, 90.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 362.0, 90.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 430.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-224",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 490.0, 107.0, 22.0 ],
					"text" : "prepend scale"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-225",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 40.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 364.0, 40.0, 18.0 ],
					"text" : "scale"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-226",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 4020.0, 460.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 158.0, 358.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 100 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "v1_keep",
							"parameter_mmax" : 100.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "keep %",
							"parameter_type" : 0,
							"parameter_unitstyle" : 5
						}

					}
,
					"varname" : "v1_keep"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-227",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4020.0, 520.0, 100.0, 22.0 ],
					"text" : "prepend keep"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-228",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3960.0, 80.0, 107.0, 22.0 ],
					"text" : "r chain_panic"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-229",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 3700.0, 560.0, 125.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, 2, "@autosave", 1, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "FM8.vst3",
							"plugindisplayname" : "FM8",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "11248.VMjLgb9J...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fyLxLiKCIjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3hMsclcuwzLKI0T5clc2.2Q0czUqEVXI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKtbWNA4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKs4hR0EycQQkTnQEcVcWM3X0cp0TNwXjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtfjKt3hKD4hKt3hYB4hKt3xctX1RtfzPtPmKtvjKyHjK24hKL4BQC4hct.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKt3hdt3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hKTYWPrgCLhIUT3AER3gkSGQyRzTSNLQzPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3BTB4hKt3xPA4hVtPjQtLWPtHlKDYjKsEjYg4BUF4BRt3hKt.0QtbVP1IlK5YjK0EjKY4hZF4xYAYFQt3hKt3TPPgkKPcjKuEjYi4BUF4hYt.kTtLiQtjWPtLlKHcjKvDDTg4BUF4BcA4xXtvzQtPTPt3hKXUjKqEjKg4xMF4RZAAkVt.0QtPSPtfjK5IjKl4hYQ4hZF4hbA4xXtPkQtfWPtfjKLQjKvDjKi4xMF4BaAYVVt3lKtzTP1ElKPYjKxDjKZ4BUF4xZA4RXt3hPtLmKtfjKXQjKuEjKg4BTG4xZAYlXt3hPtDmKtfjK2PjK1EDTY4BRG4xYA4xXtbiQtfWPtfjKTQjKl4hcJ4hKB4BTAAkVt.0QtjVPtnkKtHjKLEjYQ4xMD4hRt3hKt3hKtrxJqrxJC4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKA4hKt3BQt3hKtXlKt3hKtLjKt3hKXQjKMEjKN4BQA4hKt3RUtfzQtbVPlElKLcjKuEDTY4xLF4hdA4BRtPDQtnWPtLlKDYjKoEjcZ4BSG4xQt3hKtfTPt3hKPMkKDYjKxEjKg4BUF4hdA4BRtnFQtPWP1IlKPcjK3EDTi4hdF4xZAYVXt.0QtjWPtPjKt3hKOEjKi4hYF4xZAYlXt3hPt.UPPkkKHcjKoEDTi4BSG4RdAAkVtbiQtPWPlIjKt3hKPEDTY4BRG4RZAA0XtvzQtjWPPokK2XjKzEjYB4hKt3BTAAUVtfzQtjVPPMlKLcjK4EDTZ4BVG4xZAAkPt3hKt.UPlIlK2XjKoEDTY4BSG4RdAAUVt.kQtjjKt3hKLUjKzDjYg4BTG4haAAUVt.0Qt7VP1gkKp4hKt3hKV4hZG4hbAYWXt3xQt3VP1ElKyXjKqEjKt3hKt3xQt3hKtHlKt3hKtbkKtPjKoEjcg4hcF4RcAYlXtPjKt3hKtvjKDEjKt3hKW4hKD4hZAAUVtf0Qt7VP1gkKTYjK5EDTj4hKG4xZAYVVtXmQtbVP1kkKLcjKA4hKt3BQC4xRt3hKtXWQt3RP1IlK2XjKvDjYg4BTF4hdAAEYt3xQtrVPP4hKt3hK14hcA4hKt3hXA4BTt.0QtrVPPElKtbjK0EDTt3hKt3hctXVPt3hKtHVPt.kKXcjKqEjYh4hcF4hQt3hKtPzPtPmK10jKyHjK24hKM4BVt3hKt3xUt3BQtDSPPkkKHcjKyEjYA4hKt3xctX1RtH1PtPmKPwjKPMjKG4hKt3hcE4hKAY1XtnlQtjWPPokKHYjKA4hKt3hKC4RPt3hKt3hKt3hKl4hKt3hKD0TUR4zZG4hKt3BQW4hKt3hKt3hKD4hKt3hKZk2ZrEVPt3hKt3hKt3hKtL0aPYEQNQCQxrTSKkCbzPiSxgka5YVXA4hKt3hKt3hKQM0ZpMEMA4hKtPjKt3hKtXjKt3hKt3hKt3BT5QURzPkKt3hKtDjKt3hKD4hKt3BTt3hKt3RPt3hKtnVPt3hKP4hKt3hKF4hKt3BVt3hKt3RUtnlQtLWPlgkKHcjKqEDTt3hKt3BRt3hKtXFQtbVPlIlK5YjK0EjYg4hZF4RZA4hKt3hKt3hKtX1JH4hKt3BTt3hKt3RPt3hKtfkKt3hKtDkKTYjK5EDTi4xLF4xZA4hKt3hKt3hKtX1JL4hKt3hYt3hKt3RPt3hKt3lKt3hKlAkKHcjKuEjcY4hYF4hdAYVXtPkQtjWP1IlKt3hKt3hKt3hKy7TPt3hKtvjKt3hKP4hKt3hKG4hKt3BUD4BcAY1Xt3hPtDTPPElKPcjKt3hKt3hKt3hK4LTPt3hKtPjKt3hKD4hKt3hKB4hKt3hUAAUVtXmQtTWP1gkKpYjK5EDTj4hKt3hKt3hKt3xLOUjKt3hKT4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJ0EjKt3hKA4hKt3BRt3hKtXlKt3hKtXTPtXkKD4hKt3hYA4hKt3RPAAUXtbiQt.SPlElKPcjKt3hKt3hKt3hK4jlQt3hKtDjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqrjKt3hKP4hKt3hKD4hKt3hYt3hKt3RUtnlQtLWPlgkKtHjKEEjYg4BVG4RPt3hKtfkKt3hKPAkKPcjK5EDTX4BSF4RbA4hKt3hKt3hKtX1JX4hKt3BTt3hKt3RPt3hKtPkKt3hKtDkKTYjKoEDTX4hZG4hKt3hKt3hKt3RN4EjKt3hKB4hKt3BQt3hKtXWPt3hKtLUPPMlKLcjK5EDTX4hZF4BcA4hKt3hKt3hKtX1Jl4hKt3hct3hKt3RPt3hKtHlKt3hKlQkKTYjKxEDTY4BQF4RdAAUVt3hKt3hKt3hKtLySI4hKt3BTt3hKt.kKt3hKtPjKt3hKh4hKt3BTP4hdF4hcA4BRtPEQtPWPlMlKD4hKt3hcA4hKt3RPA4xXt.0QtbVP1gkKxYjKl4hKt3hKt3hKt3hYqPTPt3hKP4hKt3hKA4hKt3BUt3hKt3RTtPkQtjVPPgkKpcjKt3hKt3hKt3hK4jFQt3hKtHjKt3hKD4hKt3hcA4hKt3xTAA0XtvzQtnWPPgkKpYjKzEjKt3hKt3hKt3hYqvTPt3hK14hKt3hKA4hKt3hXt3hKtXFUtPkQtHWPPkkKDYjK4EDTY4hKt3hKt3hKt3xLOQkKt3hKP4hKt3BTt3hKt3BQt3hKtfkKt3hK1MkKTcjK5EjKh4BUG4hdAAkKt3hKtXjKt3hKXUjK0EjKg4BUG4xbAAUVt3hKt3hKt3hKtLySN4hKt3BQt3hKt.kKt3hKtfjKt3hKXUjKqEjKg4xMF4RZAAkVt.0QtPSPt3hKt3hKt3hKlshKA4hKtXlKt3hKtDjKt3hKp4hKt3hcT4BTG4BdA4BRtHVQt7VPtjkKPcjKtEjKt3hKt3hKt3hYqbiKt3hK14hKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqPjKt3hKD4hKt3hKA4hKt3xPt3hKtXGQtXTP1MkKD4hKt3hKA4hKt3hTAAEVt.0QtrVPt3hKt3hKt3hKlshat3hKt.kKt3hKtDjKt3hKh4hKt3hYU4hZF4BZAYlXtPjQtnWP1ElKt3hKt3hKt3hKy7zRt3hKtfjKt3hKP4hKt3hKF4hKt3BTE4xaAAUXtfjQtfWPPkkKt3hKt3hKt3hKy7DSt3hKtvjKt3hKP4hKt3hKG4hKt3BTE4BdAAUVtnmQtTWPtDlK2XjKt3hKt3hKt3hK4L0Pt3hKtPjKt3hKD4hKt3hKA4hKt3xPt3hKtPDQtfWPtHlKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4LDZt3hKtDjKt3hKD4hKt3hKA4hKt3xTA4xXtPkQtXWPt3hKt3hKt3hKlsBUI4hKtXlKt3hKtDjKt3hKP4hKt3hcQ4BQF4hdAAUVt3hKt3hKt3hKtLySIIjKt3BSt3hKt.kKt3hKtbjKt3hKLUjKtEDTi4BVF4BaA4RXtPkQt3hKt3hKt3hKtjyTo4hKt3BQt3hKtPjKt3hKtDjKt3hKE4hKt3hdD4RcAYlXt3xQt3VPP4hKt3hKA4hKt3hYE4hKt3hKt3hKt3RNSUjKt3hKA4hKt3BQt3hKt.kKt3hKtjUPt3hKt3hKt3hKlsBVA4hKtXlKt3hKtDjKt3hKT4hKt3hYT4xLF4hZA4BRtXVQt3hKt3hKt3hKtjSdE4hKt3xPt3hKtPjKt3hKPEjKt3hKREjYg4BTF4hYt.kUt3hKt3hKt3hKtLySX4hKt3BTt3hKt.kKt3hKtHjKt3hKX4hKt3BTS4BQF4RdA4xXtPkQtfWPP4hKt3hKF4hKt3xMD4BLA4xXt3xQt.SPtLlKt3hKt3hKt3hKy7jdA4hKtPjKt3hKP4hKt3hKE4hKt3hZD4BcA4hXtP0QtnWPt3hKt3hKt3hKlsBUG4hKtXlKt3hKtDjKt3hKH4hKt3BTA4hKt3BTAAkVt.0QtjVPtnkKD4hKt3hKA4hKt3BUAA0XtLiQtrVPt3hKt3hKt3hKlsBVG4hKt.kKt3hKtDjKt3hKp4hKt3hKU4BRG4xYAYVXtvzQtXWP1ElKLcjKqEjKt3hKt3hKt3hYqH1Qt3hKl4hKt3hKA4hKt3BQt3hKtXVPt3hKtTUPlElKpYjK4Ejcg4xLF4RPt3hKtfkKt3hKtDkKTYjK5EDTi4xLF4xZA4hKt3hKt3hKtX1JpcjKt3BTt3hKt3RPt3hKtPjKt3hKPEjKt3hKGEjKg4hZF4hZAAUVtPjKt3hKtDjKt3hKTEDTZ4hdF4xZA4hKt3hKt3hKtX1J2bjKt3BTt3hKt3RPt3hKtfjKt3hK1EjKt3hKQEDTi4BQF4hbAAkVt.0QtPSPP4hKt3hKF4hKt3BQD4BcAAEVtXmQtTWP1kkKt3hKt3hKt3hKy7jKB4hKtPjKt3hKP4hKt3hKG4hKt3BTD4xaAYWVtnlQtnWPPgkK1YjKt3hKt3hKt3hK4LzYt3hKtHjKt3hKD4hKt3hKB4hKt3RQt3hKt.EQtfWPPokKXcjKqEDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOQlKt3hKD4hKt3BTt3hKt3RQt3hKt.EQtfWPPokKXcjKqEjKt3hKt3hKt3hYqbSPt3hKl4hKt3hKA4hKt3BTt3hKt3RUtbiQtPWPPkkKt3hKt3hKt3hKy7jYt3hKtvjKt3hKP4hKt3hKD4hKt3BRD4xYAYmXtvzQt3hKt3hKt3hKtjyTH4hKt3BQt3hKtPjKt3hK1EjKt3hKVEjcg4hcF4BLAAUXtPkQtXlKt3hKt3hKt3hKlsBRB4hKt.UPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrhQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRYt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxSB4hKt3RPt3hKtXlKt3hKtDjKt3hKTEDTi4BRF4xZAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySo4hKt3BQt3hKt.kKt3hKtXjKt3hKXUjK0EjKg4BUG4xbAAUVt3hKt3hKt3hKtLySq4hKt3BRt3hKt.kKt3hKtTjKt3hKPQjK3EDTZ4BVG4xZA4hKt3hKt3hKtX1JPIjKt3hct3hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJD4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJW4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJ0EjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqbjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqjlKt3hKP4hKt3hKH4hKt3hXt3hKtXGTtPjQtfVPPokKyXjKqEjKi4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RNokjKt3hKA4hKt3BQt3hKt3RPt3hKtPUPPQlKtbjKqEjKt3hKt3hKt3hYqHlPt3hKl4hKt3hKA4hKt3BTt3hKtXGUtnlQtTSPPkkKt3hKt3hKt3hKy7jat3hKtvjKt3hKP4hKt3hKC4hKt3BQD4xaAYlXt3hKt3hKt3hKtLySu4hKt3BTt3hKt.kKt3hKtPjKt3hKHQjKmEjch4BSG4hKt3hKt3hKt3RNoojKt3hKE4hKt3BQt3hKtXVPt3hKtPUPlIlKTYjKnEjKg4BUF4hKt3hKt3hKt3RN4ojKt3hKF4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJk4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJOIjKt3hKA4hKt3hYt3hKt3hPt3hKtLUPtnkKTYjKxEjYY4hKB4RQAAEUtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjyPK4hKt3RPt3hKtPjKt3hKtDjKt3hKLEjKT4hKB4BVA4hKt3hKt3hKtX1J5IjKt3hYt3hKt3RPt3hKt.kKt3hKtLkKtTjKl4BTV4hKt3hKt3hKt3xLOQmKt3hKL4hKt3BTt3hKt3BQt3hKtXFQt.UPtfjKlUjKt3hKt3hKt3hK4j2Rt3hKtPjKt3hKD4hKt3hKA4hKt3BRA4BUt3hPtfUPt3hKt3hKt3hKlshKC4hKt.UPt3hKtDjKt3hKX4hKt3hYU4xMF4hbAA0XtnmQtrVPt3hKt3hKt3hKlsBQC4hKtXVPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrxQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRZt3hKt.kKt3hKtfjKt3hKh4hKt3hKT4BUF4xYAYmVt3hPtTTPPQkKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4jFSt3hKtDjKt3hKD4hKt3hKB4hKt3BTAAUVtPjQtDWPtfjKDMjKl4hKV4hKt3hKt3hKt3xLOkmKt3hKH4hKt3BTt3hKt3BRt3hKt3RQtrVPPgkKxYjKl4BTL4hKB4RVA4hKt3hKt3hKtX1JPMjKt3hct3hKt3RPt3hKtXlKt3hKtPkKTYjKmEjcZ4hKB4Bdt3BRtXVQt3hKt3hKt3hKtjSZM4hKt3BQt3hKtPjKt3hKPIjKt3hKPEDTY4BQF4RbA4BRtfzPtXlKPYkKtHjKt3hKt3hKt3hK4jWSt3hKtTjKt3hKD4hKt3hYt3hKt3RTAAESt3hKt3hKt3hKtLySv3hKt3BVt3hKt.kKt3hKtHjKt3hKDUjK34hKt3hKt3hKt3hYqX1Pt3hK1EjKt3hKA4hKt3BVt3hKtXVUtbiQtHWPPMlK5YjKqEjKt3hKt3hKt3hYqn1Pt3hKtHjKt3hKA4hKt3hYt3hKt3hPt3hKtPUPPgkK1YjKwEjKH4hXE4xYA4hVtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjSZN4hKt3RPt3hKtPjKt3hKPEjKt3hKMEjcg4BUG4hdA4hVt3hKt3hKt3hKtLyS13hKt3BRt3hKt.kKt3hKtfjKt3hK5QjK0EjKY4hXG4haAAUVtPkQtHWPt3hKt3hKt3hKlshcC4hKtXmKt3hKtDjKt3hKP4hKt3hcT4hZF4RMAAUVt3hKt3hKt3hKtLyS33hKt3BTt3hKt.kKt3hKtXjKt3hKHQjK3EDTZ4hXF4haA4xXt3hKt3hKt3hKtLyS43hKt3BUt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrRcA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJG4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJo4hKt3BTt3hKt3BRt3hKtfkKt3hKtPkKlYjKmEjch4BUF4BdAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySq3hKt3BQt3hKt.kKt3hKtPjKt3hKHUjKmEjKi4BUF4hKt3hKt3hKt3RNCAkKt3hKB4hKt3BQt3hKtXWPt3hKt3TP1ElKPcjKoEjKZ4BUF4RdA4hKt3hKt3hKtX1JlQjKt3hct3hKt3RPt3hKtPkKt3hK1AkK2XjKxEjcg4BRG4hKt3hKt3hKt3RNSAkKt3hKD4hKt3BQt3hKt.kPt3hKtLUP1MlKTYjKqEjKh4hKB4RSAAkVtLiQt3hKt3hKt3hKtjSdP4hKt3RQt3hKtPjKt3hKPIjKt3hKSEjci4BUF4xZA4hXt3hPtzTPPgkKlcjKt3hKt3hKt3hK4LTTt3hKtXjKt3hKD4hKt3hYA4hKt3hTAYWXt.0QtbVPtLlKTYjKt3hKt3hKt3hK4jFTt3hKtbjKt3hKD4hKt3hcA4hKt3BQAYlXtn1QtTmK1UkKTYjK5EjKt3hKt3hKt3hYqfEQt3hKtHjKt3hKA4hKt3hYt3hKtXWPt3hKtXTPtDlKDYjKzEjcY4BUF4BdAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySIEjKt3BQt3hKt.kKt3hKtPjKt3hKHUjKmEjKi4BUF4hKt3hKt3hKt3RNoIkKt3hKB4hKt3BQt3hKt3RPt3hKtLUPPQlKyXjKoEjKt3hKt3hKt3hYqbCQt3hK14hKt3hKA4hKt3BVt3hKtXGUt.0QtbVPtLlKpYjKoEjKt3hKt3hKt3hYqHGQt3hKtDjKt3hKA4hKt3BUt3hKt3RTtPkQtXWPtLlKlYjKt3hKt3hKt3hK4LzTt3hKtTjKt3hKD4hKt3BTA4hKt3xPAYWXtXmQtTWPlIlKt3hKt3hKt3hKy7TSA4hKtfkKt3hKP4hKt3hKF4hKt3BRE4RcA4xXtPjQtnWPPkkKt3hKt3hKt3hKy7jSA4hKtHlKt3hKP4hKt3hKG4hKt3BTD4BdAAEYtbiPtbUPPkkKPcjKt3hKt3hKt3hK4LEUt3hKtfjKt3hKD4hKt3hKB4hKt3xQt3hKt.UQtfWPPkkK5YjK0EjKg4xMF4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JHUjKt3BTt3hKt3RPt3hKt.kKt3hKlQkKDYjK5EDTY4hKt3hKt3hKt3xLOMUPt3hKH4hKt3BTt3hKt3BQt3hKtvTQtPSPlElKLYjKt3hKt3hKt3hK4LUUt3hKtLjKt3hKD4hKt3BTB4hKt3RRAYVXt.0QtrVPlElKLcjKuEjKi4hZG4hKt3hKt3hKt3RNCUkKt3hKD4hKt3BQt3hKtXVPt3hKtLUPtLlKTYjK3EDTY4xMF4hKt3hKt3hKt3RNoUkKt3hKE4hKt3BQt3hKt.UPt3hKtbUPPokKPYjK5EjKZ4hKt3hKt3hKt3xLOcUPt3hKX4hKt3BTt3hKt3hQt3hKtPDQtnWPtLlKDYjKoEjcZ4hKt3hKt3hKt3xLOgUPt3hKh4hKt3BTt3hKt3RQt3hKt.EQtrVP1gkKDYjKzDjKt3hKt3hKt3hYqnVQt3hKtHjKt3hKA4hKt3hYt3hKtXVPt3hKtHUPPkkKXcjKqEjYh4BRF4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JtUjKt3BTt3hKt3RPt3hKt.kKt3hKtTkKpYjKyEDTY4hKt3hKt3hKt3xLOMVPt3hKH4hKt3BTt3hKt3hQt3hKtfDQtfWPPokKhYjKtEjKi4hKt3hKt3hKt3xLOIVPt3hKL4hKt3BTt3hKt3hQt3hKt.UQtfWPPkkKHYjKxEDTY4hKt3hKt3hKt3xLOQVPt3hKP4hKt3BTt3hKt3xQt3hKt.EQtfWPPQlK2HjKWEDTY4BTG4hKt3hKt3hKt3RN4YkKt3hKE4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJg4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJqDjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqfjKt3hKD4hKt3hKB4hKt3RRt3hKt3RQtjWPPQlKtHjKDEDTY4hcF4xYAAEYtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjSdW4hKt3RPt3hKtPjKt3hKtDjKt3hKTEDTZ4hdF4xZA4hKt3hKt3hKtX1JDYjKt3hYt3hKt3RPt3hKtXlKt3hKlEkKTYjKqEjKY4BRF4xYAYGVtHmQt3hKt3hKt3hKtjyPY4hKt3xPt3hKtPjKt3hK1EjKt3hKREDTY4BVG4xZAYlXtvzQtrVPt3hKt3hKt3hKlsBRF4hKt3RPt3hKtDjKt3hKX4hKt3hcT4BTG4xZAYlXtPkQtTWPt3hKt3hKt3hKlshXF4hKt.UPt3hKtDjKt3hKX4hKt3hKQ4BUF4hdAA0XtLiQtrVPt3hKt3hKt3hKlsBSF4hKtXVPt3hKtDjKt3hKT4hKt3hKT4hZF4hdAYGVtXlQt3hKt3hKt3hKtjyTY4hKt3xQt3hKtPjKt3hK1EjKt3hKDEjYh4hZG4RctXWUtPkQtnWPt3hKt3hKt3hKlshKF4hKt3hPt3hKtDjKt3hKl4hKt3BTB4hKt3xPA4hVtfzQtXlKtDkKTYjKxEDTX4hZG4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1J2XjKt3BTt3hKt3RPt3hKt.kKt3hKtTkKpYjKyEDTY4hKt3hKt3hKt3xLO4VPt3hKH4hKt3BTt3hKt3hQt3hKtXGQtTWPtfjKLQjKvDjKi4hKt3hKt3hKt3xLOMWPt3hKL4hKt3BTt3hKt3hQt3hKtXFQt7VPtfjKLQjKvDjKi4hKt3hKt3hKt3xLOIWPt3hKP4hKt3BTt3hKt3BRt3hKtfEQtrVPPkkKPYjKnEDTX4BSF4RbA4hKt3hKt3hKtX1JxYjKt3BTA4hKt3RPt3hKtXlKt3hKPMkK2XjKpEjKH4BRE4xYA4xXtPkQt3hKt3hKt3hKtjyTh4hKt3hQt3hKtPjKt3hKPIjKt3hKMEjcg4BTF4hYt3RTtPkQtXWPtLlKlYjKt3hKt3hKt3hK4jlVt3hKtbjKt3hKD4hKt3hcA4hKt3BQAYlXtn1QtTmK1UkKTYjK5EjKt3hKt3hKt3hYq3xQt3hKtHjKt3hKA4hKt3hKt3hKt.kKt3hKtPTSUIkSQcjKt3hKtQjKt3hKt3hKtPjKt3hKtnUdqwVXA4hKt3hKt3hKtXFZxjiMEg1UKo1QQsDckYEYmAkTwkkcQ4hKt3hKt3hKtD0Tqo1T5EjKt3BQt3hKtXWUD4hKt3hKt3hKPoGUIQidh4hKt3RPt3hKtXVPt3hKt3hKt3hKD0TUR4TQt3hKt.kKt3hKtDjKt3hKD4hKt3BTtnWNt3hKyDTPt3hYtnWNt3hYA4hKA4hTAMjYwH1azXDTG4BQt.kdtkkXGI2UG8DQSEjQsMFMWMyXRkCRF4RTAgjKL4RTSslZS4RSBMyQL4BTt3hdF4hdFgDRH4BVO4hKX4hK5gjYOYGUPQTS4TyYzLzYS8jTnoUdBA0cTMmVswDSlQlP1IiK5sjYkcWVtzjTt3lMtfEYE4hKE4BdtDjaEMjYP4BRtXlKikWRGIVQmM0TFgCSHsDTtTWZt3hKF4BdAUjKUk0YIcTX4EDUBYjdTgUazX0XyEkKHMET1AUcIIiVC4BdAIjKvDlcAIUPtbyPyHDS14RPA4hKtHDdC4hKJgzQtjiPt3hK3YlXAAUYtjiPt3RLEUjKD4hKtfFTt3hSB4hKtHkKOEDRk4hStrjK4HjKtfGYlMkct3RPtX2TtjiKt3hdDY1Pt3xP5wTdLYyPHwDS18jVrkkQtLVPtMDTtX1JxYGaCIDdE4hKCg0SHY2TFshQHcDRt3zJt3BRkgjcXM1ct.0QtPjKlUlcA4RPtfzTtDCdtDjKHsjKw3hKA4BTK4BQtXFSLgkKtbyPtLlKPMjK43hKtbyPtLlKPMjKL4hKy4haCAkKlshd5cCYtDiPFQUU1g0M4ciSNMDRKYlKlshZqc1L0L0SJIVQHIiPH4hP18VP4ITMB4hKTgkMIY2XyQDQH0FQ2zlKk4hKHczMWYlPPAUZAomKlMUPtXlXDg0PtHjKlMjc1X1Rt3hYOYGQtfSQPMjKtfjYLgDTt3hKhY1MF4BTtTiPtLVPPMjKt3lYLEjc4EjKrYlbt.UYtXlalIlKP4hKt7jYh4hKlEDdt3RPt.UbtnmKlUmcR4BNC4BSBgWRl8TdR4hKZ4VYBoWTt.UQyDibDA0PCQjKt.0RHcTP54hYqb2Zl4hKtDjKL4hYx4hYt3hYt3xPtfjStHzQlQkKH4BTtPzRl4hKl4BdAY1Jt3xPzzDVt3hc4XVUtXmKLA0bt3hKJ4RctLCct3hKT4BcKIiK4bjKtPzLlgkSyjjKtXVUtfVTl4VPXslKB4RPMEjKtfDahITVGA0Pt3BRmgESPcjKNsjKtP1JYEjUVEDRlkzYXomKJEjY4LTP5EjYOIzPGoGVxg0SDsjT3kGTl0TdAolY4QmPmAUY3nDQXwjKjMTSA4hKoU0XtTySDA0PtHzPAMWXA4RNCk2M3MiRl8jPC4BNBA0PtDCStblKPMjKFMjYq.0TlcjKtXFVBEjK2jVVrkkQXMjK4fDSHYlbGUjPy3FSCMyPhYDRtPEQDEzL0AkKQcDRt3BcOwDSpgjYt3xLtfUQl4hK0fkKB4xLyXmKHkVTtHlPC4hKFIDazcFSFY1PtnVUlcDQCYFSFMiK5QzLJIDTAMkKt3xctXmSlkVPr4xLAgzYtnmKlIjKtnVPB4hPt3hKPEjVCYVat3xQDklPsMiTPojYSgjKqEDRv4BdJYlMC4hKh4xLEIFQHoUPjAUXAQWTt3hcqXVYA4hRy4lKtXlYLAmaX4RLHkFRJIjKOglZnkjTH4hK1sjZXgUXHcjPygDRS4BZtXFatfjQtflKtDTPHIiKZIjYGA0Ql4hK1MkKP4hKs4BRt3RMDYlKt3VRtPlK24hPDYFRt.ETtPlKOEjPrYlS2kzJAokPwgDQtkDQnYlYr4BRt3hVBYVXyLkY0QjKtPTPtQUS1oEcEwFVm4lPy3hKP4hKB4BRt3BTFEzXtfjKLYGV5QiUZwTRX4RThIDRL4hPt.mTRI0LD4haBkTND8DQtLlKHQlK1omZDY1S2ojYx7jKl0lRtnTZ43RdqY0XskDQI4hYzMiPXQjKvQDdq3hZAgzPLIjTl0jcHIjPF4xQhYjX50jUVQELTEkK2YmPMgjUYUjQt3hKt3hKt3hKtDjKt3hKt.kKt3hKt3hKt3hKtvyKIMzasA2atUlaz4COIUDYoQ2Pu4Fcx8FarUlb9.iK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FM8",
									"origin" : "FM8.vst3",
									"type" : "VST3",
									"subtype" : "Instrument",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "FM8.vst3",
										"plugindisplayname" : "FM8",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "11248.VMjLgb9J...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fyLxLiKCIjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3hMsclcuwzLKI0T5clc2.2Q0czUqEVXI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKtbWNA4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKs4hR0EycQQkTnQEcVcWM3X0cp0TNwXjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtfjKt3hKD4hKt3hYB4hKt3xctX1RtfzPtPmKtvjKyHjK24hKL4BQC4hct.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKt3hdt3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hKTYWPrgCLhIUT3AER3gkSGQyRzTSNLQzPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3BTB4hKt3xPA4hVtPjQtLWPtHlKDYjKsEjYg4BUF4BRt3hKt.0QtbVP1IlK5YjK0EjKY4hZF4xYAYFQt3hKt3TPPgkKPcjKuEjYi4BUF4hYt.kTtLiQtjWPtLlKHcjKvDDTg4BUF4BcA4xXtvzQtPTPt3hKXUjKqEjKg4xMF4RZAAkVt.0QtPSPtfjK5IjKl4hYQ4hZF4hbA4xXtPkQtfWPtfjKLQjKvDjKi4xMF4BaAYVVt3lKtzTP1ElKPYjKxDjKZ4BUF4xZA4RXt3hPtLmKtfjKXQjKuEjKg4BTG4xZAYlXt3hPtDmKtfjK2PjK1EDTY4BRG4xYA4xXtbiQtfWPtfjKTQjKl4hcJ4hKB4BTAAkVt.0QtjVPtnkKtHjKLEjYQ4xMD4hRt3hKt3hKtrxJqrxJC4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKA4hKt3BQt3hKtXlKt3hKtLjKt3hKXQjKMEjKN4BQA4hKt3RUtfzQtbVPlElKLcjKuEDTY4xLF4hdA4BRtPDQtnWPtLlKDYjKoEjcZ4BSG4xQt3hKtfTPt3hKPMkKDYjKxEjKg4BUF4hdA4BRtnFQtPWP1IlKPcjK3EDTi4hdF4xZAYVXt.0QtjWPtPjKt3hKOEjKi4hYF4xZAYlXt3hPt.UPPkkKHcjKoEDTi4BSG4RdAAkVtbiQtPWPlIjKt3hKPEDTY4BRG4RZAA0XtvzQtjWPPokK2XjKzEjYB4hKt3BTAAUVtfzQtjVPPMlKLcjK4EDTZ4BVG4xZAAkPt3hKt.UPlIlK2XjKoEDTY4BSG4RdAAUVt.kQtjjKt3hKLUjKzDjYg4BTG4haAAUVt.0Qt7VP1gkKp4hKt3hKV4hZG4hbAYWXt3xQt3VP1ElKyXjKqEjKt3hKt3xQt3hKtHlKt3hKtbkKtPjKoEjcg4hcF4RcAYlXtPjKt3hKtvjKDEjKt3hKW4hKD4hZAAUVtf0Qt7VP1gkKTYjK5EDTj4hKG4xZAYVVtXmQtbVP1kkKLcjKA4hKt3BQC4xRt3hKtXWQt3RP1IlK2XjKvDjYg4BTF4hdAAEYt3xQtrVPP4hKt3hK14hcA4hKt3hXA4BTt.0QtrVPPElKtbjK0EDTt3hKt3hctXVPt3hKtHVPt.kKXcjKqEjYh4hcF4hQt3hKtPzPtPmK10jKyHjK24hKM4BVt3hKt3xUt3BQtDSPPkkKHcjKyEjYA4hKt3xctX1RtH1PtPmKPwjKPMjKG4hKt3hcE4hKAY1XtnlQtjWPPokKHYjKA4hKt3hKC4RPt3hKt3hKt3hKl4hKt3hKD0TUR4zZG4hKt3BQW4hKt3hKt3hKD4hKt3hKZk2ZrEVPt3hKt3hKt3hKtL0aPYEQNQCQxrTSKkCbzPiSxgka5YVXA4hKt3hKt3hKQM0ZpMEMA4hKtPjKt3hKtXjKt3hKt3hKt3BT5QURzPkKt3hKtDjKt3hKD4hKt3BTt3hKt3RPt3hKtnVPt3hKP4hKt3hKF4hKt3BVt3hKt3RUtnlQtLWPlgkKHcjKqEDTt3hKt3BRt3hKtXFQtbVPlIlK5YjK0EjYg4hZF4RZA4hKt3hKt3hKtX1JH4hKt3BTt3hKt3RPt3hKtfkKt3hKtDkKTYjK5EDTi4xLF4xZA4hKt3hKt3hKtX1JL4hKt3hYt3hKt3RPt3hKt3lKt3hKlAkKHcjKuEjcY4hYF4hdAYVXtPkQtjWP1IlKt3hKt3hKt3hKy7TPt3hKtvjKt3hKP4hKt3hKG4hKt3BUD4BcAY1Xt3hPtDTPPElKPcjKt3hKt3hKt3hK4LTPt3hKtPjKt3hKD4hKt3hKB4hKt3hUAAUVtXmQtTWP1gkKpYjK5EDTj4hKt3hKt3hKt3xLOUjKt3hKT4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJ0EjKt3hKA4hKt3BRt3hKtXlKt3hKtXTPtXkKD4hKt3hYA4hKt3RPAAUXtbiQt.SPlElKPcjKt3hKt3hKt3hK4jlQt3hKtDjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqrjKt3hKP4hKt3hKD4hKt3hYt3hKt3RUtnlQtLWPlgkKtHjKEEjYg4BVG4RPt3hKtfkKt3hKPAkKPcjK5EDTX4BSF4RbA4hKt3hKt3hKtX1JX4hKt3BTt3hKt3RPt3hKtPkKt3hKtDkKTYjKoEDTX4hZG4hKt3hKt3hKt3RN4EjKt3hKB4hKt3BQt3hKtXWPt3hKtLUPPMlKLcjK5EDTX4hZF4BcA4hKt3hKt3hKtX1Jl4hKt3hct3hKt3RPt3hKtHlKt3hKlQkKTYjKxEDTY4BQF4RdAAUVt3hKt3hKt3hKtLySI4hKt3BTt3hKt.kKt3hKtPjKt3hKh4hKt3BTP4hdF4hcA4BRtPEQtPWPlMlKD4hKt3hcA4hKt3RPA4xXt.0QtbVP1gkKxYjKl4hKt3hKt3hKt3hYqPTPt3hKP4hKt3hKA4hKt3BUt3hKt3RTtPkQtjVPPgkKpcjKt3hKt3hKt3hK4jFQt3hKtHjKt3hKD4hKt3hcA4hKt3xTAA0XtvzQtnWPPgkKpYjKzEjKt3hKt3hKt3hYqvTPt3hK14hKt3hKA4hKt3hXt3hKtXFUtPkQtHWPPkkKDYjK4EDTY4hKt3hKt3hKt3xLOQkKt3hKP4hKt3BTt3hKt3BQt3hKtfkKt3hK1MkKTcjK5EjKh4BUG4hdAAkKt3hKtXjKt3hKXUjK0EjKg4BUG4xbAAUVt3hKt3hKt3hKtLySN4hKt3BQt3hKt.kKt3hKtfjKt3hKXUjKqEjKg4xMF4RZAAkVt.0QtPSPt3hKt3hKt3hKlshKA4hKtXlKt3hKtDjKt3hKp4hKt3hcT4BTG4BdA4BRtHVQt7VPtjkKPcjKtEjKt3hKt3hKt3hYqbiKt3hK14hKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqPjKt3hKD4hKt3hKA4hKt3xPt3hKtXGQtXTP1MkKD4hKt3hKA4hKt3hTAAEVt.0QtrVPt3hKt3hKt3hKlshat3hKt.kKt3hKtDjKt3hKh4hKt3hYU4hZF4BZAYlXtPjQtnWP1ElKt3hKt3hKt3hKy7zRt3hKtfjKt3hKP4hKt3hKF4hKt3BTE4xaAAUXtfjQtfWPPkkKt3hKt3hKt3hKy7DSt3hKtvjKt3hKP4hKt3hKG4hKt3BTE4BdAAUVtnmQtTWPtDlK2XjKt3hKt3hKt3hK4L0Pt3hKtPjKt3hKD4hKt3hKA4hKt3xPt3hKtPDQtfWPtHlKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4LDZt3hKtDjKt3hKD4hKt3hKA4hKt3xTA4xXtPkQtXWPt3hKt3hKt3hKlsBUI4hKtXlKt3hKtDjKt3hKP4hKt3hcQ4BQF4hdAAUVt3hKt3hKt3hKtLySIIjKt3BSt3hKt.kKt3hKtbjKt3hKLUjKtEDTi4BVF4BaA4RXtPkQt3hKt3hKt3hKtjyTo4hKt3BQt3hKtPjKt3hKtDjKt3hKE4hKt3hdD4RcAYlXt3xQt3VPP4hKt3hKA4hKt3hYE4hKt3hKt3hKt3RNSUjKt3hKA4hKt3BQt3hKt.kKt3hKtjUPt3hKt3hKt3hKlsBVA4hKtXlKt3hKtDjKt3hKT4hKt3hYT4xLF4hZA4BRtXVQt3hKt3hKt3hKtjSdE4hKt3xPt3hKtPjKt3hKPEjKt3hKREjYg4BTF4hYt.kUt3hKt3hKt3hKtLySX4hKt3BTt3hKt.kKt3hKtHjKt3hKX4hKt3BTS4BQF4RdA4xXtPkQtfWPP4hKt3hKF4hKt3xMD4BLA4xXt3xQt.SPtLlKt3hKt3hKt3hKy7jdA4hKtPjKt3hKP4hKt3hKE4hKt3hZD4BcA4hXtP0QtnWPt3hKt3hKt3hKlsBUG4hKtXlKt3hKtDjKt3hKH4hKt3BTA4hKt3BTAAkVt.0QtjVPtnkKD4hKt3hKA4hKt3BUAA0XtLiQtrVPt3hKt3hKt3hKlsBVG4hKt.kKt3hKtDjKt3hKp4hKt3hKU4BRG4xYAYVXtvzQtXWP1ElKLcjKqEjKt3hKt3hKt3hYqH1Qt3hKl4hKt3hKA4hKt3BQt3hKtXVPt3hKtTUPlElKpYjK4Ejcg4xLF4RPt3hKtfkKt3hKtDkKTYjK5EDTi4xLF4xZA4hKt3hKt3hKtX1JpcjKt3BTt3hKt3RPt3hKtPjKt3hKPEjKt3hKGEjKg4hZF4hZAAUVtPjKt3hKtDjKt3hKTEDTZ4hdF4xZA4hKt3hKt3hKtX1J2bjKt3BTt3hKt3RPt3hKtfjKt3hK1EjKt3hKQEDTi4BQF4hbAAkVt.0QtPSPP4hKt3hKF4hKt3BQD4BcAAEVtXmQtTWP1kkKt3hKt3hKt3hKy7jKB4hKtPjKt3hKP4hKt3hKG4hKt3BTD4xaAYWVtnlQtnWPPgkK1YjKt3hKt3hKt3hK4LzYt3hKtHjKt3hKD4hKt3hKB4hKt3RQt3hKt.EQtfWPPokKXcjKqEDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOQlKt3hKD4hKt3BTt3hKt3RQt3hKt.EQtfWPPokKXcjKqEjKt3hKt3hKt3hYqbSPt3hKl4hKt3hKA4hKt3BTt3hKt3RUtbiQtPWPPkkKt3hKt3hKt3hKy7jYt3hKtvjKt3hKP4hKt3hKD4hKt3BRD4xYAYmXtvzQt3hKt3hKt3hKtjyTH4hKt3BQt3hKtPjKt3hK1EjKt3hKVEjcg4hcF4BLAAUXtPkQtXlKt3hKt3hKt3hKlsBRB4hKt.UPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrhQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRYt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxSB4hKt3RPt3hKtXlKt3hKtDjKt3hKTEDTi4BRF4xZAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySo4hKt3BQt3hKt.kKt3hKtXjKt3hKXUjK0EjKg4BUG4xbAAUVt3hKt3hKt3hKtLySq4hKt3BRt3hKt.kKt3hKtTjKt3hKPQjK3EDTZ4BVG4xZA4hKt3hKt3hKtX1JPIjKt3hct3hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJD4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJW4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJ0EjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqbjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqjlKt3hKP4hKt3hKH4hKt3hXt3hKtXGTtPjQtfVPPokKyXjKqEjKi4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RNokjKt3hKA4hKt3BQt3hKt3RPt3hKtPUPPQlKtbjKqEjKt3hKt3hKt3hYqHlPt3hKl4hKt3hKA4hKt3BTt3hKtXGUtnlQtTSPPkkKt3hKt3hKt3hKy7jat3hKtvjKt3hKP4hKt3hKC4hKt3BQD4xaAYlXt3hKt3hKt3hKtLySu4hKt3BTt3hKt.kKt3hKtPjKt3hKHQjKmEjch4BSG4hKt3hKt3hKt3RNoojKt3hKE4hKt3BQt3hKtXVPt3hKtPUPlIlKTYjKnEjKg4BUF4hKt3hKt3hKt3RN4ojKt3hKF4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJk4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJOIjKt3hKA4hKt3hYt3hKt3hPt3hKtLUPtnkKTYjKxEjYY4hKB4RQAAEUtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjyPK4hKt3RPt3hKtPjKt3hKtDjKt3hKLEjKT4hKB4BVA4hKt3hKt3hKtX1J5IjKt3hYt3hKt3RPt3hKt.kKt3hKtLkKtTjKl4BTV4hKt3hKt3hKt3xLOQmKt3hKL4hKt3BTt3hKt3BQt3hKtXFQt.UPtfjKlUjKt3hKt3hKt3hK4j2Rt3hKtPjKt3hKD4hKt3hKA4hKt3BRA4BUt3hPtfUPt3hKt3hKt3hKlshKC4hKt.UPt3hKtDjKt3hKX4hKt3hYU4xMF4hbAA0XtnmQtrVPt3hKt3hKt3hKlsBQC4hKtXVPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrxQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRZt3hKt.kKt3hKtfjKt3hKh4hKt3hKT4BUF4xYAYmVt3hPtTTPPQkKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4jFSt3hKtDjKt3hKD4hKt3hKB4hKt3BTAAUVtPjQtDWPtfjKDMjKl4hKV4hKt3hKt3hKt3xLOkmKt3hKH4hKt3BTt3hKt3BRt3hKt3RQtrVPPgkKxYjKl4BTL4hKB4RVA4hKt3hKt3hKtX1JPMjKt3hct3hKt3RPt3hKtXlKt3hKtPkKTYjKmEjcZ4hKB4Bdt3BRtXVQt3hKt3hKt3hKtjSZM4hKt3BQt3hKtPjKt3hKPIjKt3hKPEDTY4BQF4RbA4BRtfzPtXlKPYkKtHjKt3hKt3hKt3hK4jWSt3hKtTjKt3hKD4hKt3hYt3hKt3RTAAESt3hKt3hKt3hKtLySv3hKt3BVt3hKt.kKt3hKtHjKt3hKDUjK34hKt3hKt3hKt3hYqX1Pt3hK1EjKt3hKA4hKt3BVt3hKtXVUtbiQtHWPPMlK5YjKqEjKt3hKt3hKt3hYqn1Pt3hKtHjKt3hKA4hKt3hYt3hKt3hPt3hKtPUPPgkK1YjKwEjKH4hXE4xYA4hVtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjSZN4hKt3RPt3hKtPjKt3hKPEjKt3hKMEjcg4BUG4hdA4hVt3hKt3hKt3hKtLyS13hKt3BRt3hKt.kKt3hKtfjKt3hK5QjK0EjKY4hXG4haAAUVtPkQtHWPt3hKt3hKt3hKlshcC4hKtXmKt3hKtDjKt3hKP4hKt3hcT4hZF4RMAAUVt3hKt3hKt3hKtLyS33hKt3BTt3hKt.kKt3hKtXjKt3hKHQjK3EDTZ4hXF4haA4xXt3hKt3hKt3hKtLyS43hKt3BUt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrRcA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJG4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJo4hKt3BTt3hKt3BRt3hKtfkKt3hKtPkKlYjKmEjch4BUF4BdAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySq3hKt3BQt3hKt.kKt3hKtPjKt3hKHUjKmEjKi4BUF4hKt3hKt3hKt3RNCAkKt3hKB4hKt3BQt3hKtXWPt3hKt3TP1ElKPcjKoEjKZ4BUF4RdA4hKt3hKt3hKtX1JlQjKt3hct3hKt3RPt3hKtPkKt3hK1AkK2XjKxEjcg4BRG4hKt3hKt3hKt3RNSAkKt3hKD4hKt3BQt3hKt.kPt3hKtLUP1MlKTYjKqEjKh4hKB4RSAAkVtLiQt3hKt3hKt3hKtjSdP4hKt3RQt3hKtPjKt3hKPIjKt3hKSEjci4BUF4xZA4hXt3hPtzTPPgkKlcjKt3hKt3hKt3hK4LTTt3hKtXjKt3hKD4hKt3hYA4hKt3hTAYWXt.0QtbVPtLlKTYjKt3hKt3hKt3hK4jFTt3hKtbjKt3hKD4hKt3hcA4hKt3BQAYlXtn1QtTmK1UkKTYjK5EjKt3hKt3hKt3hYqfEQt3hKtHjKt3hKA4hKt3hYt3hKtXWPt3hKtXTPtDlKDYjKzEjcY4BUF4BdAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySIEjKt3BQt3hKt.kKt3hKtPjKt3hKHUjKmEjKi4BUF4hKt3hKt3hKt3RNoIkKt3hKB4hKt3BQt3hKt3RPt3hKtLUPPQlKyXjKoEjKt3hKt3hKt3hYqbCQt3hK14hKt3hKA4hKt3BVt3hKtXGUt.0QtbVPtLlKpYjKoEjKt3hKt3hKt3hYqHGQt3hKtDjKt3hKA4hKt3BUt3hKt3RTtPkQtXWPtLlKlYjKt3hKt3hKt3hK4LzTt3hKtTjKt3hKD4hKt3BTA4hKt3xPAYWXtXmQtTWPlIlKt3hKt3hKt3hKy7TSA4hKtfkKt3hKP4hKt3hKF4hKt3BRE4RcA4xXtPjQtnWPPkkKt3hKt3hKt3hKy7jSA4hKtHlKt3hKP4hKt3hKG4hKt3BTD4BdAAEYtbiPtbUPPkkKPcjKt3hKt3hKt3hK4LEUt3hKtfjKt3hKD4hKt3hKB4hKt3xQt3hKt.UQtfWPPkkK5YjK0EjKg4xMF4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JHUjKt3BTt3hKt3RPt3hKt.kKt3hKlQkKDYjK5EDTY4hKt3hKt3hKt3xLOMUPt3hKH4hKt3BTt3hKt3BQt3hKtvTQtPSPlElKLYjKt3hKt3hKt3hK4LUUt3hKtLjKt3hKD4hKt3BTB4hKt3RRAYVXt.0QtrVPlElKLcjKuEjKi4hZG4hKt3hKt3hKt3RNCUkKt3hKD4hKt3BQt3hKtXVPt3hKtLUPtLlKTYjK3EDTY4xMF4hKt3hKt3hKt3RNoUkKt3hKE4hKt3BQt3hKt.UPt3hKtbUPPokKPYjK5EjKZ4hKt3hKt3hKt3xLOcUPt3hKX4hKt3BTt3hKt3hQt3hKtPDQtnWPtLlKDYjKoEjcZ4hKt3hKt3hKt3xLOgUPt3hKh4hKt3BTt3hKt3RQt3hKt.EQtrVP1gkKDYjKzDjKt3hKt3hKt3hYqnVQt3hKtHjKt3hKA4hKt3hYt3hKtXVPt3hKtHUPPkkKXcjKqEjYh4BRF4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JtUjKt3BTt3hKt3RPt3hKt.kKt3hKtTkKpYjKyEDTY4hKt3hKt3hKt3xLOMVPt3hKH4hKt3BTt3hKt3hQt3hKtfDQtfWPPokKhYjKtEjKi4hKt3hKt3hKt3xLOIVPt3hKL4hKt3BTt3hKt3hQt3hKt.UQtfWPPkkKHYjKxEDTY4hKt3hKt3hKt3xLOQVPt3hKP4hKt3BTt3hKt3xQt3hKt.EQtfWPPQlK2HjKWEDTY4BTG4hKt3hKt3hKt3RN4YkKt3hKE4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJg4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJqDjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqfjKt3hKD4hKt3hKB4hKt3RRt3hKt3RQtjWPPQlKtHjKDEDTY4hcF4xYAAEYtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjSdW4hKt3RPt3hKtPjKt3hKtDjKt3hKTEDTZ4hdF4xZA4hKt3hKt3hKtX1JDYjKt3hYt3hKt3RPt3hKtXlKt3hKlEkKTYjKqEjKY4BRF4xYAYGVtHmQt3hKt3hKt3hKtjyPY4hKt3xPt3hKtPjKt3hK1EjKt3hKREDTY4BVG4xZAYlXtvzQtrVPt3hKt3hKt3hKlsBRF4hKt3RPt3hKtDjKt3hKX4hKt3hcT4BTG4xZAYlXtPkQtTWPt3hKt3hKt3hKlshXF4hKt.UPt3hKtDjKt3hKX4hKt3hKQ4BUF4hdAA0XtLiQtrVPt3hKt3hKt3hKlsBSF4hKtXVPt3hKtDjKt3hKT4hKt3hKT4hZF4hdAYGVtXlQt3hKt3hKt3hKtjyTY4hKt3xQt3hKtPjKt3hK1EjKt3hKDEjYh4hZG4RctXWUtPkQtnWPt3hKt3hKt3hKlshKF4hKt3hPt3hKtDjKt3hKl4hKt3BTB4hKt3xPA4hVtfzQtXlKtDkKTYjKxEDTX4hZG4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1J2XjKt3BTt3hKt3RPt3hKt.kKt3hKtTkKpYjKyEDTY4hKt3hKt3hKt3xLO4VPt3hKH4hKt3BTt3hKt3hQt3hKtXGQtTWPtfjKLQjKvDjKi4hKt3hKt3hKt3xLOMWPt3hKL4hKt3BTt3hKt3hQt3hKtXFQt7VPtfjKLQjKvDjKi4hKt3hKt3hKt3xLOIWPt3hKP4hKt3BTt3hKt3BRt3hKtfEQtrVPPkkKPYjKnEDTX4BSF4RbA4hKt3hKt3hKtX1JxYjKt3BTA4hKt3RPt3hKtXlKt3hKPMkK2XjKpEjKH4BRE4xYA4xXtPkQt3hKt3hKt3hKtjyTh4hKt3hQt3hKtPjKt3hKPIjKt3hKMEjcg4BTF4hYt3RTtPkQtXWPtLlKlYjKt3hKt3hKt3hK4jlVt3hKtbjKt3hKD4hKt3hcA4hKt3BQAYlXtn1QtTmK1UkKTYjK5EjKt3hKt3hKt3hYq3xQt3hKtHjKt3hKA4hKt3hKt3hKt.kKt3hKtPTSUIkSQcjKt3hKtQjKt3hKt3hKtPjKt3hKtnUdqwVXA4hKt3hKt3hKtXFZxjiMEg1UKo1QQsDckYEYmAkTwkkcQ4hKt3hKt3hKtD0Tqo1T5EjKt3BQt3hKtXWUD4hKt3hKt3hKPoGUIQidh4hKt3RPt3hKtXVPt3hKt3hKt3hKD0TUR4TQt3hKt.kKt3hKtDjKt3hKD4hKt3BTtnWNt3hKyDTPt3hYtnWNt3hYA4hKA4hTAMjYwH1azXDTG4BQt.kdtkkXGI2UG8DQSEjQsMFMWMyXRkCRF4RTAgjKL4RTSslZS4RSBMyQL4BTt3hdF4hdFgDRH4BVO4hKX4hK5gjYOYGUPQTS4TyYzLzYS8jTnoUdBA0cTMmVswDSlQlP1IiK5sjYkcWVtzjTt3lMtfEYE4hKE4BdtDjaEMjYP4BRtXlKikWRGIVQmM0TFgCSHsDTtTWZt3hKF4BdAUjKUk0YIcTX4EDUBYjdTgUazX0XyEkKHMET1AUcIIiVC4BdAIjKvDlcAIUPtbyPyHDS14RPA4hKtHDdC4hKJgzQtjiPt3hK3YlXAAUYtjiPt3RLEUjKD4hKtfFTt3hSB4hKtHkKOEDRk4hStrjK4HjKtfGYlMkct3RPtX2TtjiKt3hdDY1Pt3xP5wTdLYyPHwDS18jVrkkQtLVPtMDTtX1JxYGaCIDdE4hKCg0SHY2TFshQHcDRt3zJt3BRkgjcXM1ct.0QtPjKlUlcA4RPtfzTtDCdtDjKHsjKw3hKA4BTK4BQtXFSLgkKtbyPtLlKPMjK43hKtbyPtLlKPMjKL4hKy4haCAkKlshd5cCYtDiPFQUU1g0M4ciSNMDRKYlKlshZqc1L0L0SJIVQHIiPH4hP18VP4ITMB4hKTgkMIY2XyQDQH0FQ2zlKk4hKHczMWYlPPAUZAomKlMUPtXlXDg0PtHjKlMjc1X1Rt3hYOYGQtfSQPMjKtfjYLgDTt3hKhY1MF4BTtTiPtLVPPMjKt3lYLEjc4EjKrYlbt.UYtXlalIlKP4hKt7jYh4hKlEDdt3RPt.UbtnmKlUmcR4BNC4BSBgWRl8TdR4hKZ4VYBoWTt.UQyDibDA0PCQjKt.0RHcTP54hYqb2Zl4hKtDjKL4hYx4hYt3hYt3xPtfjStHzQlQkKH4BTtPzRl4hKl4BdAY1Jt3xPzzDVt3hc4XVUtXmKLA0bt3hKJ4RctLCct3hKT4BcKIiK4bjKtPzLlgkSyjjKtXVUtfVTl4VPXslKB4RPMEjKtfDahITVGA0Pt3BRmgESPcjKNsjKtP1JYEjUVEDRlkzYXomKJEjY4LTP5EjYOIzPGoGVxg0SDsjT3kGTl0TdAolY4QmPmAUY3nDQXwjKjMTSA4hKoU0XtTySDA0PtHzPAMWXA4RNCk2M3MiRl8jPC4BNBA0PtDCStblKPMjKFMjYq.0TlcjKtXFVBEjK2jVVrkkQXMjK4fDSHYlbGUjPy3FSCMyPhYDRtPEQDEzL0AkKQcDRt3BcOwDSpgjYt3xLtfUQl4hK0fkKB4xLyXmKHkVTtHlPC4hKFIDazcFSFY1PtnVUlcDQCYFSFMiK5QzLJIDTAMkKt3xctXmSlkVPr4xLAgzYtnmKlIjKtnVPB4hPt3hKPEjVCYVat3xQDklPsMiTPojYSgjKqEDRv4BdJYlMC4hKh4xLEIFQHoUPjAUXAQWTt3hcqXVYA4hRy4lKtXlYLAmaX4RLHkFRJIjKOglZnkjTH4hK1sjZXgUXHcjPygDRS4BZtXFatfjQtflKtDTPHIiKZIjYGA0Ql4hK1MkKP4hKs4BRt3RMDYlKt3VRtPlK24hPDYFRt.ETtPlKOEjPrYlS2kzJAokPwgDQtkDQnYlYr4BRt3hVBYVXyLkY0QjKtPTPtQUS1oEcEwFVm4lPy3hKP4hKB4BRt3BTFEzXtfjKLYGV5QiUZwTRX4RThIDRL4hPt.mTRI0LD4haBkTND8DQtLlKHQlK1omZDY1S2ojYx7jKl0lRtnTZ43RdqY0XskDQI4hYzMiPXQjKvQDdq3hZAgzPLIjTl0jcHIjPF4xQhYjX50jUVQELTEkK2YmPMgjUYUjQt3hKt3hKt3hKtDjKt3hKt.kKt3hKt3hKt3hKtvyKIMzasA2atUlaz4COIUDYoQ2Pu4Fcx8FarUlb9.iK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
									}
,
									"fileref" : 									{
										"name" : "FM8",
										"filename" : "FM8.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "ea4793d9a7e1f016be258b67d21a515a"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FM8",
									"origin" : "FM8.vst3",
									"type" : "VST3",
									"subtype" : "Instrument",
									"embed" : 0,
									"fileref" : 									{
										"name" : "FM8",
										"filename" : "FM8_20260930.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "74f1393ac7e532cceedc168b9de7bc98"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 2 2 @autosave 1",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-230",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3850.0, 530.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 328.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-231",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 64.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.0, 330.0, 64.0, 19.0 ],
					"text" : "load synth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-232",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 3890.0, 530.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 116.0, 328.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-233",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 30.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 332.0, 30.0, 17.0 ],
					"text" : "show"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-234",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3850.0, 500.0, 44.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-235",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3900.0, 500.0, 44.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.96, 0.96, 0.95, 1.0 ],
					"id" : "obj-236",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 296.0, 254.0, 118.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 270.0, 296.0, 254.0, 118.0 ],
					"rounded" : 6
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.72, 0.58, 0.9, 1.0 ],
					"id" : "obj-237",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 296.0, 254.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 270.0, 296.0, 254.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 13.0,
					"id" : "obj-238",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 296.0, 244.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 276.0, 298.0, 242.0, 21.0 ],
					"text" : "VOICE 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-239",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 4220.0, 40.0, 219.0, 22.0 ],
					"text" : "route speed octave load write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-240",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 4220.0, 140.0, 58.0, 22.0 ],
					"text" : "f 1024"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-241",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 4220.0, 170.0, 44.0, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-242",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4280.0, 140.0, 100.0, 22.0 ],
					"text" : "r chain_pace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-243",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 4220.0, 200.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-244",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4220.0, 230.0, 107.0, 22.0 ],
					"text" : "prepend start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-245",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "" ],
					"patching_rect" : [ 4220.0, 260.0, 40.0, 22.0 ],
					"text" : "seq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-246",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "bang" ],
					"patching_rect" : [ 4350.0, 80.0, 65.0, 22.0 ],
					"text" : "t b s b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-247",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4480.0, 110.0, 44.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-248",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4530.0, 110.0, 51.0, 22.0 ],
					"text" : "panic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-249",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4400.0, 110.0, 100.0, 22.0 ],
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-250",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4600.0, 200.0, 107.0, 22.0 ],
					"text" : "prepend write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-251",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 4320.0, 300.0, 51.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-252",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4400.0, 330.0, 65.0, 22.0 ],
					"text" : "ended 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-253",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4400.0, 360.0, 135.0, 22.0 ],
					"text" : "s chain_to_engine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-254",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 4320.0, 330.0, 79.0, 22.0 ],
					"text" : "delay 150"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-255",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4260.0, 330.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 482.0, 360.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-256",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4260.0, 300.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-257",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 40.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 478.0, 384.0, 40.0, 18.0 ],
					"text" : "loop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-258",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4320.0, 360.0, 72.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-259",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 4220.0, 400.0, 79.0, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-260",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4220.0, 430.0, 130.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "chain_shaper.js",
						"parameter_enable" : 0
					}
,
					"text" : "js chain_shaper.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-261",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4420.0, 400.0, 114.0, 22.0 ],
					"text" : "prepend octave"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-262",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4550.0, 400.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 472.0, 328.0, 40.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-263",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 28.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 442.0, 330.0, 28.0, 18.0 ],
					"text" : "oct"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-264",
					"items" : [ "off", ",", "minpent", ",", "dorian", ",", "wholetone", ",", "major" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4420.0, 460.0, 90.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 322.0, 362.0, 90.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-265",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4420.0, 430.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-266",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4420.0, 490.0, 107.0, 22.0 ],
					"text" : "prepend scale"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-267",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 40.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 282.0, 364.0, 40.0, 18.0 ],
					"text" : "scale"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-268",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 4540.0, 460.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 420.0, 358.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 100 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "v2_keep",
							"parameter_mmax" : 100.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "keep %",
							"parameter_type" : 0,
							"parameter_unitstyle" : 5
						}

					}
,
					"varname" : "v2_keep"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-269",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4540.0, 520.0, 100.0, 22.0 ],
					"text" : "prepend keep"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-270",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4480.0, 80.0, 107.0, 22.0 ],
					"text" : "r chain_panic"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-271",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 4220.0, 560.0, 125.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, 2, "@autosave", 1, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[1]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "FM8.vst3",
							"plugindisplayname" : "FM8",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "11168.VMjLgb4J...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fiL1LiKGEjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3xRNMiXvUCUhoWNDgVTP8DN4TibXMVVI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKt.CNA4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKqHGbXUkdYMCZqPUa0ISUGQlUtQiS5YjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtfjKt3hKD4hKt3hYB4hKt3xctX1RtfzPtPmKtvjKyHjK24hKL4BQC4hct.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKtLiZt3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hK5YGMJIlXTwzX3EEM0fzJ2wlcx8VTscjPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3hKA4hKt3BTAAUVtfzQtjVPtPjKt3hKMEDTX4BRG4hdAAkVtLiQtXlKlAkKHcjKuEjYg4hbF4xbAAEVtLiQtPWPlQjKt3hKNEDTX4BTG4xaAY1XtPkQtXlKPIkKyXjK4EjKi4BRG4BLAAUXtPkQtPWPtLlKLcjKt3hKt3hKt3hKtX2JqrxJq3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKP4hKt3hKA4hKt3BRt3hKtXmKt3hKtXTPPMkKlMjKJ4hKt3BVD4RSAYWSt3hPtvTPPkkKhYjKmEjcX4hZG4BQt3hKt3lKt3hKtPkKTYjK3EjcX4BUG4RdAYmXtnlQtTWPlElKt4hKt3hKT4BUF4BdAYGVtP0QtjWP1IlKpYjKwDDTY4hZt3hKt3BUtfzQtTWP1gkKTYjK4Ejch4BUF4hZAAkPt3hKtLUPPQlKyXjK5EjKZ4BUF4hdAAkVtvjQt3hKt3hKh4hKt3hcA4hKt3hXA4BTtvjQtTWPtDlK2XjK3EDTt3hKt3hct.EQt3hKtHVPt.kKPYjKqEjYi4hZF4RZAAUVt.0QtPSPtHlKTYjKrEjKg4BQF4RaAYmXtPjKt3hKPwjKx4hKt3hKW4hKD4RdAYWXtP0QtPWPtjkKPcjKzDjKh4BUF4RPt3hKt3xPtbjKt3hK1UjKtDjKi4BUF4xbA4hXtbiQtDjKt3hKtLjKF4hKt3hcE4hKAY1XtPkQtfWPtDlKX4hKt3BTL4xLB4hLtX1RtPzPtnmKlEjKt3hKhEjKP4BVG4xZAYlXtnmQtXjKt3hKDMjKz4hcM4xLB4xct3RStHlKt3hKtbkKtPjKwDDTZ4BSG4xaAYFVtPjKt3hKtvjKD4hKt3hKt3hKt3hPt3hKt.kdTkDMTQlKt3hKPIVPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3BSIUyTYkVUgYTT5MWUKQWQgcyM1fkPzUjKt3hKt3hKtPTSUIkSqcjKt3BTt3hKt3BVt3hKt3hKt3hKtD0Tqo1TA4hKt3BQt3hKt.kKt3hKtDjKt3hKD4hKt3BTF4hKt3RPt3hKtfkKt3hKlEjKt3hKTEDTZ4hdF4BZAYlXtPkQtDjKt3hKl4hKt3hKR4BQF4BdAAUXtbiQtPWPPokKLYjKt3hKt3hKt3hK4jlKt3hKtDjKt3hKD4hKt3hYA4hKt3BQAAUVt.0Qt.SPlElKTYjKt3hKt3hKt3hK4jmKt3hKtHjKt3hKD4hKt3hYB4hKt3hPAYlXtnlQtzVPtnkKPcjKzEDTY4BSG4RdA4hKt3hKt3hKtX1JD4hKt3hct3hKt3RPt3hKtHlKt3hKPEkKyXjKwDjKH4BQD4xbA4xXt3hKt3hKt3hKtLySD4hKt3BTt3hKt.kKt3hKtfjKt3hKXUjKqEjKg4xMF4RZAAkVt.0QtPSPt3hKt3hKt3hKlsBUt3hKt.UPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrhQt3hKtPjKt3hKl4hKt3hKB4hKt3BVD4BVAAkKt3hKtXjKt3hKDQjKyEjcg4BUG4BcA4xXt3hKt3hKt3hKtLySZ4hKt3BQt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrRct3hKt3RPt3hKt.kKt3hKtHjKt3hKTEDTZ4hdF4BZA4BRtPEQtPWPlMlKD4hKt3hYA4hKt3RPA4xXt.0QtbVP1gkKxYjKt3hKt3hKt3hK4jVPt3hKtDjKt3hKD4hKt3BTA4hKt3BQAAUVtvjQtbVPPQlKt3hKt3hKt3hKy7zQt3hKtfjKt3hKP4hKt3hKG4hKt3BSE4BLAYmXt.0QtbVPPokKyXjKt3hKt3hKt3hK4LjPt3hKtLjKt3hKD4hKt3hcA4hKt3hTAAUVtXmQtrVPPgkKLcjKqEjKt3hKt3hKt3hYqnlKt3hKtDjKt3hKA4hKt3BTt3hKtXWPt3hKtDTPPElKtbjKl4BTQ4xLF4RLAAkKt3hKtbjKt3hKDQjK5EjKi4BQF4RZAYmVt3hPt3hKt3hKt3hKtjyTD4hKt3RPt3hKtPjKt3hKPEjKt3hKDEDTY4BSF4xYAAEYt3hKt3hKt3hKtLySR4hKt3BRt3hKt.kKt3hKtbjKt3hKLUjKvDjch4BTG4xYAAkVtLiQt3hKt3hKt3hKtjSdD4hKt3xPt3hKtPjKt3hK1EjKt3hKREDTY4hcF4xZAAEVtvzQtrVPt3hKt3hKt3hKlsBTA4hKt3RPt3hKtDjKt3hKP4hKt3hYA4hKt3xSAA0Xt.0QtXWPPMlKPcjKA4hKt3BVt3hKtXVUtbiQtHWPPMlK5YjKqEjKt3hKt3hKt3hYqLiKt3hKP4hKt3hKA4hKt3hYt3hKtXVUtPkQtHWP1ElKLYjKuEjKi4hZG4hKt3hKt3hKt3RNCQjKt3hKB4hKt3BQt3hKt.kPt3hKtLUPtLlKHcjKl4hcU4hZF4hZA4xXtXlQt3hKt3hKt3hKtjSdC4hKt3xPt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrxTt3hKt.kKt3hKtPjKt3hKL4hKt3hKS4BVD4xSAAkKt3hKtPjKt3hKHUjKmEjKi4BUF4hKt3hKt3hKt3RNoIjKt3hKA4hKt3BQt3hKtXWPt3hKtXUPPokKHYjK3EDTX4BTG4RcA4hKt3hKt3hKtX1Jx4hKt3hYt3hKt3RPt3hKtfkKt3hKtTkKpYjKyEjYX4BRG4xZA4hKt3hKt3hKtX1J14hKt3hct3hKt3RPt3hKtHlKt3hKtTkKHcjKqEDTg4xMF4hbAYWXt3hKt3hKt3hKtLySM4hKt3BTt3hKt.kKt3hKtPjKt3hKL4hKt3BTP4BRG4hcAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySHIjKt3BQt3hKt.kKt3hKtPjKt3hKLUjK5EDTY4hKG4hKt3hKt3hKt3RNSslKt3hKB4hKt3BQt3hKt3RPt3hKtbTPPgkKPcjKqEjKt3hKt3hKt3hYqnFRt3hK14hKt3hKA4hKt3hXt3hKtXGUtXlQt.SPlkkKXYjKxEDTY4hKt3hKt3hKt3xLO0jPt3hKP4hKt3BTt3hKt3BQt3hKtPkKt3hKPMkK2XjK3EjKh4hYF4RPt3hKtPjKt3hKtXkKt3hKt3hKt3hKy7TUt3hKtPjKt3hKP4hKt3hKA4hKt3hZE4hKt3hKt3hKt3RNoUjKt3hKB4hKt3BQt3hKt.UPt3hKtHUPlElKPYjKl4hKV4hKt3hKt3hKt3xLOckKt3hKL4hKt3BTt3hKt3RQt3hKtfTQtPWPtjkKtHjKYEjKt3hKt3hKt3hYqXVPt3hKtDjKt3hKA4hKt3BRt3hKtXVPt3hKtzTPPgkKLcjK5EDTY4BRG4RPt3hKtfkKt3hK1MkKTcjK5EjKh4BUG4hdA4hKt3hKt3hKtX1JPcjKt3BTt3hKt3RPt3hKtPkKt3hKPIkKyXjK1EDTi4BTG4hKt3hKt3hKt3RNSMlKt3hKB4hKt3BQt3hKtXlKt3hKtTjKt3hKtTjKuEjKi4BSF4haAAkKt3hKtPjKt3hKPUjKvDjYg4BUF4hKt3hKt3hKt3RNoMlKt3hKA4hKt3BQt3hKt.kPt3hKtPUPlIlKDYjKzEjch4hKG4RcAYmXtPkQt3hKt3hKt3hKtjSdi4hKt3hPt3hKtPjKt3hKP4hKt3hKF4hKt3BUE4BcAAkVtvzQtTWPlElKD4hKt3hYA4hKt3BQAAUVt.0Qt.SPlElKTYjKt3hKt3hKt3hK4LEYt3hKtDjKt3hKD4hKt3BTt3hKt3RQt3hKtHFQtHWPPokKPYjKqEDTt3hKt3BQt3hKt.UQt7VPPElKTYjKt3hKt3hKt3hK4jWYt3hKtDjKt3hKD4hKt3hYt3hKt3xQt3hKtPTQt.SPPgkK1YjKuEjKi4hZG4RPt3hKtfkKt3hKPAkKyXjKmEjKg4xMF4RaA4hKt3hKt3hKtX1JtfjKt3BTt3hKt3RPt3hKtHlKt3hKtDkKpYjKsEDTZ4BTG4xYA4RXt3hKt3hKt3hKtLySDIjKt3BRt3hKt.kKt3hKtfjKt3hKT4hKt3hKQ4BRG4xaAY1XtPkQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlsxLA4hKt.kKt3hKtDjKt3hKT4hKt3hKQ4BRG4xaAY1XtPkQt3hKt3hKt3hKtjSdG4hKt3hPt3hKtPjKt3hKtDjKt3hKTEjcg4xLF4xZA4hKt3hKt3hKtX1JtHjKt3hct3hKt3RPt3hKt.kKt3hKlAkKDYjK4Ejch4hKt3hKt3hKt3xLOclKt3hKP4hKt3BTt3hKt3xQt3hKtfUQtTWPtDlKTcjKyEDTY4hKB4hKt3hKt3hKt3RNogjKt3hKE4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJg4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJqDjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqfjKt3hKD4hKt3hKB4hKt3BQt3hKt.UQt.SPlgkKTYjKA4hKt3BVt3hKtX2TtLiQtTmK1MkKXYjKrEjKt3hKt3hKt3hYqvjPt3hKP4hKt3hKA4hKt3BVt3hKtXVUtbiQtHWPPMlK5YjKqEjKt3hKt3hKt3hYqPkPt3hKl4hKt3hKA4hKt3BUt3hKt3RTtfzQt7VPlMlKTYjKt3hKt3hKt3hK4LTRt3hKtLjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqLkKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqTVPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrhQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRYt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxSB4hKt3RPt3hKtXlKt3hK1EjKt3hKCEDTX4BRF4xaAYVXtPkQtnWPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7Dat3hKtPjKt3hKP4hKt3hKD4hKt3BTE4BMA4hXtPkQt3hKt3hKt3hKtjSdI4hKt3hPt3hKtPjKt3hKtDjKt3hKSEDTZ4haG4xZA4hKt3hKt3hKtX1JlIjKt3hct3hKt3RPt3hKtvjKt3hKPAkKpYjK3EjKt3hKt3hKt3hYqnlPt3hKtDjKt3hKA4hKt3BTt3hKtXFTtPjQtjWP1IlKt3hKt3hKt3hKy7Dbt3hKtPkKt3hKP4hKt3hKF4hKt3BTE4BdAAUVtfjQtHWPPkkKt3hKt3hKt3hKy7Tbt3hKtfkKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqrRPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrBRt3hKtPjKt3hKtHjKt3hKH4hKt3BSE4haAAUVtXmQtvVPtfjKTQjKQEDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOImKt3hKD4hKt3BTt3hKt3BQt3hKtXGQt.UPtfjKlUjKt3hKt3hKt3hK4L0Rt3hKtHjKt3hKD4hKt3hKA4hKt3BSA4BUt3hPtjUPt3hKt3hKt3hKlsxLB4hKtXmKt3hKtDjKt3hKP4hKt3hKR4hKE4hYt3hUt3hKt3hKt3hKtLyS04hKt3BTt3hKt.kKt3hKtPjKt3hKlQjKPEjKH4hYE4hKt3hKt3hKt3RNCwjKt3hKE4hKt3BQt3hKtXVPt3hKtXUP1ElK1YjKvDDTg4BUF4hKt3hKt3hKt3RNSwjKt3hKF4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJk4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJOIjKt3hKA4hKt3hYt3hKtXWPt3hKt.UPPkkKDYjKwEjKH4BUD4RTAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLyS34hKt3BQt3hKt.kKt3hKtfjKt3hKtTjKqEDTX4hbF4hYt.ESt3hPtfUPt3hKt3hKt3hKlsBSC4hKtXlKt3hKtDjKt3hKl4hKt3hKT4BUF4xYAYmVt3hPtbmKtfjKpUjKt3hKt3hKt3hK4LTSt3hKtLjKt3hKD4hKt3hKB4hKt3BTAAUVtPjQtDWPtfjKHMjKl4hKV4hKt3hKt3hKt3xLOEiKt3hKP4hKt3BTt3hKt3RRt3hKt3RQtrVPPgkKxYjKl4hYL4hKB4RVA4BRt3hKt3hKt3hKtLySx3hKt3BUt3hKt.kKt3hKtHjKt3hKDUjK24hKt3hKt3hKt3hYqP0Pt3hKlEjKt3hKA4hKt3BRt3hKt.EUtfzPt3hKt3hKt3hKtjyPN4hKt3xQt3hKtPjKt3hKlEjKt3hKVEjcg4hcF4BLAAUXtPkQt3hKt3hKt3hKtjyTN4hKt3BRt3hKtPjKt3hKtHjKt3hKH4hKt3BTE4xYA4RXtHmQtXlK1UkKDYjKtEDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOUiKt3hKD4hKt3BTt3hKt3RQt3hKtnGQtTWPPMlKPcjKtEjKt3hKt3hKt3hYqH2Pt3hKl4hKt3hKA4hKt3hYt3hKt.0TtbiQtnVP1MlKlYjKqEDTY4hcF4hKt3hKt3hKt3RNC8jKt3hKC4hKt3BQt3hKt3RPt3hKtLUPPokKtcjKqEjKt3hKt3hKt3hYqn2Pt3hKtDjKt3hKA4hKt3BVt3hKtXFTtfzQt7VP1kkKlYjK5EjKt3hKt3hKt3hYqLyPt3hKPEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqXjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqTlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJq7jPt3hKtDjKt3hKl4hKt3hYA4hKt3BTA4hVtPjQtjWPPkkKHcjKA4hKt3BVt3hKtX2TtLiQtTmK1MkKXYjKrEjKt3hKt3hKt3hYqbyPt3hKP4hKt3hKA4hKt3BTt3hKtXFUtPjQtnWPPkkKt3hKt3hKt3hKy7jKA4hKtfjKt3hKP4hKt3hKG4hKt3xLD4RcA4xXtvjQt3VPPkkKLcjKt3hKt3hKt3hK4LjTt3hKtLjKt3hKD4hKt3BTA4hKt3xPAYWXtXmQtTWPlIlKt3hKt3hKt3hKy7TPA4hKt.kKt3hKP4hKt3hKI4hKt3BSE4hLAAUVtPkQtXWPtfjK5QjKuEjYg4hKt3hKt3hKt3xLOMTPt3hKT4hKt3BTt3hKt3RRt3hKtvTQtHSPPkkKTYjK1EjKH4hdD4xYA4BYt3hKt3hKt3hKtLySDEjKt3BVt3hKt.kKt3hKtXjKt3hKHUjK0EjKi4BQF4hdAAUVt3hKt3hKt3hKtLySBEjKt3hXt3hKt.kKt3hKtbjKt3hKPQjK3EDTj4xMB4xUAAUVt.0Qt3hKt3hKt3hKtjSZQ4hKt3BRt3hKtPjKt3hKtHjKt3hKG4hKt3BVD4hbAAEVtLiQtzVPPkkKHcjKA4hKt3BVt3hKtX2TtLiQtTmK1MkKXYjKrEjKt3hKt3hKt3hYqnFQt3hKP4hKt3hKA4hKt3BTt3hKtXFUtPjQtnWPPkkKt3hKt3hKt3hKy7jRA4hKtfjKt3hKP4hKt3hKD4hKt3BSE4BMAYVXtvjQt3hKt3hKt3hKtjSdS4hKt3xPt3hKtPjKt3hKlEjKt3hKSEjKi4BQF4hdAAkVtvjQt3hKt3hKt3hKtjSdR4hKt3BQt3hKtPjKt3hKPEjKt3hKDEDTY4hKG4hdA4hVt3hKt3hKt3hKtLySLEjKt3BUt3hKt.kKt3hKtTjKt3hKLQjK0EjKg4xMF4BdA4hKt3hKt3hKtX1J5QjKt3hYA4hKt3RPt3hKtfkKt3hKlQkK2XjK5EDTX4BTG4xZA4hKt3hKt3hKtX1JyPjKt3hcA4hKt3RPt3hKtHlKt3hKtDkKHcjKzDjcK4hXE4xZA4xXt3hKt3hKt3hKtLySQEjKt3hYt3hKt.kKt3hKtfjKt3hKh4hKt3hKU4BRG4xZAAUXtbiQtHWP1ElKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4jFUt3hKtDjKt3hKD4hKt3hKA4hKt3hTAAEVt.0QtrVPt3hKt3hKt3hKlsBSE4hKtXlKt3hKtDjKt3hKP4hKt3hcT4hZG4BcAYGVt3hKt3hKt3hKtLySUEjKt3BSt3hKt.kKt3hKtjjKt3hKpQjKzEjKi4BUF4BcAYmXtnlQtnWPPQlKt3hKt3hKt3hKy7DUA4hKt.kKt3hKP4hKt3hKF4hKt3BSE4hdAAUVtfzQtrVP1ElKt3hKt3hKt3hKy7jUA4hKtPkKt3hKP4hKt3hKE4hKt3hXE4xaA4RVt.0Qt3VPt3hKt3hKt3hKlshXE4hKtXVPt3hKtDjKt3hKX4hKt3BTP4BTG4hdAAEVtvjQtDWPt3hKt3hKt3hKlshYE4hKtXWPt3hKtDjKt3hKT4hKt3hKQ4BUF4RZAAEVtn1Qt3hKt3hKt3hKtjyTV4hKt3BRt3hKtPjKt3hKtHjKt3hKF4hKt3BRE4xZAY1XtPkQtfWPlgkKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4jlUt3hKtDjKt3hKD4hKt3hKA4hKt3BUAAkVtnmQtrVPt3hKt3hKt3hKlshdE4hKtXlKt3hKtDjKt3hKX4hKt3hYP4BRG4xaAYWVtXlQtnWPt3hKt3hKt3hKlshcE4hKtXmKt3hKtDjKt3hKX4hKt3hKU4BRG4xZAYFVtXmQtrVPt3hKt3hKt3hKlsxLE4hKt3RPt3hKtDjKt3hKh4hKt3hKQ4BRG4BMAY2RtHVQtrVPtLlKt3hKt3hKt3hKy7TXA4hKtPkKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqTWPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrxQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRZt3hKt.kKt3hKtfjKt3hKp4hKt3hKT4BSG4BMA4BRt.EQtrVPtDlKDYjKzDDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOUVPt3hKD4hKt3BTt3hKt3BQt3hKt.UQt7VPPElKTYjKt3hKt3hKt3hK4LEVt3hKtHjKt3hKD4hKt3hKB4hKt3hQAAUVtPkQtnVPlgkKDYjKoEjcZ4hKt3hKt3hKt3xLOoVPt3hKL4hKt3BTt3hKt3xQt3hKtfTQtrVPlMlKTYjK3Ejch4BUF4hKt3hKt3hKt3RNogkKt3hKD4hKt3BQt3hKtXVPt3hKtLUPtLlKTYjK3EDTY4xMF4hKt3hKt3hKt3RN4kkKt3hKE4hKt3BQt3hKtXVPt3hKtPTPPkkKPcjKvDjYg4BUF4hKt3hKt3hKt3RN4gkKt3hKF4hKt3BQt3hKt.UPt3hKt.UPPokKPcjKoEjKZ4hKt3hKt3hKt3xLOsVPt3hKh4hKt3BTt3hKt3xQt3hKt.EQtfWPPQlK2HjKWEDTY4BTG4hKt3hKt3hKt3RNCgkKt3hKH4hKt3BQt3hKt3hPt3hKtjjKt3hKLQjKtEjYh4hKB4BQAAUVtXmQtbVPPQlKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4jWXt3hKtDjKt3hKD4hKt3hKA4hKt3BUAAkVtnmQtrVPt3hKt3hKt3hKlshYF4hKtXlKt3hKtDjKt3hKX4hKt3hKS4xMF4hYtXGTtP0QtnWPt3hKt3hKt3hKlshdF4hKtXmKt3hKtDjKt3hKX4hKt3hKR4hZF4hYtXGTtP0QtnWPt3hKt3hKt3hKlshcF4hKt3RPt3hKtDjKt3hKl4hKt3hYQ4BUF4xZA4RVtfjQtbVP1gkKxYjKt3hKt3hKt3hK4jmVt3hKtTjKt3hKD4hKt3hKB4hKt3RSAYWXt.kQtXlKlQkKDYjK5EDTY4hKt3hKt3hKt3xLOcWPt3hKX4hKt3BTt3hKt3RRt3hKtnGQtTWPtjkKtHjKDEDTY4hKG4hdA4hVt3hKt3hKt3hKtLySvEjKt3hXt3hKt.kKt3hKtbjKt3hKPQjK3EDTj4xMB4xUAAUVt.0Qt3hKt3hKt3hKtjyPh4hKt3BRt3hKtPjKt3hKt3hKt3hKA4hKt3BT5QURzPzXt3hKtXUUt3hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKxESdwcDdZgUUroVZ2bEZhs1UoEURgIUPt3hKt3hKt3BQMUkTNE0Qt3hKP4hKt3hKMQkKt3hKt3hKt3RTSslZSkWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtDjZ2LjKt3BLD4hKtHjZ2LjKtXjKtPjKHUDStnUdqwVXtLlKP4hKAIUPFkGU4k1Tw4RUzDkK44jduoTQDgkKDUjYtXmKD0TUR4TP5gjYkYmKtDjKPElKPElYlAkKvfiKHQjKB4hKMIzLCwTQDMiSyXSPw.GRwnmdz0zQAgWVLYVdFYEQt0lK2zjK3HzLWIlQPkFQPshStHzUl4hKtTjK34RP2XzPlAkKH4hYtLVdIcjXEc1TSYDNLgzRP4Rco4hKtnjK3ETRtTUV30DaKYFSEE1YAczLmomYB4hKtfUPA4hKtHDQt3hKIgzQt3hKlwjKA4RNC4hKtnDRG4RNB4BRtHkPA4BVk4BSt3hKBMiPhIDTx3hKtXlXD4hbtfGRlUmKt3BNA4hctf2Rt3xQHMjKNQjKtfGYlMkct3RPtX2TtjiKt3hdDY1Pt3xP5wTdLYyPHwDS18jVrkkQtLVP1MjKN4xUtflPlUlcF4RSAAkKtjSPG4BQtXFSAAUbBYjKlImKXMjKD4hKy4BRt3hSAElKD4hKiEDTC4RNt3hKwLjQ5UVVWUSZuQyXJgTXBoGStzjKXckK5YjKMYmPtHGYTMyMooWc371S5Q1PJ4BNt.0PtPjKtLlKPMjKL4hYOYmPlIjKtvjQ3gUPyQETsIjK0b1MD4BRCg2PtLjKP0VPtXlYLEkcwIjdCYVYA4hYkcGRtfSQPMjKL4hKlMDR0EjKLYFSt.kKt3BRlIlKtPkK34hKtnDRC4hdh4RPt3hdBgmPtfURHMjK43hKtbyStLlKPMjKL4hY0ciTl4hKtDjKL4hYx4hYt3hYt3xPtXlStXjKEo2cBI0bA4RLtvlPl4hKtPmK34hYg4hKlMjKK4xLOMyPlEjKNEjPC4haDgzPtPmQt3hKEYVY1gzQtHET44hPt3hKlgjYL4xLQ4BTt.kbCAUXtXWStDkKyPjKt3xUt3TPM4hSB4BQP4xJCglKtbySyDDVQY2PtPGQt3BYtHmKt3BZY4FTJglKlshcqsxJtPUdLkGRI4TPyLjYGYWPlUlKtHjKHYmKtPWPt3BSgY1SlUjYGAETlUFYVglKDA0MGYVNCEjdAY1UtLjPl4FSwEjTEUjaq.0UCMTQDEjUF8DQt3lcOQTXXglKQIjXCsVaEQDVCkDRHMlK0vjQy.0cq8jZCU0JtXFatnGSls1YAAULZoWP3nkYxMDRCMjUMAUVDYVNCEjPC4RVREjK4LTd2f2LJY1UtLjPlQ0L0DjPPY1RPYzPhgia1YyPXwFR1cTQzYDV04hQC4RR34hRhgia33hStvjKDQjYC4xPtblKPMjKnkjYG4hKtbmctrBVrkEaAEiKlckKCMjYyTST1LzLMo1YAUWR2YVMxo0M3EDYtjGRl8lcvLzLAYmKyzDSCgDdA4TPY4hPtTjKsAUStX1JBEDUFYlKtLSN1YlatLjStXUPD4RPPElcl4jQP4hKt3lYO4xPAYFS1Y1RPYTP34xLt3hKyHjZA4hTCkiK4wDdJYjbSI2TIwjMDYiKXUiQ3gUQtX2SoE2QqkiK5sjY2YlK3ASZnY1QtLjPyTSTmMDYtvjKpojYCYVRlMkKCIzLvjlPCQVPrwDTtXGLoIjYIIDRrQjKtTkKB4hYX4xLX4hKtXkKB4hKQIjKI4hPt3xXtLSYt3hKh4hPt3xbB4RXtHjKtLlKP4hKnIjKxEDRwDjStHSPtbkYt3BTW4BSt3xLAgjKtbiPtHVPH4hKPYiYt3hcO4RNA4hKPojYt3xLGwTPyrjKt3BStHjKtTVPtnVPB4hK04xLg4hKtzTPB4hKHEDRt3RNDEmKtDkYt3BTk4BZVEDTwPiYt3BTK4RNm4hK1shYkEjKt.kKPcGbtHDdL4hKt3hZL4hKt3xMHQ0MlwjYtX2RD4hPuUjKA4hTtHDcKgzQtflKt3TPPYjKZIjYhMjaI4hPRYFa1oTZtnkPtfkKy3hZt3xQt3jKI4hPtXVLAYFRAAWPl4TPyHzJDMyRA4hKQ4hRUMjbrE1YIYERv4hSt3BQtXlKtHjKtnVTPMTPB4xPLYzXzslQSckQPQTatHzPl4hYJgjPD4hR2EkKlojZyL0MP4hdAY1LA4xTS0lK4PTbtP1Jt3BYv4ha5MlKAYmK4slUi0VRDkjKlQ2LBgEQt.mKBYjKpEDRCwjPrYVS1gjTCYjKGIlQhoWSVYEUvPUTtbmcB0DRVkUQF4hKt3hKt3hKt3RPt3hKt3BTt3hKt3hKt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4CLtvyKIUDYoQ2Pu4Fcx8FarUlb9vyKVMEUy.Ea0cVZtMEcgQWY9.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FM8",
									"origin" : "FM8.vst3",
									"type" : "VST3",
									"subtype" : "Instrument",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "FM8.vst3",
										"plugindisplayname" : "FM8",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "11168.VMjLgb4J...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fiL1LiKGEjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3xRNMiXvUCUhoWNDgVTP8DN4TibXMVVI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKt.CNA4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKqHGbXUkdYMCZqPUa0ISUGQlUtQiS5YjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtfjKt3hKD4hKt3hYB4hKt3xctX1RtfzPtPmKtvjKyHjK24hKL4BQC4hct.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKtLiZt3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hK5YGMJIlXTwzX3EEM0fzJ2wlcx8VTscjPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3hKA4hKt3BTAAUVtfzQtjVPtPjKt3hKMEDTX4BRG4hdAAkVtLiQtXlKlAkKHcjKuEjYg4hbF4xbAAEVtLiQtPWPlQjKt3hKNEDTX4BTG4xaAY1XtPkQtXlKPIkKyXjK4EjKi4BRG4BLAAUXtPkQtPWPtLlKLcjKt3hKt3hKt3hKtX2JqrxJq3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKP4hKt3hKA4hKt3BRt3hKtXmKt3hKtXTPPMkKlMjKJ4hKt3BVD4RSAYWSt3hPtvTPPkkKhYjKmEjcX4hZG4BQt3hKt3lKt3hKtPkKTYjK3EjcX4BUG4RdAYmXtnlQtTWPlElKt4hKt3hKT4BUF4BdAYGVtP0QtjWP1IlKpYjKwDDTY4hZt3hKt3BUtfzQtTWP1gkKTYjK4Ejch4BUF4hZAAkPt3hKtLUPPQlKyXjK5EjKZ4BUF4hdAAkVtvjQt3hKt3hKh4hKt3hcA4hKt3hXA4BTtvjQtTWPtDlK2XjK3EDTt3hKt3hct.EQt3hKtHVPt.kKPYjKqEjYi4hZF4RZAAUVt.0QtPSPtHlKTYjKrEjKg4BQF4RaAYmXtPjKt3hKPwjKx4hKt3hKW4hKD4RdAYWXtP0QtPWPtjkKPcjKzDjKh4BUF4RPt3hKt3xPtbjKt3hK1UjKtDjKi4BUF4xbA4hXtbiQtDjKt3hKtLjKF4hKt3hcE4hKAY1XtPkQtfWPtDlKX4hKt3BTL4xLB4hLtX1RtPzPtnmKlEjKt3hKhEjKP4BVG4xZAYlXtnmQtXjKt3hKDMjKz4hcM4xLB4xct3RStHlKt3hKtbkKtPjKwDDTZ4BSG4xaAYFVtPjKt3hKtvjKD4hKt3hKt3hKt3hPt3hKt.kdTkDMTQlKt3hKPIVPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3BSIUyTYkVUgYTT5MWUKQWQgcyM1fkPzUjKt3hKt3hKtPTSUIkSqcjKt3BTt3hKt3BVt3hKt3hKt3hKtD0Tqo1TA4hKt3BQt3hKt.kKt3hKtDjKt3hKD4hKt3BTF4hKt3RPt3hKtfkKt3hKlEjKt3hKTEDTZ4hdF4BZAYlXtPkQtDjKt3hKl4hKt3hKR4BQF4BdAAUXtbiQtPWPPokKLYjKt3hKt3hKt3hK4jlKt3hKtDjKt3hKD4hKt3hYA4hKt3BQAAUVt.0Qt.SPlElKTYjKt3hKt3hKt3hK4jmKt3hKtHjKt3hKD4hKt3hYB4hKt3hPAYlXtnlQtzVPtnkKPcjKzEDTY4BSG4RdA4hKt3hKt3hKtX1JD4hKt3hct3hKt3RPt3hKtHlKt3hKPEkKyXjKwDjKH4BQD4xbA4xXt3hKt3hKt3hKtLySD4hKt3BTt3hKt.kKt3hKtfjKt3hKXUjKqEjKg4xMF4RZAAkVt.0QtPSPt3hKt3hKt3hKlsBUt3hKt.UPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrhQt3hKtPjKt3hKl4hKt3hKB4hKt3BVD4BVAAkKt3hKtXjKt3hKDQjKyEjcg4BUG4BcA4xXt3hKt3hKt3hKtLySZ4hKt3BQt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrRct3hKt3RPt3hKt.kKt3hKtHjKt3hKTEDTZ4hdF4BZA4BRtPEQtPWPlMlKD4hKt3hYA4hKt3RPA4xXt.0QtbVP1gkKxYjKt3hKt3hKt3hK4jVPt3hKtDjKt3hKD4hKt3BTA4hKt3BQAAUVtvjQtbVPPQlKt3hKt3hKt3hKy7zQt3hKtfjKt3hKP4hKt3hKG4hKt3BSE4BLAYmXt.0QtbVPPokKyXjKt3hKt3hKt3hK4LjPt3hKtLjKt3hKD4hKt3hcA4hKt3hTAAUVtXmQtrVPPgkKLcjKqEjKt3hKt3hKt3hYqnlKt3hKtDjKt3hKA4hKt3BTt3hKtXWPt3hKtDTPPElKtbjKl4BTQ4xLF4RLAAkKt3hKtbjKt3hKDQjK5EjKi4BQF4RZAYmVt3hPt3hKt3hKt3hKtjyTD4hKt3RPt3hKtPjKt3hKPEjKt3hKDEDTY4BSF4xYAAEYt3hKt3hKt3hKtLySR4hKt3BRt3hKt.kKt3hKtbjKt3hKLUjKvDjch4BTG4xYAAkVtLiQt3hKt3hKt3hKtjSdD4hKt3xPt3hKtPjKt3hK1EjKt3hKREDTY4hcF4xZAAEVtvzQtrVPt3hKt3hKt3hKlsBTA4hKt3RPt3hKtDjKt3hKP4hKt3hYA4hKt3xSAA0Xt.0QtXWPPMlKPcjKA4hKt3BVt3hKtXVUtbiQtHWPPMlK5YjKqEjKt3hKt3hKt3hYqLiKt3hKP4hKt3hKA4hKt3hYt3hKtXVUtPkQtHWP1ElKLYjKuEjKi4hZG4hKt3hKt3hKt3RNCQjKt3hKB4hKt3BQt3hKt.kPt3hKtLUPtLlKHcjKl4hcU4hZF4hZA4xXtXlQt3hKt3hKt3hKtjSdC4hKt3xPt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrxTt3hKt.kKt3hKtPjKt3hKL4hKt3hKS4BVD4xSAAkKt3hKtPjKt3hKHUjKmEjKi4BUF4hKt3hKt3hKt3RNoIjKt3hKA4hKt3BQt3hKtXWPt3hKtXUPPokKHYjK3EDTX4BTG4RcA4hKt3hKt3hKtX1Jx4hKt3hYt3hKt3RPt3hKtfkKt3hKtTkKpYjKyEjYX4BRG4xZA4hKt3hKt3hKtX1J14hKt3hct3hKt3RPt3hKtHlKt3hKtTkKHcjKqEDTg4xMF4hbAYWXt3hKt3hKt3hKtLySM4hKt3BTt3hKt.kKt3hKtPjKt3hKL4hKt3BTP4BRG4hcAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySHIjKt3BQt3hKt.kKt3hKtPjKt3hKLUjK5EDTY4hKG4hKt3hKt3hKt3RNSslKt3hKB4hKt3BQt3hKt3RPt3hKtbTPPgkKPcjKqEjKt3hKt3hKt3hYqnFRt3hK14hKt3hKA4hKt3hXt3hKtXGUtXlQt.SPlkkKXYjKxEDTY4hKt3hKt3hKt3xLO0jPt3hKP4hKt3BTt3hKt3BQt3hKtPkKt3hKPMkK2XjK3EjKh4hYF4RPt3hKtPjKt3hKtXkKt3hKt3hKt3hKy7TUt3hKtPjKt3hKP4hKt3hKA4hKt3hZE4hKt3hKt3hKt3RNoUjKt3hKB4hKt3BQt3hKt.UPt3hKtHUPlElKPYjKl4hKV4hKt3hKt3hKt3xLOckKt3hKL4hKt3BTt3hKt3RQt3hKtfTQtPWPtjkKtHjKYEjKt3hKt3hKt3hYqXVPt3hKtDjKt3hKA4hKt3BRt3hKtXVPt3hKtzTPPgkKLcjK5EDTY4BRG4RPt3hKtfkKt3hK1MkKTcjK5EjKh4BUG4hdA4hKt3hKt3hKtX1JPcjKt3BTt3hKt3RPt3hKtPkKt3hKPIkKyXjK1EDTi4BTG4hKt3hKt3hKt3RNSMlKt3hKB4hKt3BQt3hKtXlKt3hKtTjKt3hKtTjKuEjKi4BSF4haAAkKt3hKtPjKt3hKPUjKvDjYg4BUF4hKt3hKt3hKt3RNoMlKt3hKA4hKt3BQt3hKt.kPt3hKtPUPlIlKDYjKzEjch4hKG4RcAYmXtPkQt3hKt3hKt3hKtjSdi4hKt3hPt3hKtPjKt3hKP4hKt3hKF4hKt3BUE4BcAAkVtvzQtTWPlElKD4hKt3hYA4hKt3BQAAUVt.0Qt.SPlElKTYjKt3hKt3hKt3hK4LEYt3hKtDjKt3hKD4hKt3BTt3hKt3RQt3hKtHFQtHWPPokKPYjKqEDTt3hKt3BQt3hKt.UQt7VPPElKTYjKt3hKt3hKt3hK4jWYt3hKtDjKt3hKD4hKt3hYt3hKt3xQt3hKtPTQt.SPPgkK1YjKuEjKi4hZG4RPt3hKtfkKt3hKPAkKyXjKmEjKg4xMF4RaA4hKt3hKt3hKtX1JtfjKt3BTt3hKt3RPt3hKtHlKt3hKtDkKpYjKsEDTZ4BTG4xYA4RXt3hKt3hKt3hKtLySDIjKt3BRt3hKt.kKt3hKtfjKt3hKT4hKt3hKQ4BRG4xaAY1XtPkQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlsxLA4hKt.kKt3hKtDjKt3hKT4hKt3hKQ4BRG4xaAY1XtPkQt3hKt3hKt3hKtjSdG4hKt3hPt3hKtPjKt3hKtDjKt3hKTEjcg4xLF4xZA4hKt3hKt3hKtX1JtHjKt3hct3hKt3RPt3hKt.kKt3hKlAkKDYjK4Ejch4hKt3hKt3hKt3xLOclKt3hKP4hKt3BTt3hKt3xQt3hKtfUQtTWPtDlKTcjKyEDTY4hKB4hKt3hKt3hKt3RNogjKt3hKE4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJg4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJqDjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqfjKt3hKD4hKt3hKB4hKt3BQt3hKt.UQt.SPlgkKTYjKA4hKt3BVt3hKtX2TtLiQtTmK1MkKXYjKrEjKt3hKt3hKt3hYqvjPt3hKP4hKt3hKA4hKt3BVt3hKtXVUtbiQtHWPPMlK5YjKqEjKt3hKt3hKt3hYqPkPt3hKl4hKt3hKA4hKt3BUt3hKt3RTtfzQt7VPlMlKTYjKt3hKt3hKt3hK4LTRt3hKtLjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqLkKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqTVPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrhQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRYt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxSB4hKt3RPt3hKtXlKt3hK1EjKt3hKCEDTX4BRF4xaAYVXtPkQtnWPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7Dat3hKtPjKt3hKP4hKt3hKD4hKt3BTE4BMA4hXtPkQt3hKt3hKt3hKtjSdI4hKt3hPt3hKtPjKt3hKtDjKt3hKSEDTZ4haG4xZA4hKt3hKt3hKtX1JlIjKt3hct3hKt3RPt3hKtvjKt3hKPAkKpYjK3EjKt3hKt3hKt3hYqnlPt3hKtDjKt3hKA4hKt3BTt3hKtXFTtPjQtjWP1IlKt3hKt3hKt3hKy7Dbt3hKtPkKt3hKP4hKt3hKF4hKt3BTE4BdAAUVtfjQtHWPPkkKt3hKt3hKt3hKy7Tbt3hKtfkKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqrRPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrBRt3hKtPjKt3hKtHjKt3hKH4hKt3BSE4haAAUVtXmQtvVPtfjKTQjKQEDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOImKt3hKD4hKt3BTt3hKt3BQt3hKtXGQt.UPtfjKlUjKt3hKt3hKt3hK4L0Rt3hKtHjKt3hKD4hKt3hKA4hKt3BSA4BUt3hPtjUPt3hKt3hKt3hKlsxLB4hKtXmKt3hKtDjKt3hKP4hKt3hKR4hKE4hYt3hUt3hKt3hKt3hKtLyS04hKt3BTt3hKt.kKt3hKtPjKt3hKlQjKPEjKH4hYE4hKt3hKt3hKt3RNCwjKt3hKE4hKt3BQt3hKtXVPt3hKtXUP1ElK1YjKvDDTg4BUF4hKt3hKt3hKt3RNSwjKt3hKF4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJk4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJOIjKt3hKA4hKt3hYt3hKtXWPt3hKt.UPPkkKDYjKwEjKH4BUD4RTAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLyS34hKt3BQt3hKt.kKt3hKtfjKt3hKtTjKqEDTX4hbF4hYt.ESt3hPtfUPt3hKt3hKt3hKlsBSC4hKtXlKt3hKtDjKt3hKl4hKt3hKT4BUF4xYAYmVt3hPtbmKtfjKpUjKt3hKt3hKt3hK4LTSt3hKtLjKt3hKD4hKt3hKB4hKt3BTAAUVtPjQtDWPtfjKHMjKl4hKV4hKt3hKt3hKt3xLOEiKt3hKP4hKt3BTt3hKt3RRt3hKt3RQtrVPPgkKxYjKl4hYL4hKB4RVA4BRt3hKt3hKt3hKtLySx3hKt3BUt3hKt.kKt3hKtHjKt3hKDUjK24hKt3hKt3hKt3hYqP0Pt3hKlEjKt3hKA4hKt3BRt3hKt.EUtfzPt3hKt3hKt3hKtjyPN4hKt3xQt3hKtPjKt3hKlEjKt3hKVEjcg4hcF4BLAAUXtPkQt3hKt3hKt3hKtjyTN4hKt3BRt3hKtPjKt3hKtHjKt3hKH4hKt3BTE4xYA4RXtHmQtXlK1UkKDYjKtEDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOUiKt3hKD4hKt3BTt3hKt3RQt3hKtnGQtTWPPMlKPcjKtEjKt3hKt3hKt3hYqH2Pt3hKl4hKt3hKA4hKt3hYt3hKt.0TtbiQtnVP1MlKlYjKqEDTY4hcF4hKt3hKt3hKt3RNC8jKt3hKC4hKt3BQt3hKt3RPt3hKtLUPPokKtcjKqEjKt3hKt3hKt3hYqn2Pt3hKtDjKt3hKA4hKt3BVt3hKtXFTtfzQt7VP1kkKlYjK5EjKt3hKt3hKt3hYqLyPt3hKPEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqXjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqTlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJq7jPt3hKtDjKt3hKl4hKt3hYA4hKt3BTA4hVtPjQtjWPPkkKHcjKA4hKt3BVt3hKtX2TtLiQtTmK1MkKXYjKrEjKt3hKt3hKt3hYqbyPt3hKP4hKt3hKA4hKt3BTt3hKtXFUtPjQtnWPPkkKt3hKt3hKt3hKy7jKA4hKtfjKt3hKP4hKt3hKG4hKt3xLD4RcA4xXtvjQt3VPPkkKLcjKt3hKt3hKt3hK4LjTt3hKtLjKt3hKD4hKt3BTA4hKt3xPAYWXtXmQtTWPlIlKt3hKt3hKt3hKy7TPA4hKt.kKt3hKP4hKt3hKI4hKt3BSE4hLAAUVtPkQtXWPtfjK5QjKuEjYg4hKt3hKt3hKt3xLOMTPt3hKT4hKt3BTt3hKt3RRt3hKtvTQtHSPPkkKTYjK1EjKH4hdD4xYA4BYt3hKt3hKt3hKtLySDEjKt3BVt3hKt.kKt3hKtXjKt3hKHUjK0EjKi4BQF4hdAAUVt3hKt3hKt3hKtLySBEjKt3hXt3hKt.kKt3hKtbjKt3hKPQjK3EDTj4xMB4xUAAUVt.0Qt3hKt3hKt3hKtjSZQ4hKt3BRt3hKtPjKt3hKtHjKt3hKG4hKt3BVD4hbAAEVtLiQtzVPPkkKHcjKA4hKt3BVt3hKtX2TtLiQtTmK1MkKXYjKrEjKt3hKt3hKt3hYqnFQt3hKP4hKt3hKA4hKt3BTt3hKtXFUtPjQtnWPPkkKt3hKt3hKt3hKy7jRA4hKtfjKt3hKP4hKt3hKD4hKt3BSE4BMAYVXtvjQt3hKt3hKt3hKtjSdS4hKt3xPt3hKtPjKt3hKlEjKt3hKSEjKi4BQF4hdAAkVtvjQt3hKt3hKt3hKtjSdR4hKt3BQt3hKtPjKt3hKPEjKt3hKDEDTY4hKG4hdA4hVt3hKt3hKt3hKtLySLEjKt3BUt3hKt.kKt3hKtTjKt3hKLQjK0EjKg4xMF4BdA4hKt3hKt3hKtX1J5QjKt3hYA4hKt3RPt3hKtfkKt3hKlQkK2XjK5EDTX4BTG4xZA4hKt3hKt3hKtX1JyPjKt3hcA4hKt3RPt3hKtHlKt3hKtDkKHcjKzDjcK4hXE4xZA4xXt3hKt3hKt3hKtLySQEjKt3hYt3hKt.kKt3hKtfjKt3hKh4hKt3hKU4BRG4xZAAUXtbiQtHWP1ElKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4jFUt3hKtDjKt3hKD4hKt3hKA4hKt3hTAAEVt.0QtrVPt3hKt3hKt3hKlsBSE4hKtXlKt3hKtDjKt3hKP4hKt3hcT4hZG4BcAYGVt3hKt3hKt3hKtLySUEjKt3BSt3hKt.kKt3hKtjjKt3hKpQjKzEjKi4BUF4BcAYmXtnlQtnWPPQlKt3hKt3hKt3hKy7DUA4hKt.kKt3hKP4hKt3hKF4hKt3BSE4hdAAUVtfzQtrVP1ElKt3hKt3hKt3hKy7jUA4hKtPkKt3hKP4hKt3hKE4hKt3hXE4xaA4RVt.0Qt3VPt3hKt3hKt3hKlshXE4hKtXVPt3hKtDjKt3hKX4hKt3BTP4BTG4hdAAEVtvjQtDWPt3hKt3hKt3hKlshYE4hKtXWPt3hKtDjKt3hKT4hKt3hKQ4BUF4RZAAEVtn1Qt3hKt3hKt3hKtjyTV4hKt3BRt3hKtPjKt3hKtHjKt3hKF4hKt3BRE4xZAY1XtPkQtfWPlgkKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4jlUt3hKtDjKt3hKD4hKt3hKA4hKt3BUAAkVtnmQtrVPt3hKt3hKt3hKlshdE4hKtXlKt3hKtDjKt3hKX4hKt3hYP4BRG4xaAYWVtXlQtnWPt3hKt3hKt3hKlshcE4hKtXmKt3hKtDjKt3hKX4hKt3hKU4BRG4xZAYFVtXmQtrVPt3hKt3hKt3hKlsxLE4hKt3RPt3hKtDjKt3hKh4hKt3hKQ4BRG4BMAY2RtHVQtrVPtLlKt3hKt3hKt3hKy7TXA4hKtPkKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqTWPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrxQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRZt3hKt.kKt3hKtfjKt3hKp4hKt3hKT4BSG4BMA4BRt.EQtrVPtDlKDYjKzDDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOUVPt3hKD4hKt3BTt3hKt3BQt3hKt.UQt7VPPElKTYjKt3hKt3hKt3hK4LEVt3hKtHjKt3hKD4hKt3hKB4hKt3hQAAUVtPkQtnVPlgkKDYjKoEjcZ4hKt3hKt3hKt3xLOoVPt3hKL4hKt3BTt3hKt3xQt3hKtfTQtrVPlMlKTYjK3Ejch4BUF4hKt3hKt3hKt3RNogkKt3hKD4hKt3BQt3hKtXVPt3hKtLUPtLlKTYjK3EDTY4xMF4hKt3hKt3hKt3RN4kkKt3hKE4hKt3BQt3hKtXVPt3hKtPTPPkkKPcjKvDjYg4BUF4hKt3hKt3hKt3RN4gkKt3hKF4hKt3BQt3hKt.UPt3hKt.UPPokKPcjKoEjKZ4hKt3hKt3hKt3xLOsVPt3hKh4hKt3BTt3hKt3xQt3hKt.EQtfWPPQlK2HjKWEDTY4BTG4hKt3hKt3hKt3RNCgkKt3hKH4hKt3BQt3hKt3hPt3hKtjjKt3hKLQjKtEjYh4hKB4BQAAUVtXmQtbVPPQlKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4jWXt3hKtDjKt3hKD4hKt3hKA4hKt3BUAAkVtnmQtrVPt3hKt3hKt3hKlshYF4hKtXlKt3hKtDjKt3hKX4hKt3hKS4xMF4hYtXGTtP0QtnWPt3hKt3hKt3hKlshdF4hKtXmKt3hKtDjKt3hKX4hKt3hKR4hZF4hYtXGTtP0QtnWPt3hKt3hKt3hKlshcF4hKt3RPt3hKtDjKt3hKl4hKt3hYQ4BUF4xZA4RVtfjQtbVP1gkKxYjKt3hKt3hKt3hK4jmVt3hKtTjKt3hKD4hKt3hKB4hKt3RSAYWXt.kQtXlKlQkKDYjK5EDTY4hKt3hKt3hKt3xLOcWPt3hKX4hKt3BTt3hKt3RRt3hKtnGQtTWPtjkKtHjKDEDTY4hKG4hdA4hVt3hKt3hKt3hKtLySvEjKt3hXt3hKt.kKt3hKtbjKt3hKPQjK3EDTj4xMB4xUAAUVt.0Qt3hKt3hKt3hKtjyPh4hKt3BRt3hKtPjKt3hKt3hKt3hKA4hKt3BT5QURzPzXt3hKtXUUt3hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKxESdwcDdZgUUroVZ2bEZhs1UoEURgIUPt3hKt3hKt3BQMUkTNE0Qt3hKP4hKt3hKMQkKt3hKt3hKt3RTSslZSkWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtDjZ2LjKt3BLD4hKtHjZ2LjKtXjKtPjKHUDStnUdqwVXtLlKP4hKAIUPFkGU4k1Tw4RUzDkK44jduoTQDgkKDUjYtXmKD0TUR4TP5gjYkYmKtDjKPElKPElYlAkKvfiKHQjKB4hKMIzLCwTQDMiSyXSPw.GRwnmdz0zQAgWVLYVdFYEQt0lK2zjK3HzLWIlQPkFQPshStHzUl4hKtTjK34RP2XzPlAkKH4hYtLVdIcjXEc1TSYDNLgzRP4Rco4hKtnjK3ETRtTUV30DaKYFSEE1YAczLmomYB4hKtfUPA4hKtHDQt3hKIgzQt3hKlwjKA4RNC4hKtnDRG4RNB4BRtHkPA4BVk4BSt3hKBMiPhIDTx3hKtXlXD4hbtfGRlUmKt3BNA4hctf2Rt3xQHMjKNQjKtfGYlMkct3RPtX2TtjiKt3hdDY1Pt3xP5wTdLYyPHwDS18jVrkkQtLVP1MjKN4xUtflPlUlcF4RSAAkKtjSPG4BQtXFSAAUbBYjKlImKXMjKD4hKy4BRt3hSAElKD4hKiEDTC4RNt3hKwLjQ5UVVWUSZuQyXJgTXBoGStzjKXckK5YjKMYmPtHGYTMyMooWc371S5Q1PJ4BNt.0PtPjKtLlKPMjKL4hYOYmPlIjKtvjQ3gUPyQETsIjK0b1MD4BRCg2PtLjKP0VPtXlYLEkcwIjdCYVYA4hYkcGRtfSQPMjKL4hKlMDR0EjKLYFSt.kKt3BRlIlKtPkK34hKtnDRC4hdh4RPt3hdBgmPtfURHMjK43hKtbyStLlKPMjKL4hY0ciTl4hKtDjKL4hYx4hYt3hYt3xPtXlStXjKEo2cBI0bA4RLtvlPl4hKtPmK34hYg4hKlMjKK4xLOMyPlEjKNEjPC4haDgzPtPmQt3hKEYVY1gzQtHET44hPt3hKlgjYL4xLQ4BTt.kbCAUXtXWStDkKyPjKt3xUt3TPM4hSB4BQP4xJCglKtbySyDDVQY2PtPGQt3BYtHmKt3BZY4FTJglKlshcqsxJtPUdLkGRI4TPyLjYGYWPlUlKtHjKHYmKtPWPt3BSgY1SlUjYGAETlUFYVglKDA0MGYVNCEjdAY1UtLjPl4FSwEjTEUjaq.0UCMTQDEjUF8DQt3lcOQTXXglKQIjXCsVaEQDVCkDRHMlK0vjQy.0cq8jZCU0JtXFatnGSls1YAAULZoWP3nkYxMDRCMjUMAUVDYVNCEjPC4RVREjK4LTd2f2LJY1UtLjPlQ0L0DjPPY1RPYzPhgia1YyPXwFR1cTQzYDV04hQC4RR34hRhgia33hStvjKDQjYC4xPtblKPMjKnkjYG4hKtbmctrBVrkEaAEiKlckKCMjYyTST1LzLMo1YAUWR2YVMxo0M3EDYtjGRl8lcvLzLAYmKyzDSCgDdA4TPY4hPtTjKsAUStX1JBEDUFYlKtLSN1YlatLjStXUPD4RPPElcl4jQP4hKt3lYO4xPAYFS1Y1RPYTP34xLt3hKyHjZA4hTCkiK4wDdJYjbSI2TIwjMDYiKXUiQ3gUQtX2SoE2QqkiK5sjY2YlK3ASZnY1QtLjPyTSTmMDYtvjKpojYCYVRlMkKCIzLvjlPCQVPrwDTtXGLoIjYIIDRrQjKtTkKB4hYX4xLX4hKtXkKB4hKQIjKI4hPt3xXtLSYt3hKh4hPt3xbB4RXtHjKtLlKP4hKnIjKxEDRwDjStHSPtbkYt3BTW4BSt3xLAgjKtbiPtHVPH4hKPYiYt3hcO4RNA4hKPojYt3xLGwTPyrjKt3BStHjKtTVPtnVPB4hK04xLg4hKtzTPB4hKHEDRt3RNDEmKtDkYt3BTk4BZVEDTwPiYt3BTK4RNm4hK1shYkEjKt.kKPcGbtHDdL4hKt3hZL4hKt3xMHQ0MlwjYtX2RD4hPuUjKA4hTtHDcKgzQtflKt3TPPYjKZIjYhMjaI4hPRYFa1oTZtnkPtfkKy3hZt3xQt3jKI4hPtXVLAYFRAAWPl4TPyHzJDMyRA4hKQ4hRUMjbrE1YIYERv4hSt3BQtXlKtHjKtnVTPMTPB4xPLYzXzslQSckQPQTatHzPl4hYJgjPD4hR2EkKlojZyL0MP4hdAY1LA4xTS0lK4PTbtP1Jt3BYv4ha5MlKAYmK4slUi0VRDkjKlQ2LBgEQt.mKBYjKpEDRCwjPrYVS1gjTCYjKGIlQhoWSVYEUvPUTtbmcB0DRVkUQF4hKt3hKt3hKt3RPt3hKt3BTt3hKt3hKt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4CLtvyKIUDYoQ2Pu4Fcx8FarUlb9vyKVMEUy.Ea0cVZtMEcgQWY9.."
									}
,
									"fileref" : 									{
										"name" : "FM8",
										"filename" : "FM8.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "ea4793d9a7e1f016be258b67d21a515a"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FM8",
									"origin" : "FM8.vst3",
									"type" : "VST3",
									"subtype" : "Instrument",
									"embed" : 0,
									"fileref" : 									{
										"name" : "FM8",
										"filename" : "FM8_20260930.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "74f1393ac7e532cceedc168b9de7bc98"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 2 2 @autosave 1",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-272",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4370.0, 530.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 282.0, 328.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-273",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 64.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 310.0, 330.0, 64.0, 19.0 ],
					"text" : "load synth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-274",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4410.0, 530.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 378.0, 328.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-275",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 30.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 404.0, 332.0, 30.0, 17.0 ],
					"text" : "show"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-276",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4370.0, 500.0, 44.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-277",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4420.0, 500.0, 44.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.96, 0.96, 0.95, 1.0 ],
					"id" : "obj-278",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 532.0, 296.0, 254.0, 118.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 532.0, 296.0, 254.0, 118.0 ],
					"rounded" : 6
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.72, 0.58, 0.9, 1.0 ],
					"id" : "obj-279",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 532.0, 296.0, 254.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 532.0, 296.0, 254.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 13.0,
					"id" : "obj-280",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 532.0, 296.0, 244.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 298.0, 242.0, 21.0 ],
					"text" : "VOICE 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-281",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 4740.0, 40.0, 219.0, 22.0 ],
					"text" : "route speed octave load write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-282",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 4740.0, 140.0, 58.0, 22.0 ],
					"text" : "f 1024"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-283",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 4740.0, 170.0, 44.0, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-284",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4800.0, 140.0, 100.0, 22.0 ],
					"text" : "r chain_pace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-285",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 4740.0, 200.0, 40.0, 22.0 ],
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-286",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4740.0, 230.0, 107.0, 22.0 ],
					"text" : "prepend start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-287",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "" ],
					"patching_rect" : [ 4740.0, 260.0, 40.0, 22.0 ],
					"text" : "seq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-288",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "bang" ],
					"patching_rect" : [ 4870.0, 80.0, 65.0, 22.0 ],
					"text" : "t b s b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-289",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5000.0, 110.0, 44.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-290",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5050.0, 110.0, 51.0, 22.0 ],
					"text" : "panic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-291",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4920.0, 110.0, 100.0, 22.0 ],
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-292",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5120.0, 200.0, 107.0, 22.0 ],
					"text" : "prepend write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-293",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 4840.0, 300.0, 51.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-294",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4920.0, 330.0, 65.0, 22.0 ],
					"text" : "ended 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-295",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4920.0, 360.0, 135.0, 22.0 ],
					"text" : "s chain_to_engine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-296",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 4840.0, 330.0, 79.0, 22.0 ],
					"text" : "delay 150"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-297",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4780.0, 330.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 744.0, 360.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-298",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4780.0, 300.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-299",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 40.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 740.0, 384.0, 40.0, 18.0 ],
					"text" : "loop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-300",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4840.0, 360.0, 72.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-301",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 4740.0, 400.0, 79.0, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-302",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4740.0, 430.0, 130.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "chain_shaper.js",
						"parameter_enable" : 0
					}
,
					"text" : "js chain_shaper.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-303",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4940.0, 400.0, 114.0, 22.0 ],
					"text" : "prepend octave"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-304",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 5070.0, 400.0, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 734.0, 328.0, 40.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-305",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 28.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 704.0, 330.0, 28.0, 18.0 ],
					"text" : "oct"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-306",
					"items" : [ "off", ",", "minpent", ",", "dorian", ",", "wholetone", ",", "major" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4940.0, 460.0, 90.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.0, 362.0, 90.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-307",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4940.0, 430.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-308",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4940.0, 490.0, 107.0, 22.0 ],
					"text" : "prepend scale"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-309",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 40.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 544.0, 364.0, 40.0, 18.0 ],
					"text" : "scale"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-310",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 5060.0, 460.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 682.0, 358.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 100 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "v3_keep",
							"parameter_mmax" : 100.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "keep %",
							"parameter_type" : 0,
							"parameter_unitstyle" : 5
						}

					}
,
					"varname" : "v3_keep"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-311",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5060.0, 520.0, 100.0, 22.0 ],
					"text" : "prepend keep"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-312",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5000.0, 80.0, 107.0, 22.0 ],
					"text" : "r chain_panic"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-313",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 4740.0, 560.0, 125.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, 2, "@autosave", 1, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[2]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~[2]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "FM8.vst3",
							"plugindisplayname" : "FM8",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "12082.VMjLgjxK...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fSNzjiKvrjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3xX5IzMyT0ZqQEQT0lUGsTSY4xcVAmVI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKtjFRB4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKIYzchYFdYkUbmQEcJEUXHMSctjiV5YjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtfjKt3hKD4hKt3hYB4hKt3xctX1RtfzPtPmKtvjKyHjK24hKL4BQC4hct.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKtfkct3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hKhIkZPgWRsgVcCIELFUEMwT0LwHkRnAiPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3BTC4hKt3hPAYWXtfzQtrVPPgkK1YjKl4hYQ4xMF4BdAAUVtvzQtnWP1MjKt3hKJEDTY4BRG4xZAAUXtnlQtbVPtnkKtHjKSEDTX4BVG4xYAYWVtPkQtHkKt3hKyPjKmEjKi4hZF4RLAAUVt3hPtjTPlElKLcjK5EjYh4BUG4xbAAUVtLiQtnWP1IlKt3hKt3hKt3hKt3xJqrxJqLjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtDjKt3hKD4hKt3hYt3hKt3xPt3hKtfEQtzTPt3jKDEjKt3hKU4BRG4xYAYVXtvzQt7VPPkkKyXjK5EjKH4BQD4hdA4xXtPjQtjVP1okKLcjKI4hKt3hct3hKt.UTtf0QtTWPtDlKXcjKuEjYg4hXF4hYt3BUtPjQtnVPtLjKt3hKGEjKg4xMF4RZAYmVtPkQtPWP1IlKtbjKuEDTY4hcF4hTt3hKtnGQtbVPtDlK1YjKqEjKi4hKB4RRAYVXtvzQtnWPlIlKTcjKyEDTY4xLF4hdAYmXt3RPt3hK1MkKPcjKtEDTY4BRG4hYt3BUtnlQtbVPlElK2XjK04hcR4BUF4BMAYmXt3lKt3hKtPkKTYjK3EjcX4BUG4RdAYmXtnlQtDSPPkkKt4hKt3hKT4hZF4xYAYVXtbiQtTmK1IkKTYjKzDjch4hZt3hKt3BUtfzQtTWP1gkKTYjK4Ejch4BUF4hZAAkPt3hKtLUPPQlKyXjK5EjKZ4hKB4BTAAEVt.kQtjjKt3hKLUjKzDjYg4BTG4haAAUVt.0Qt7VP1gkKt3hKt3hcA4hKt3xQt3hKtXWQt3RP1gkK2XjKxEjcg4BRG4RPt3hKt3xPtDkKt3hK1UjKtDjKY4BUF4RLAAkVtvjQtrVPtLlKpcjK1EDTY4BVF4hbAAEVtHlQtjWPP4hKt3hK24hcB4hKt3hXA4BTtvzQtTWPPMlKyXjKpEjKi4hZG4hcAAUVtPjKt3hKtvjKh4hKt3hKW4hKD4hdAAUVtnmQtXWP1ElKD4hKt3hKL4BVt3hKt3xUt3BQtDSPPkkKHcjKxEjYA4hKt3xctX1RtH1PtPmKPwjKPMjKF4hKt3hcE4hKAY1XtPkQtfWPPElKX4hKt3BTL4xLB4hLtX1RtPzPtnmK1EjKt3hKhEjKP4BVG4xaAYmXtnlQtfVPP4hKt3hK14BTt3hKt3hKt3hKtfjKt3hKtD0Tqo1TzDjKt3hK2UjKt3hKt3hKtDjKt3hKlEiXuQiUt3hKt3hKt3hKtXFNpIUQXgGM3oTTZIzQwEUN4MWNnMzLV4hKt3hKt3hKPoGUIQCUj4hKt3RPt3hKtXVPt3hKt3hKt3hKD0TUR4TQt3hKt.kKt3hKtDjKt3hKD4hKt3BTt3hKt3RVt3hKtPjKt3hKlEjKt3hKF4hKt3BTE4xaAAUXtfjQtfWPPkkKD4hKt3hKB4hKt3BRAAEVtfzQtLWP1ElKyXjKuEjcX4hKt3hKt3hKt3xLOIjKt3hKD4hKt3BTt3hKt3hQt3hKt.EQtrVPtLlKTcjKzEDTY4hKt3hKt3hKt3xLOMjKt3hKH4hKt3BTt3hKt3hRt3hKtfDQtfWPPokKhYjKtEjKi4xLF4xZAYmXtvzQt3hKt3hKt3hKtjyTt3hKt3xPt3hKtPjKt3hK1EjKt3hKEEjYg4BVG4hYt.ETtnmQtnWPt3hKt3hKt3hKlsBTt3hKt3RPt3hKtDjKt3hKl4hKt3hYU4BUF4hbAYWXtvjQt7VPtLlKpcjKt3hKt3hKt3hK4LUPt3hKtTjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqDlKt3hKP4hKt3hKB4hKt3BRt3hKtXVTtXVQtDjKt3hKX4hKt3BTP4hdF4RcAA0XtLiQtnWPt3hKt3hKt3hKlshaA4hKt.kKt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrhPt3hKtPjKt3hKtDjKt3hKH4hKt3BTE4xaAAUXtfjQtXlKPEkKyXjKwDDTt3hKt3hQt3hKtPDQtnWPtLlKDYjKoEjcZ4hKt3hKt3hKt3xLOYjKt3hKD4hKt3BTt3hKt3RQt3hKt.EQtrVP1gkKDYjKzDjKt3hKt3hKt3hYqHlKt3hKl4hKt3hKA4hKt3hXt3hKtXGUtP0QtjWPtLlKDYjKuEjYg4hKt3hKt3hKt3xLOgjKt3hKL4hKt3BTt3hKt3xQt3hKtfTQtrVPtDlKTYjKmEjch4BUF4hKt3hKt3hKt3RNSIjKt3hKD4hKt3BQt3hKt3RPt3hKtbjKt3hKDQjKyEjKh4hKB4RQAYVXtf0QtDjKt3hKh4hKt3BTP4BTG4hdAAEVtvjQtDWPtfjKt3hKt3hKt3hKy7TTt3hKtPjKt3hKP4hKt3hKE4hKt3BTD4xZAYGVtPjQtPSPt3hKt3hKt3hKlsBRA4hKtXlKt3hKtDjKt3hKh4hKt3hcT4BUG4RdA4xXtPjQt7VPlElKt3hKt3hKt3hKy7zTt3hKtvjKt3hKP4hKt3hKG4hKt3BRE4xZA4RXtPkQtbVP1IlKTYjKt3hKt3hKt3hK4LTQt3hKtPjKt3hKD4hKt3hKA4hKt3hQt3hKtbCQt.SPtLlKtbjKvDjKi4BQt3hKtXVPt3hKtXUP1ElK1YjKvDDTg4BUF4hKt3hKt3hKt3RNoMjKt3hKA4hKt3BQt3hKt3hPt3hKtXUPPkkK1YjK0EjcX4hZF4hdAAEYt3hKt3hKt3hKtLySP4hKt3BRt3hKt.kKt3hKtjjKt3hKLUjK5EjYh4hKB4xUAAkVt.kQtnWPtnkKt3hKt3hKt3hKy7zSt3hKtvjKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJq7TPt3hKtDjKt3hKP4hKt3hct3hKt3BSAYVTtbCQtDjKt3hKP4hKt3hYT4BQF4hdAAUVt3hKt3hKt3hKtLySJ4hKt3BQt3hKt.kKt3hKtbjKt3hKXUjKuEjYX4BRG4xYA4xXtbiQt3hKt3hKt3hKtjSdB4hKt3hPt3hKtPjKt3hKlEjKt3hKTEDTZ4hdF4BZAYlXtPkQt3hKt3hKt3hKtjyPC4hKt3xPt3hKtPjKt3hK1EjKt3hKTEjYh4BUF4xbAYWXtXmQtTWPt3hKt3hKt3hKlshdt3hKt3RPt3hKtDjKt3hKP4hKt3hct3hKt3RPAYlXt3xQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlshYH4hKt.kKt3hKtDjKt3hKP4hKt3hcT4BTG4xZA4hXt3hKt3hKt3hKtLySUIjKt3BRt3hKt.kKt3hKtPjKt3hKhQjKmEjKi4BUF4hKt3hKt3hKt3RNSglKt3hKC4hKt3BQt3hKtXWPt3hKtLUPtnkKTcjKrEjYY4hcF4xZA4hKt3hKt3hKtX1J5gjKt3hKA4hKt3RPt3hKt.kKt3hKPEjKt3hKMEjcg4BRG4hcA4hVtPjKt3hKP4hKt3hKXEjKt3hKt3hKt3hYqPUPt3hKP4hKt3hKA4hKt3BQt3hKt.kUt3hKt3hKt3hKtLySV4hKt3BRt3hKt.kKt3hKtTjKt3hKHUjKzEjKY4hKB4BVA4hKt3hKt3hKtX1JhEjKt3hct3hKt3RPt3hKtPkKt3hKlQkKyXjKpEjKH4hZE4hKt3hKt3hKt3RNCYjKt3hKD4hKt3BQt3hKtXlKt3hKtXjKt3hK5QjKmEjch4BTG4xZAYlXtPjKt3hKlEjKt3hKOEDTi4BTG4hcAA0Xt.0Qt3hKt3hKt3hKtjyPi4hKt3RPt3hKtPjKt3hKPEjKt3hKIEjYg4hKG4BLA4xXt3hKt3hKt3hKtLySvDjKt3BRt3hKt.kKt3hKtHjKt3hKT4hKt3hKT4hZF4hdAYGVtXlQtDjKt3hKP4hKt3hKU4BUG4BcAAUVt3hKt3hKt3hKtLySwDjKt3BQt3hKt.kKt3hKtjjKt3hKPUjK3EDTX4xLF4RdA4hXtbiQtjWPPkkKt3hKt3hKt3hKy7jLA4hKtfjKt3hKP4hKt3hKA4hKt3BVt3hKt.UUtLiQt7VP1IlK2XjKzEDTt3hKt3hQt3hKt.EQtrVPtLlKTcjKzEDTY4hKt3hKt3hKt3xLOQSPt3hKD4hKt3BTt3hKt3RPt3hKtPkKt3hK1EkK1YjKuEjKY4BUF4RPt3hKt.kKt3hKtTkKpYjKyEDTY4hKt3hKt3hKt3xLOsRPt3hKD4hKt3BTt3hKt3hPt3hKtHlKt3hKPQkKTcjKmEjKg4hZF4hdAAEYtPjKt3hKlEjKt3hKAEjYg4BQF4hbAYWXtHlQt3hKt3hKt3hKtjyPl4hKt3RPt3hKtPjKt3hK1EjKt3hKDEDTZ4hXF4xaA4xXtPjQtHWPt3hKt3hKt3hKlsBTH4hKtXlKt3hKtDjKt3hKl4hKt3BTA4hKt3BQAYlXtnlQtDSPPkkKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4j1Qt3hKtDjKt3hKD4hKt3BTA4hKt3BQAYlXtnlQtDSPPkkKt3hKt3hKt3hKy7TYt3hKtfjKt3hKP4hKt3hKD4hKt3BTE4RcAYVXtPkQt3hKt3hKt3hKtjyPH4hKt3xPt3hKtPjKt3hKtDjKt3hKBEDTX4BSG4RdA4hKt3hKt3hKtX1JDIjKt3hKA4hKt3RPt3hKtHlKt3hKlUkK2XjKxEDTi4hdF4xZA4BRt3hKt3hKt3hKtLySn4hKt3BUt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrRcA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJG4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJo4hKt3BTt3hKt3BRt3hKt.kKt3hKtTkKTcjKnEDTY4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RN4gjKt3hKA4hKt3BQt3hKtXVPt3hKtXUP1ElK1YjKvDDTg4BUF4hKt3hKt3hKt3RNSkjKt3hKB4hKt3BQt3hKt.UPt3hKtPTPlIlKpYjKwDDTY4hKt3hKt3hKt3xLOolKt3hKL4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJOEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqTjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqDlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqrRPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrBRt3hKtPjKt3hKtHjKt3hKG4hKt3BSD4xYAYFVtnlQtPWPPkkKPcjKA4hKt3BVt3hKtX2TtLiQtTmK1MkKXYjKrEjKt3hKt3hKt3hYqfkPt3hKP4hKt3hKA4hKt3BTt3hKt3RUtn1QtXWPPkkKt3hKt3hKt3hKy7Tat3hKtfjKt3hKP4hKt3hKD4hKt3BSE4xaAYFYtPkQt3hKt3hKt3hKtjyPJ4hKt3xPt3hKtPjKt3hK14hKt3hKAEDTZ4BRG4hKt3hKt3hKt3RNSojKt3hKD4hKt3BQt3hKt3RPt3hKtHTPPgkKLcjK4EjKt3hKt3hKt3hYq3lPt3hKPEjKt3hKA4hKt3BVt3hKt3RUtfzQtrVPlgkK1YjKqEjKt3hKt3hKt3hYqHmPt3hKlEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqbjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqjlKt3hKP4hKt3hKH4hKt3hYt3hKtXGUtXlQtrVPtDlKXYjKl4BTQ4BQE4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1J1IjKt3BTt3hKt3RPt3hKt.kKt3hKtLkKtTjKl4hKV4hKt3hKt3hKt3xLOMmKt3hKH4hKt3BTt3hKt3BQt3hKtXGQt.UPtfjKpUjKt3hKt3hKt3hK4j1Rt3hKtLjKt3hKD4hKt3hKA4hKt3BRA4BUt3hPtfUPt3hKt3hKt3hKlsxMB4hKt3RPt3hKtDjKt3hKP4hKt3hKR4hKE4hYt3hUt3hKt3hKt3hKtLyS14hKt3BUt3hKt.kKt3hKtXjKt3hKXUjK0EjKg4BUG4xbAAUVt3hKt3hKt3hKtLyS24hKt3BVt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxJA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJH4hKt3BQt3hKt3hPt3hKtbjKt3hKtTjKqEDTX4hbF4hYt.UTtPTQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlsBRC4hKt.kKt3hKtDjKt3hKl4hKt3hKT4BUF4xYAYmVt3hPtbmKtfjKlUjKt3hKt3hKt3hK4jGSt3hKtHjKt3hKD4hKt3hKB4hKt3BTAAUVtPjQtDWPtfjKDMjKl4BTV4hKt3hKt3hKt3xLOomKt3hKL4hKt3BTt3hKt3BRt3hKt3RQtrVPPgkKxYjKl4hYL4hKB4BVA4hKt3hKt3hKtX1JXMjKt3hKA4hKt3RPt3hKtnlKt3hKtPkKTYjKmEjcZ4hKB4Bdt3BRtnVQtXlKt3hKt3hKt3hKlshXC4hKt.UPt3hKtDjKt3hKH4hKt3BTT4BQC4hKt3hKt3hKt3RNS0jKt3hKF4hKt3BQt3hKtXlKt3hKtDUPlwjKt3hKt3hKt3hKy7zLt3hKtHlKt3hKP4hKt3hKF4hKt3BVE4RcA4RXtP0QtLWPPkkKt3hKt3hKt3hKy7DMt3hKtXlKt3hKP4hKt3hKH4hKt3hYt3hKt3RUtPjQtHWP1okKtHjKWEDTX4hYF4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JtMjKt3BTt3hKt3RPt3hKtPkKt3hKPMkK2XjKvDjKi4hYF4hKt3hKt3hKt3RN44jKt3hKB4hKt3BQt3hKt3hPt3hKtzTP1ElKPYjKxDjKZ4BUF4xZA4RXt3hKt3hKt3hKtLyS23hKt3BSt3hKt.kKt3hKtPjKt3hKLUjKuEjYj4BUF4hKt3hKt3hKt3RNS8jKt3hKD4hKt3BQt3hKtXVPt3hKtHTPlIlKpYjKsEjKZ4BTG4hKt3hKt3hKt3RNo8jKt3hKE4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJg4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJqDjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqfjKt3hKD4hKt3hKB4hKt3hQt3hKt3RQt3VPPgkKLcjKqEjYh4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RN48jKt3hKA4hKt3BQt3hKt3RPt3hKtHUPPgkKPcjKqEjKt3hKt3hKt3hYq3BQt3hKl4hKt3hKA4hKt3hXt3hKtX1TtbiQtnWP1gkKlYjKqEjch4hKt3hKt3hKt3xLOgTPt3hKL4hKt3BTt3hKt3RQt3hKtvDQtTWPtDlK2XjK3EjKt3hKt3hKt3hYqPDQt3hKtDjKt3hKA4hKt3hZt3hKtXGUtH1QtrVPPkkKtbjKl4BTS4hZF4BcA4hKt3hKt3hKtX1JLQjKt3BTA4hKt3RPt3hKtnlKt3hK1QkKhcjKqEDTY4hKG4hYt.0TtPjQtLSPt3hKt3hKt3hKlsBTD4hKtXVPt3hKtDjKt3hKX4hKt3hYT4xMF4hdAAEVt.0QtrVPt3hKt3hKt3hKlsBRD4hKtXWPt3hKtDjKt3hKh4hKt3hKQ4BRG4BMAY2RtHVQtrVPtLlKt3hKt3hKt3hKy7jQA4hKtXlKt3hKP4hKt3hKH4hKt3hXt3hKtXVTtXmQtbVPlElKhYjKqEjYh4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RNSIkKt3hKA4hKt3BQt3hKt3RPt3hKtHUPPgkKPcjKqEjKt3hKt3hKt3hYq3FQt3hKl4hKt3hKA4hKt3BTt3hKtXGUtn1QtPWP1gkKt3hKt3hKt3hKy7zSA4hKtvjKt3hKP4hKt3hKF4hKt3BSE4hdAAEVt.0Qt7VP1gkKt3hKt3hKt3hKy7zRA4hKt.kKt3hKP4hKt3hKE4hKt3BTD4xZA4hXt.0Qt3VPt3hKt3hKt3hKlshcD4hKt.UPt3hKtDjKt3hKT4hKt3hcP4xMF4hbAYWXtfzQt3hKt3hKt3hKtjyTS4hKt3hQt3hKtPjKt3hKlEjKt3hKREjcg4BTG4xYA4xXtPkQt3hKt3hKt3hKtjSZS4hKt3xQt3hKtPjKt3hK1EjKt3hKDEjYh4hZG4RctXWUtPkQtnWPt3hKt3hKt3hKlsBQE4hKt3hPt3hKtDjKt3hKl4hKt3hcA4hKt3BUAYlXtPkQtLWP1ElK1YjK0EDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOIUPt3hKD4hKt3BTt3hKt3BQt3hKtfTQtbVPtLlKTYjKt3hKt3hKt3hK4jGUt3hKtHjKt3hKD4hKt3hKA4hKt3xTAAEYtLiQtjVPt3hKt3hKt3hKlsBUE4hKtXmKt3hKtDjKt3hKp4hKt3BTR4xLF4hdAAUVtLiQtjWPPokKPcjKzDjKt3hKt3hKt3hYq.UQt3hKtDjKt3hKA4hKt3BVt3hKtXGUt.0QtrVPlIlKTYjK0EjKt3hKt3hKt3hYqfUQt3hKPEjKt3hKA4hKt3BUt3hKtXWUtnlQtnVPtLlKlYjKt3hKt3hKt3hK4jWUt3hKtXjKt3hKD4hKt3hYA4hKt3RPA4xXt.0QtbVP1gkKxYjKt3hKt3hKt3hK4LjUt3hKtbjKt3hKD4hKt3BTA4hKt3BQAAUVtvjQtbVPPQlKt3hKt3hKt3hKy7TVA4hKtXlKt3hKP4hKt3hKH4hKt3BVt3hKtXFUtPkQtDSPPkkKHcjKnEDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOoUPt3hKD4hKt3BTt3hKt3BQt3hKt.UQt7VPPElKTYjKt3hKt3hKt3hK4L0Ut3hKtHjKt3hKD4hKt3hYA4hKt3hPAYlXtnlQtzVPtnkKPcjKt3hKt3hKt3hK4LzUt3hKtLjKt3hKD4hKt3hYA4hKt3BUAYlXtPkQtfVPtDlKTYjKt3hKt3hKt3hK4j1Ut3hKtPjKt3hKD4hKt3hcA4hKt3BQAYlXtn1QtTmK1UkKTYjK5EjKt3hKt3hKt3hYqHWQt3hKPEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqXjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqTlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJq7jPt3hKtDjKt3hKl4hKt3BTB4hKt3BTAYmXtn1QtXlKtDkKTYjKxEDTX4hZG4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1J2TjKt3BTt3hKt3RPt3hKt.kKt3hKtTkKpYjKyEDTY4hKt3hKt3hKt3xLOcVPt3hKH4hKt3BTt3hKt3BRt3hKtfEQtrVPPkkKPYjKnEDTX4BSF4RbA4hKt3hKt3hKtX1JPYjKt3hct3hKt3RPt3hKtHlKt3hKlQkKTYjKwDDTY4BRG4RdAAUVt3hKt3hKt3hKtLySnEjKt3BTt3hKt.kKt3hKtXjKt3hKLUjK5EDTY4BRG4xZAYWXt3hKt3hKt3hKtLySsEjKt3BUt3hKt.kKt3hKtXjKt3hKPQjKqEjKi4BUG4BcAAUVt3hKt3hKt3hKtLySoEjKt3BVt3hKt.kKt3hKtTjKt3hKtTjKuEjKi4BSF4haA4hKt3hKt3hKtX1JTYjKt3hcA4hKt3RPt3hKtHlKt3hKtDkKHcjKzDjcK4hXE4xZA4xXt3hKt3hKt3hKtLySlEjKt3hYt3hKt.kKt3hKtfjKt3hKp4hKt3hcP4hYF4BdA4BRt.EQtrVPtDlKDYjKzDDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOUWPt3hKD4hKt3BTt3hKt3BQt3hKt.UQt7VPPElKTYjKt3hKt3hKt3hK4LjVt3hKtHjKt3hKD4hKt3hYA4hKt3BSAYWXt3hPtLTPPMlKPcjKt3hKt3hKt3hK4LUXt3hKtLjKt3hKD4hKt3hYA4hKt3BRAAkVt3hPtLTPPMlKPcjKt3hKt3hKt3hK4LTXt3hKtPjKt3hKD4hKt3hKB4hKt3hQAAUVtPkQtnVPlgkKDYjKoEjcZ4hKt3hKt3hKt3xLOEWPt3hKT4hKt3BTt3hKt3BRt3hKtnGQtTWPtjkKtHjKREDTX4BTG4xZA4hKt3hKt3hKtX1JDcjKt3hYA4hKt3RPt3hKtnlKt3hKPMkK2XjKpEjKH4BTD4xZA4hXt.0Qt3VPt3hKt3hKt3hKlshaF4hKtXWPt3hKtDjKt3hKh4hKt3hKQ4BRG4BMAY2RtHVQtrVPtLlKt3hKt3hKt3hKy7jcA4hKtXlKt3hKP4hKt3hKt3hKt3BQt3hKt3RTSslZSoWPt3hK1oWPt3hKt3hKt3RPt3hKtXVLh8FMV4hKt3hKt3hKt3hYPsDT0TlbyklSRQWN0fUT2rTcDAiPGcjKt3hKt3hKt.kdTkDMDMlKt3hKA4hKt3BS1EjKt3hKt3hKtPTSUIkSMcjKt3BTt3hKt3BVt3hKt3hKt3hKtD0Tqo1TA4hKt3BQt3hKt.kKt3hKtDjKt3hKDAESS4hKtnTXt3hKHAESS4hKX4hKP4hYTYmKt0zUZQWP5EjKA4BQq41SgoDQAEmXgoGcFYUV3M0L5Y1XlEDTT4hPtLDT5QURzPDTo4RNAMjKD4hKyEjKyEjPBEjdyQjYP4BRt3hdHY1S1QEThkiVSIDUBQTSvHEbjAmcOc2Qu0lVXEmYjIjcx3hdKYVY2kkKMIjKqETMM4BUtfTZEYGLO4hPAYlKtHjdM0lX1UEQN0TV5kmYx4RP23jPt3BStfzQHAkTos1QPgFUPMELIIiVzblKH8jXPM0ZQcEVxcmUZkVP5IzQLACV3UjQik1YVQlYXEjKq3BctLDSPAkKt3hYlciKtXlP3EjY04hKt3xSHckK5cjKC4hKl4BdC4xPtf0UT4BTt3hKRITPtLCQt3BTO4hdtXVY2cjYA4BR1DjSAMjKD4hKOEzLC4hKPMkKN4hKLAUdLkmbOYlc14xJtkEaY4hdE4xStLiKhEDRJ4RNAElK5QjKA4xLGIlKP4hK3QjYyoDTt3BdBYVSt.kKtnmPtDjKHk1PF4hKq3BTG4hdtX1St3hKq3BTG4hdt3xPt.0RtTiKl0TLBsBVUUlS1j2TjgkdOQWR2MiKMwDTt3RMG4hPt3xZAMyPl8jKtX1MA4hUFgGVtXFSHMjKtjkYL4hKhEDdt3hcHgzPtvjKtLVQt3xQ3slKtbDRC4hdB4RStLCSt3BRGETLtXlKtLyRLIzLCwTPPEWP54hKC4hK14BdV4haHgTdA4BdlIlKtTiP3ETP3zjKhIDdA4hYKgzPt3xblwjKtXlQ3gjKlkDRG4RNtjmK2HjKi4BTC4BSt3hcCgTatnmTtfiP1sTPtTiYhUDTo4RNIsTP5giKyQDTWIjYrYlXEA0UBomTlUGdqY1S4MiYtXlQAoGTtDjdQ4xXhAkKt3lKt3BTt3BQH4hKBMiYtHzLm4BYlYlKloWPy3hKP4BZHECTMIDYD4hKN4hbtX1JlElcH4hdIMiQ23xL0DjKtDjKF4RP2TlKD0jRl4hKFQjYx3hKtTWPP4lKPQjKQ4BRtfjZh4hKpgTMtnWPt3haHIDRpEkKy4xLr4hKtYWPT0jYsUlUAgjYIcFR54hRAYVNCEjdAczLlMjMBIDTnM0ZHclbEEjK4LDQDEVSXcDRlYlPWgDVGgjKjQjbNg0QH4BbCoDSXcjatHFdjYGTw4ja3ETSIE2JAYzSLgjc2UVS3.kLYUFZCkEMJUiSDgkUMY2MkMiVQ4RVv3BYt3hKlUjbyoFUEA0PDEjKtfiSV8lPTcCM3MGT2sha5MzXHYSUOQDTOIVP0QUXnAUYxk2Ltb2QrUFRDgjRwIGTDkkd14RPQcWdRQDTg4lYmk0XmAEcMUGbBQSTMUiPwLjSyfmR34DUwXCRAEkZGUTPCgiVQEyPwPjPXU1Rp4RLAsjcyX1UVQESYIycPYyTFckPAYEZGo1YLg1T5olbYIUTloFRC4RNoYFaJYFTtXGa1ETTJcDVtX0Xt.SQPMDS1QjaQAGTtLlYtTCVqDjYiclKqUDSvXFNl4xbhgGRlgiYtbGLXciY3XlK2kVSYY1XlUTcTk2YBUELR41QTMTSC8FTGkVYBUTSzHmZHQjQkMESXEFR1oWLWgDV4ImYTQTZy.UdxYSREMVUzYjT5gTRCITYjomXzHzcSEUSMQjKt3hKPQTcig1P3.ULV8jZGw1RAEkcksRYBgSS1olT5gDTSQULt31SHYFQlkyPAIzPAcGZA4RNCk2M3MiRN4BQBIDVNUzMXgWPtLlKDcSL4UyPMEySGE2S5gCT5gEN3LUQ2fWPXcER1M2byUDVGIFTIkTRm8DNmYTb43hdG4xcCgURI4hVxkiKXkTPFMjPhIWNPEjUFg0LAUmXJY2SsIDYzfCSsIDY3jFNmYTbOEVXgE1JXgyYFQyPPIUStv1TAU2St7lZBsBToASNXUla2MyToAyQBgTZTAES4PkcK01LCAkUIYVXgE1RXcjK3MjYIMiKX4TQhkiKTkkKz7lKEcCduYlbC4hTBYTVt7FRPUmKp0lKi4hc2DjUn4hYIgjZAQTQmc2atfjVxQlYAImKxkCToY1X14RQ2fWR23BQ2HjYtcWMCcyPlkmcA4RPDAUaHY2QZImSXUlKTYlK33BTGEjdDIzLwDSLtXEctzzYAYUYtcWNHE2S5QjStHmK54zY2kDTh4RNDMjKnEmYG4hKtbmctrBVrkEaAEiKmYGMYImKn8jYscmKtL0P1cjKNETRA4TPLQDZDYValMkKgklKRkGSCY1P1IjKOEzLCIlctH2QE4TNtjiPCgDTYwVVBMCRxclKxPiMkYVSm4xL0DUTlMjcPY1Zt4hQzQFUlETPy.kZHEDVyTSPq.kKHslP4L0PtPkdmYWVyDDVt.ETtjiPC4Baw4RZAAEStHjKt3hLIo1QlshPAkySL4hYoYFLpk0LtPmKVEDRtXlSFYlKt3TSLwjKTgFSiYmYLYTP1kDSt3BVHgUMJ4jKSEjZUYlLCMzPlwVVrYyPHkVPN4RSA4jQtHldLYVdtjTPPwlTlklYEY1S1ojKtMzLHoWPyHjKt3hZAQVPw4RNt3BQRokYH4xLA4hKtPlKBsjYOYWUlklKtHDTF4hVtbCQAAkUIYVX2ojKAYVROIDQtXlbBEjZvTmMzYiSPsjKN4hKtXWRtvlKtTiYN4BYtfWRBgEQYoVP3gkYScmYCQEQtTTUDgDbtXjKt.kQH4BS1IkKxomTlcmKynkKtLCUx0zL34hKyrjXE4xJCkSQtvDZ3MjKt3BRHk1RogjKPgmK1oTPFQUNlwDTtX2RpgEVsgFalA0YPsjP3EjYH4haI4BZAYFRt.ETtfWSlwlKHgTPZIDclYjaI4hYAY1PPIjKh4xLtnlKH4hKZcjYggyTlUGQtnzS23RbzXEVnUDZjY1Pt3RPtfjKl4hKtjEQ5UkYtXmKoEUag8FN5shKDclag0lT14RPt3hYNITVA4BbPg1S2MTPPcjKncjKLA0bDMyTxIzL3LjKy7lPt3hYDg2LtDjctj2ZVMVaIQTRtXFcyHDVD4BbtHjQtnVPHMDSBwlYMYGRRMjQtXjXFIldMYkUTACQYYWcPMDZUY0YA4hKt3hKt3hKt.kKt3hKt3BQt3hKt3hKt3hKtvyKIMzasA2atUlaz4COIUDYoQ2Pu4Fcx8FarUlb9.iK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FM8",
									"origin" : "FM8.vst3",
									"type" : "VST3",
									"subtype" : "Instrument",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "FM8.vst3",
										"plugindisplayname" : "FM8",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "12082.VMjLgjxK...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fSNzjiKvrjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3xX5IzMyT0ZqQEQT0lUGsTSY4xcVAmVI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKtjFRB4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKIYzchYFdYkUbmQEcJEUXHMSctjiV5YjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtfjKt3hKD4hKt3hYB4hKt3xctX1RtfzPtPmKtvjKyHjK24hKL4BQC4hct.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKtfkct3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hKhIkZPgWRsgVcCIELFUEMwT0LwHkRnAiPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3BTC4hKt3hPAYWXtfzQtrVPPgkK1YjKl4hYQ4xMF4BdAAUVtvzQtnWP1MjKt3hKJEDTY4BRG4xZAAUXtnlQtbVPtnkKtHjKSEDTX4BVG4xYAYWVtPkQtHkKt3hKyPjKmEjKi4hZF4RLAAUVt3hPtjTPlElKLcjK5EjYh4BUG4xbAAUVtLiQtnWP1IlKt3hKt3hKt3hKt3xJqrxJqLjKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKtDjKt3hKD4hKt3hYt3hKt3xPt3hKtfEQtzTPt3jKDEjKt3hKU4BRG4xYAYVXtvzQt7VPPkkKyXjK5EjKH4BQD4hdA4xXtPjQtjVP1okKLcjKI4hKt3hct3hKt.UTtf0QtTWPtDlKXcjKuEjYg4hXF4hYt3BUtPjQtnVPtLjKt3hKGEjKg4xMF4RZAYmVtPkQtPWP1IlKtbjKuEDTY4hcF4hTt3hKtnGQtbVPtDlK1YjKqEjKi4hKB4RRAYVXtvzQtnWPlIlKTcjKyEDTY4xLF4hdAYmXt3RPt3hK1MkKPcjKtEDTY4BRG4hYt3BUtnlQtbVPlElK2XjK04hcR4BUF4BMAYmXt3lKt3hKtPkKTYjK3EjcX4BUG4RdAYmXtnlQtDSPPkkKt4hKt3hKT4hZF4xYAYVXtbiQtTmK1IkKTYjKzDjch4hZt3hKt3BUtfzQtTWP1gkKTYjK4Ejch4BUF4hZAAkPt3hKtLUPPQlKyXjK5EjKZ4hKB4BTAAEVt.kQtjjKt3hKLUjKzDjYg4BTG4haAAUVt.0Qt7VP1gkKt3hKt3hcA4hKt3xQt3hKtXWQt3RP1gkK2XjKxEjcg4BRG4RPt3hKt3xPtDkKt3hK1UjKtDjKY4BUF4RLAAkVtvjQtrVPtLlKpcjK1EDTY4BVF4hbAAEVtHlQtjWPP4hKt3hK24hcB4hKt3hXA4BTtvzQtTWPPMlKyXjKpEjKi4hZG4hcAAUVtPjKt3hKtvjKh4hKt3hKW4hKD4hdAAUVtnmQtXWP1ElKD4hKt3hKL4BVt3hKt3xUt3BQtDSPPkkKHcjKxEjYA4hKt3xctX1RtH1PtPmKPwjKPMjKF4hKt3hcE4hKAY1XtPkQtfWPPElKX4hKt3BTL4xLB4hLtX1RtPzPtnmK1EjKt3hKhEjKP4BVG4xaAYmXtnlQtfVPP4hKt3hK14BTt3hKt3hKt3hKtfjKt3hKtD0Tqo1TzDjKt3hK2UjKt3hKt3hKtDjKt3hKlEiXuQiUt3hKt3hKt3hKtXFNpIUQXgGM3oTTZIzQwEUN4MWNnMzLV4hKt3hKt3hKPoGUIQCUj4hKt3RPt3hKtXVPt3hKt3hKt3hKD0TUR4TQt3hKt.kKt3hKtDjKt3hKD4hKt3BTt3hKt3RVt3hKtPjKt3hKlEjKt3hKF4hKt3BTE4xaAAUXtfjQtfWPPkkKD4hKt3hKB4hKt3BRAAEVtfzQtLWP1ElKyXjKuEjcX4hKt3hKt3hKt3xLOIjKt3hKD4hKt3BTt3hKt3hQt3hKt.EQtrVPtLlKTcjKzEDTY4hKt3hKt3hKt3xLOMjKt3hKH4hKt3BTt3hKt3hRt3hKtfDQtfWPPokKhYjKtEjKi4xLF4xZAYmXtvzQt3hKt3hKt3hKtjyTt3hKt3xPt3hKtPjKt3hK1EjKt3hKEEjYg4BVG4hYt.ETtnmQtnWPt3hKt3hKt3hKlsBTt3hKt3RPt3hKtDjKt3hKl4hKt3hYU4BUF4hbAYWXtvjQt7VPtLlKpcjKt3hKt3hKt3hK4LUPt3hKtTjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqDlKt3hKP4hKt3hKB4hKt3BRt3hKtXVTtXVQtDjKt3hKX4hKt3BTP4hdF4RcAA0XtLiQtnWPt3hKt3hKt3hKlshaA4hKt.kKt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrhPt3hKtPjKt3hKtDjKt3hKH4hKt3BTE4xaAAUXtfjQtXlKPEkKyXjKwDDTt3hKt3hQt3hKtPDQtnWPtLlKDYjKoEjcZ4hKt3hKt3hKt3xLOYjKt3hKD4hKt3BTt3hKt3RQt3hKt.EQtrVP1gkKDYjKzDjKt3hKt3hKt3hYqHlKt3hKl4hKt3hKA4hKt3hXt3hKtXGUtP0QtjWPtLlKDYjKuEjYg4hKt3hKt3hKt3xLOgjKt3hKL4hKt3BTt3hKt3xQt3hKtfTQtrVPtDlKTYjKmEjch4BUF4hKt3hKt3hKt3RNSIjKt3hKD4hKt3BQt3hKt3RPt3hKtbjKt3hKDQjKyEjKh4hKB4RQAYVXtf0QtDjKt3hKh4hKt3BTP4BTG4hdAAEVtvjQtDWPtfjKt3hKt3hKt3hKy7TTt3hKtPjKt3hKP4hKt3hKE4hKt3BTD4xZAYGVtPjQtPSPt3hKt3hKt3hKlsBRA4hKtXlKt3hKtDjKt3hKh4hKt3hcT4BUG4RdA4xXtPjQt7VPlElKt3hKt3hKt3hKy7zTt3hKtvjKt3hKP4hKt3hKG4hKt3BRE4xZA4RXtPkQtbVP1IlKTYjKt3hKt3hKt3hK4LTQt3hKtPjKt3hKD4hKt3hKA4hKt3hQt3hKtbCQt.SPtLlKtbjKvDjKi4BQt3hKtXVPt3hKtXUP1ElK1YjKvDDTg4BUF4hKt3hKt3hKt3RNoMjKt3hKA4hKt3BQt3hKt3hPt3hKtXUPPkkK1YjK0EjcX4hZF4hdAAEYt3hKt3hKt3hKtLySP4hKt3BRt3hKt.kKt3hKtjjKt3hKLUjK5EjYh4hKB4xUAAkVt.kQtnWPtnkKt3hKt3hKt3hKy7zSt3hKtvjKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJq7TPt3hKtDjKt3hKP4hKt3hct3hKt3BSAYVTtbCQtDjKt3hKP4hKt3hYT4BQF4hdAAUVt3hKt3hKt3hKtLySJ4hKt3BQt3hKt.kKt3hKtbjKt3hKXUjKuEjYX4BRG4xYA4xXtbiQt3hKt3hKt3hKtjSdB4hKt3hPt3hKtPjKt3hKlEjKt3hKTEDTZ4hdF4BZAYlXtPkQt3hKt3hKt3hKtjyPC4hKt3xPt3hKtPjKt3hK1EjKt3hKTEjYh4BUF4xbAYWXtXmQtTWPt3hKt3hKt3hKlshdt3hKt3RPt3hKtDjKt3hKP4hKt3hct3hKt3RPAYlXt3xQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlshYH4hKt.kKt3hKtDjKt3hKP4hKt3hcT4BTG4xZA4hXt3hKt3hKt3hKtLySUIjKt3BRt3hKt.kKt3hKtPjKt3hKhQjKmEjKi4BUF4hKt3hKt3hKt3RNSglKt3hKC4hKt3BQt3hKtXWPt3hKtLUPtnkKTcjKrEjYY4hcF4xZA4hKt3hKt3hKtX1J5gjKt3hKA4hKt3RPt3hKt.kKt3hKPEjKt3hKMEjcg4BRG4hcA4hVtPjKt3hKP4hKt3hKXEjKt3hKt3hKt3hYqPUPt3hKP4hKt3hKA4hKt3BQt3hKt.kUt3hKt3hKt3hKtLySV4hKt3BRt3hKt.kKt3hKtTjKt3hKHUjKzEjKY4hKB4BVA4hKt3hKt3hKtX1JhEjKt3hct3hKt3RPt3hKtPkKt3hKlQkKyXjKpEjKH4hZE4hKt3hKt3hKt3RNCYjKt3hKD4hKt3BQt3hKtXlKt3hKtXjKt3hK5QjKmEjch4BTG4xZAYlXtPjKt3hKlEjKt3hKOEDTi4BTG4hcAA0Xt.0Qt3hKt3hKt3hKtjyPi4hKt3RPt3hKtPjKt3hKPEjKt3hKIEjYg4hKG4BLA4xXt3hKt3hKt3hKtLySvDjKt3BRt3hKt.kKt3hKtHjKt3hKT4hKt3hKT4hZF4hdAYGVtXlQtDjKt3hKP4hKt3hKU4BUG4BcAAUVt3hKt3hKt3hKtLySwDjKt3BQt3hKt.kKt3hKtjjKt3hKPUjK3EDTX4xLF4RdA4hXtbiQtjWPPkkKt3hKt3hKt3hKy7jLA4hKtfjKt3hKP4hKt3hKA4hKt3BVt3hKt.UUtLiQt7VP1IlK2XjKzEDTt3hKt3hQt3hKt.EQtrVPtLlKTcjKzEDTY4hKt3hKt3hKt3xLOQSPt3hKD4hKt3BTt3hKt3RPt3hKtPkKt3hK1EkK1YjKuEjKY4BUF4RPt3hKt.kKt3hKtTkKpYjKyEDTY4hKt3hKt3hKt3xLOsRPt3hKD4hKt3BTt3hKt3hPt3hKtHlKt3hKPQkKTcjKmEjKg4hZF4hdAAEYtPjKt3hKlEjKt3hKAEjYg4BQF4hbAYWXtHlQt3hKt3hKt3hKtjyPl4hKt3RPt3hKtPjKt3hK1EjKt3hKDEDTZ4hXF4xaA4xXtPjQtHWPt3hKt3hKt3hKlsBTH4hKtXlKt3hKtDjKt3hKl4hKt3BTA4hKt3BQAYlXtnlQtDSPPkkKD4hKt3hYA4hKt3xSAYVXtbiPt7TPlkkKXYjKt3hKt3hKt3hK4j1Qt3hKtDjKt3hKD4hKt3BTA4hKt3BQAYlXtnlQtDSPPkkKt3hKt3hKt3hKy7TYt3hKtfjKt3hKP4hKt3hKD4hKt3BTE4RcAYVXtPkQt3hKt3hKt3hKtjyPH4hKt3xPt3hKtPjKt3hKtDjKt3hKBEDTX4BSG4RdA4hKt3hKt3hKtX1JDIjKt3hKA4hKt3RPt3hKtHlKt3hKlUkK2XjKxEDTi4hdF4xZA4BRt3hKt3hKt3hKtLySn4hKt3BUt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrRcA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJG4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJo4hKt3BTt3hKt3BRt3hKt.kKt3hKtTkKTcjKnEDTY4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RN4gjKt3hKA4hKt3BQt3hKtXVPt3hKtXUP1ElK1YjKvDDTg4BUF4hKt3hKt3hKt3RNSkjKt3hKB4hKt3BQt3hKt.UPt3hKtPTPlIlKpYjKwDDTY4hKt3hKt3hKt3xLOolKt3hKL4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJOEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqTjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqDlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqrRPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrBRt3hKtPjKt3hKtHjKt3hKG4hKt3BSD4xYAYFVtnlQtPWPPkkKPcjKA4hKt3BVt3hKtX2TtLiQtTmK1MkKXYjKrEjKt3hKt3hKt3hYqfkPt3hKP4hKt3hKA4hKt3BTt3hKt3RUtn1QtXWPPkkKt3hKt3hKt3hKy7Tat3hKtfjKt3hKP4hKt3hKD4hKt3BSE4xaAYFYtPkQt3hKt3hKt3hKtjyPJ4hKt3xPt3hKtPjKt3hK14hKt3hKAEDTZ4BRG4hKt3hKt3hKt3RNSojKt3hKD4hKt3BQt3hKt3RPt3hKtHTPPgkKLcjK4EjKt3hKt3hKt3hYq3lPt3hKPEjKt3hKA4hKt3BVt3hKt3RUtfzQtrVPlgkK1YjKqEjKt3hKt3hKt3hYqHmPt3hKlEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqbjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqjlKt3hKP4hKt3hKH4hKt3hYt3hKtXGUtXlQtrVPtDlKXYjKl4BTQ4BQE4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1J1IjKt3BTt3hKt3RPt3hKt.kKt3hKtLkKtTjKl4hKV4hKt3hKt3hKt3xLOMmKt3hKH4hKt3BTt3hKt3BQt3hKtXGQt.UPtfjKpUjKt3hKt3hKt3hK4j1Rt3hKtLjKt3hKD4hKt3hKA4hKt3BRA4BUt3hPtfUPt3hKt3hKt3hKlsxMB4hKt3RPt3hKtDjKt3hKP4hKt3hKR4hKE4hYt3hUt3hKt3hKt3hKtLyS14hKt3BUt3hKt.kKt3hKtXjKt3hKXUjK0EjKg4BUG4xbAAUVt3hKt3hKt3hKtLyS24hKt3BVt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxJA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJH4hKt3BQt3hKt3hPt3hKtbjKt3hKtTjKqEDTX4hbF4hYt.UTtPTQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlsBRC4hKt.kKt3hKtDjKt3hKl4hKt3hKT4BUF4xYAYmVt3hPtbmKtfjKlUjKt3hKt3hKt3hK4jGSt3hKtHjKt3hKD4hKt3hKB4hKt3BTAAUVtPjQtDWPtfjKDMjKl4BTV4hKt3hKt3hKt3xLOomKt3hKL4hKt3BTt3hKt3BRt3hKt3RQtrVPPgkKxYjKl4hYL4hKB4BVA4hKt3hKt3hKtX1JXMjKt3hKA4hKt3RPt3hKtnlKt3hKtPkKTYjKmEjcZ4hKB4Bdt3BRtnVQtXlKt3hKt3hKt3hKlshXC4hKt.UPt3hKtDjKt3hKH4hKt3BTT4BQC4hKt3hKt3hKt3RNS0jKt3hKF4hKt3BQt3hKtXlKt3hKtDUPlwjKt3hKt3hKt3hKy7zLt3hKtHlKt3hKP4hKt3hKF4hKt3BVE4RcA4RXtP0QtLWPPkkKt3hKt3hKt3hKy7DMt3hKtXlKt3hKP4hKt3hKH4hKt3hYt3hKt3RUtPjQtHWP1okKtHjKWEDTX4hYF4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JtMjKt3BTt3hKt3RPt3hKtPkKt3hKPMkK2XjKvDjKi4hYF4hKt3hKt3hKt3RN44jKt3hKB4hKt3BQt3hKt3hPt3hKtzTP1ElKPYjKxDjKZ4BUF4xZA4RXt3hKt3hKt3hKtLyS23hKt3BSt3hKt.kKt3hKtPjKt3hKLUjKuEjYj4BUF4hKt3hKt3hKt3RNS8jKt3hKD4hKt3BQt3hKtXVPt3hKtHTPlIlKpYjKsEjKZ4BTG4hKt3hKt3hKt3RNo8jKt3hKE4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJg4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJqDjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqfjKt3hKD4hKt3hKB4hKt3hQt3hKt3RQt3VPPgkKLcjKqEjYh4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RN48jKt3hKA4hKt3BQt3hKt3RPt3hKtHUPPgkKPcjKqEjKt3hKt3hKt3hYq3BQt3hKl4hKt3hKA4hKt3hXt3hKtX1TtbiQtnWP1gkKlYjKqEjch4hKt3hKt3hKt3xLOgTPt3hKL4hKt3BTt3hKt3RQt3hKtvDQtTWPtDlK2XjK3EjKt3hKt3hKt3hYqPDQt3hKtDjKt3hKA4hKt3hZt3hKtXGUtH1QtrVPPkkKtbjKl4BTS4hZF4BcA4hKt3hKt3hKtX1JLQjKt3BTA4hKt3RPt3hKtnlKt3hK1QkKhcjKqEDTY4hKG4hYt.0TtPjQtLSPt3hKt3hKt3hKlsBTD4hKtXVPt3hKtDjKt3hKX4hKt3hYT4xMF4hdAAEVt.0QtrVPt3hKt3hKt3hKlsBRD4hKtXWPt3hKtDjKt3hKh4hKt3hKQ4BRG4BMAY2RtHVQtrVPtLlKt3hKt3hKt3hKy7jQA4hKtXlKt3hKP4hKt3hKH4hKt3hXt3hKtXVTtXmQtbVPlElKhYjKqEjYh4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RNSIkKt3hKA4hKt3BQt3hKt3RPt3hKtHUPPgkKPcjKqEjKt3hKt3hKt3hYq3FQt3hKl4hKt3hKA4hKt3BTt3hKtXGUtn1QtPWP1gkKt3hKt3hKt3hKy7zSA4hKtvjKt3hKP4hKt3hKF4hKt3BSE4hdAAEVt.0Qt7VP1gkKt3hKt3hKt3hKy7zRA4hKt.kKt3hKP4hKt3hKE4hKt3BTD4xZA4hXt.0Qt3VPt3hKt3hKt3hKlshcD4hKt.UPt3hKtDjKt3hKT4hKt3hcP4xMF4hbAYWXtfzQt3hKt3hKt3hKtjyTS4hKt3hQt3hKtPjKt3hKlEjKt3hKREjcg4BTG4xYA4xXtPkQt3hKt3hKt3hKtjSZS4hKt3xQt3hKtPjKt3hK1EjKt3hKDEjYh4hZG4RctXWUtPkQtnWPt3hKt3hKt3hKlsBQE4hKt3hPt3hKtDjKt3hKl4hKt3hcA4hKt3BUAYlXtPkQtLWP1ElK1YjK0EDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOIUPt3hKD4hKt3BTt3hKt3BQt3hKtfTQtbVPtLlKTYjKt3hKt3hKt3hK4jGUt3hKtHjKt3hKD4hKt3hKA4hKt3xTAAEYtLiQtjVPt3hKt3hKt3hKlsBUE4hKtXmKt3hKtDjKt3hKp4hKt3BTR4xLF4hdAAUVtLiQtjWPPokKPcjKzDjKt3hKt3hKt3hYq.UQt3hKtDjKt3hKA4hKt3BVt3hKtXGUt.0QtrVPlIlKTYjK0EjKt3hKt3hKt3hYqfUQt3hKPEjKt3hKA4hKt3BUt3hKtXWUtnlQtnVPtLlKlYjKt3hKt3hKt3hK4jWUt3hKtXjKt3hKD4hKt3hYA4hKt3RPA4xXt.0QtbVP1gkKxYjKt3hKt3hKt3hK4LjUt3hKtbjKt3hKD4hKt3BTA4hKt3BQAAUVtvjQtbVPPQlKt3hKt3hKt3hKy7TVA4hKtXlKt3hKP4hKt3hKH4hKt3BVt3hKtXFUtPkQtDSPPkkKHcjKnEDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOoUPt3hKD4hKt3BTt3hKt3BQt3hKt.UQt7VPPElKTYjKt3hKt3hKt3hK4L0Ut3hKtHjKt3hKD4hKt3hYA4hKt3hPAYlXtnlQtzVPtnkKPcjKt3hKt3hKt3hK4LzUt3hKtLjKt3hKD4hKt3hYA4hKt3BUAYlXtPkQtfVPtDlKTYjKt3hKt3hKt3hK4j1Ut3hKtPjKt3hKD4hKt3hcA4hKt3BQAYlXtn1QtTmK1UkKTYjK5EjKt3hKt3hKt3hYqHWQt3hKPEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqXjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqTlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJq7jPt3hKtDjKt3hKl4hKt3BTB4hKt3BTAYmXtn1QtXlKtDkKTYjKxEDTX4hZG4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1J2TjKt3BTt3hKt3RPt3hKt.kKt3hKtTkKpYjKyEDTY4hKt3hKt3hKt3xLOcVPt3hKH4hKt3BTt3hKt3BRt3hKtfEQtrVPPkkKPYjKnEDTX4BSF4RbA4hKt3hKt3hKtX1JPYjKt3hct3hKt3RPt3hKtHlKt3hKlQkKTYjKwDDTY4BRG4RdAAUVt3hKt3hKt3hKtLySnEjKt3BTt3hKt.kKt3hKtXjKt3hKLUjK5EDTY4BRG4xZAYWXt3hKt3hKt3hKtLySsEjKt3BUt3hKt.kKt3hKtXjKt3hKPQjKqEjKi4BUG4BcAAUVt3hKt3hKt3hKtLySoEjKt3BVt3hKt.kKt3hKtTjKt3hKtTjKuEjKi4BSF4haA4hKt3hKt3hKtX1JTYjKt3hcA4hKt3RPt3hKtHlKt3hKtDkKHcjKzDjcK4hXE4xZA4xXt3hKt3hKt3hKtLySlEjKt3hYt3hKt.kKt3hKtfjKt3hKp4hKt3hcP4hYF4BdA4BRt.EQtrVPtDlKDYjKzDDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOUWPt3hKD4hKt3BTt3hKt3BQt3hKt.UQt7VPPElKTYjKt3hKt3hKt3hK4LjVt3hKtHjKt3hKD4hKt3hYA4hKt3BSAYWXt3hPtLTPPMlKPcjKt3hKt3hKt3hK4LUXt3hKtLjKt3hKD4hKt3hYA4hKt3BRAAkVt3hPtLTPPMlKPcjKt3hKt3hKt3hK4LTXt3hKtPjKt3hKD4hKt3hKB4hKt3hQAAUVtPkQtnVPlgkKDYjKoEjcZ4hKt3hKt3hKt3xLOEWPt3hKT4hKt3BTt3hKt3BRt3hKtnGQtTWPtjkKtHjKREDTX4BTG4xZA4hKt3hKt3hKtX1JDcjKt3hYA4hKt3RPt3hKtnlKt3hKPMkK2XjKpEjKH4BTD4xZA4hXt.0Qt3VPt3hKt3hKt3hKlshaF4hKtXWPt3hKtDjKt3hKh4hKt3hKQ4BRG4BMAY2RtHVQtrVPtLlKt3hKt3hKt3hKy7jcA4hKtXlKt3hKP4hKt3hKt3hKt3BQt3hKt3RTSslZSoWPt3hK1oWPt3hKt3hKt3RPt3hKtXVLh8FMV4hKt3hKt3hKt3hYPsDT0TlbyklSRQWN0fUT2rTcDAiPGcjKt3hKt3hKt.kdTkDMDMlKt3hKA4hKt3BS1EjKt3hKt3hKtPTSUIkSMcjKt3BTt3hKt3BVt3hKt3hKt3hKtD0Tqo1TA4hKt3BQt3hKt.kKt3hKtDjKt3hKDAESS4hKtnTXt3hKHAESS4hKX4hKP4hYTYmKt0zUZQWP5EjKA4BQq41SgoDQAEmXgoGcFYUV3M0L5Y1XlEDTT4hPtLDT5QURzPDTo4RNAMjKD4hKyEjKyEjPBEjdyQjYP4BRt3hdHY1S1QEThkiVSIDUBQTSvHEbjAmcOc2Qu0lVXEmYjIjcx3hdKYVY2kkKMIjKqETMM4BUtfTZEYGLO4hPAYlKtHjdM0lX1UEQN0TV5kmYx4RP23jPt3BStfzQHAkTos1QPgFUPMELIIiVzblKH8jXPM0ZQcEVxcmUZkVP5IzQLACV3UjQik1YVQlYXEjKq3BctLDSPAkKt3hYlciKtXlP3EjY04hKt3xSHckK5cjKC4hKl4BdC4xPtf0UT4BTt3hKRITPtLCQt3BTO4hdtXVY2cjYA4BR1DjSAMjKD4hKOEzLC4hKPMkKN4hKLAUdLkmbOYlc14xJtkEaY4hdE4xStLiKhEDRJ4RNAElK5QjKA4xLGIlKP4hK3QjYyoDTt3BdBYVSt.kKtnmPtDjKHk1PF4hKq3BTG4hdtX1St3hKq3BTG4hdt3xPt.0RtTiKl0TLBsBVUUlS1j2TjgkdOQWR2MiKMwDTt3RMG4hPt3xZAMyPl8jKtX1MA4hUFgGVtXFSHMjKtjkYL4hKhEDdt3hcHgzPtvjKtLVQt3xQ3slKtbDRC4hdB4RStLCSt3BRGETLtXlKtLyRLIzLCwTPPEWP54hKC4hK14BdV4haHgTdA4BdlIlKtTiP3ETP3zjKhIDdA4hYKgzPt3xblwjKtXlQ3gjKlkDRG4RNtjmK2HjKi4BTC4BSt3hcCgTatnmTtfiP1sTPtTiYhUDTo4RNIsTP5giKyQDTWIjYrYlXEA0UBomTlUGdqY1S4MiYtXlQAoGTtDjdQ4xXhAkKt3lKt3BTt3BQH4hKBMiYtHzLm4BYlYlKloWPy3hKP4BZHECTMIDYD4hKN4hbtX1JlElcH4hdIMiQ23xL0DjKtDjKF4RP2TlKD0jRl4hKFQjYx3hKtTWPP4lKPQjKQ4BRtfjZh4hKpgTMtnWPt3haHIDRpEkKy4xLr4hKtYWPT0jYsUlUAgjYIcFR54hRAYVNCEjdAczLlMjMBIDTnM0ZHclbEEjK4LDQDEVSXcDRlYlPWgDVGgjKjQjbNg0QH4BbCoDSXcjatHFdjYGTw4ja3ETSIE2JAYzSLgjc2UVS3.kLYUFZCkEMJUiSDgkUMY2MkMiVQ4RVv3BYt3hKlUjbyoFUEA0PDEjKtfiSV8lPTcCM3MGT2sha5MzXHYSUOQDTOIVP0QUXnAUYxk2Ltb2QrUFRDgjRwIGTDkkd14RPQcWdRQDTg4lYmk0XmAEcMUGbBQSTMUiPwLjSyfmR34DUwXCRAEkZGUTPCgiVQEyPwPjPXU1Rp4RLAsjcyX1UVQESYIycPYyTFckPAYEZGo1YLg1T5olbYIUTloFRC4RNoYFaJYFTtXGa1ETTJcDVtX0Xt.SQPMDS1QjaQAGTtLlYtTCVqDjYiclKqUDSvXFNl4xbhgGRlgiYtbGLXciY3XlK2kVSYY1XlUTcTk2YBUELR41QTMTSC8FTGkVYBUTSzHmZHQjQkMESXEFR1oWLWgDV4ImYTQTZy.UdxYSREMVUzYjT5gTRCITYjomXzHzcSEUSMQjKt3hKPQTcig1P3.ULV8jZGw1RAEkcksRYBgSS1olT5gDTSQULt31SHYFQlkyPAIzPAcGZA4RNCk2M3MiRN4BQBIDVNUzMXgWPtLlKDcSL4UyPMEySGE2S5gCT5gEN3LUQ2fWPXcER1M2byUDVGIFTIkTRm8DNmYTb43hdG4xcCgURI4hVxkiKXkTPFMjPhIWNPEjUFg0LAUmXJY2SsIDYzfCSsIDY3jFNmYTbOEVXgE1JXgyYFQyPPIUStv1TAU2St7lZBsBToASNXUla2MyToAyQBgTZTAES4PkcK01LCAkUIYVXgE1RXcjK3MjYIMiKX4TQhkiKTkkKz7lKEcCduYlbC4hTBYTVt7FRPUmKp0lKi4hc2DjUn4hYIgjZAQTQmc2atfjVxQlYAImKxkCToY1X14RQ2fWR23BQ2HjYtcWMCcyPlkmcA4RPDAUaHY2QZImSXUlKTYlK33BTGEjdDIzLwDSLtXEctzzYAYUYtcWNHE2S5QjStHmK54zY2kDTh4RNDMjKnEmYG4hKtbmctrBVrkEaAEiKmYGMYImKn8jYscmKtL0P1cjKNETRA4TPLQDZDYValMkKgklKRkGSCY1P1IjKOEzLCIlctH2QE4TNtjiPCgDTYwVVBMCRxclKxPiMkYVSm4xL0DUTlMjcPY1Zt4hQzQFUlETPy.kZHEDVyTSPq.kKHslP4L0PtPkdmYWVyDDVt.ETtjiPC4Baw4RZAAEStHjKt3hLIo1QlshPAkySL4hYoYFLpk0LtPmKVEDRtXlSFYlKt3TSLwjKTgFSiYmYLYTP1kDSt3BVHgUMJ4jKSEjZUYlLCMzPlwVVrYyPHkVPN4RSA4jQtHldLYVdtjTPPwlTlklYEY1S1ojKtMzLHoWPyHjKt3hZAQVPw4RNt3BQRokYH4xLA4hKtPlKBsjYOYWUlklKtHDTF4hVtbCQAAkUIYVX2ojKAYVROIDQtXlbBEjZvTmMzYiSPsjKN4hKtXWRtvlKtTiYN4BYtfWRBgEQYoVP3gkYScmYCQEQtTTUDgDbtXjKt.kQH4BS1IkKxomTlcmKynkKtLCUx0zL34hKyrjXE4xJCkSQtvDZ3MjKt3BRHk1RogjKPgmK1oTPFQUNlwDTtX2RpgEVsgFalA0YPsjP3EjYH4haI4BZAYFRt.ETtfWSlwlKHgTPZIDclYjaI4hYAY1PPIjKh4xLtnlKH4hKZcjYggyTlUGQtnzS23RbzXEVnUDZjY1Pt3RPtfjKl4hKtjEQ5UkYtXmKoEUag8FN5shKDclag0lT14RPt3hYNITVA4BbPg1S2MTPPcjKncjKLA0bDMyTxIzL3LjKy7lPt3hYDg2LtDjctj2ZVMVaIQTRtXFcyHDVD4BbtHjQtnVPHMDSBwlYMYGRRMjQtXjXFIldMYkUTACQYYWcPMDZUY0YA4hKt3hKt3hKt.kKt3hKt3BQt3hKt3hKt3hKtvyKIMzasA2atUlaz4COIUDYoQ2Pu4Fcx8FarUlb9.iK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
									}
,
									"fileref" : 									{
										"name" : "FM8",
										"filename" : "FM8.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "ea4793d9a7e1f016be258b67d21a515a"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FM8",
									"origin" : "FM8.vst3",
									"type" : "VST3",
									"subtype" : "Instrument",
									"embed" : 0,
									"fileref" : 									{
										"name" : "FM8",
										"filename" : "FM8_20260930.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "74f1393ac7e532cceedc168b9de7bc98"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 2 2 @autosave 1",
					"varname" : "vst~[2]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-314",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4890.0, 530.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 544.0, 328.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-315",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 64.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 330.0, 64.0, 19.0 ],
					"text" : "load synth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-316",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 4930.0, 530.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 640.0, 328.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-317",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 30.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 666.0, 332.0, 30.0, 17.0 ],
					"text" : "show"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-318",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4890.0, 500.0, 44.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-319",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4940.0, 500.0, 44.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-320",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 5400.0, 40.0, 51.0, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-321",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5460.0, 70.0, 121.0, 22.0 ],
					"text" : "prepend replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-322",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 5460.0, 98.0, 142.0, 22.0 ],
					"text" : "buffer~ chain_ddsp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-323",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5400.0, 70.0, 79.0, 22.0 ],
					"text" : "startloop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-324",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5600.0, 70.0, 58.0, 22.0 ],
					"text" : "loop 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-325",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 5600.0, 40.0, 72.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-326",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 5400.0, 130.0, 150.0, 22.0 ],
					"text" : "groove~ chain_ddsp 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-327",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 5570.0, 100.0, 65.0, 22.0 ],
					"text" : "sig~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-328",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5500.0, 40.0, 79.0, 22.0 ],
					"text" : "ddsp_done"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.96, 0.96, 0.95, 1.0 ],
					"id" : "obj-329",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 794.0, 296.0, 598.0, 118.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 794.0, 296.0, 598.0, 118.0 ],
					"rounded" : 6
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.62, 0.62, 0.66, 1.0 ],
					"id" : "obj-330",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 794.0, 296.0, 598.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 794.0, 296.0, 598.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 13.0,
					"id" : "obj-331",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 794.0, 296.0, 588.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 800.0, 298.0, 586.0, 21.0 ],
					"text" : "5 · SPACE · reverb + delay plug-ins · macros"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-332",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 5800.0, 300.0, 125.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, 2, "@autosave", 1, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[3]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~[3]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "ValhallaSupermassive.vst3",
							"plugindisplayname" : "ValhallaSupermassive",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "1134.VMjLgTFA...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9biM13hUMczXWEjKt3hYt3hKt.kKt3hKt3BS5gEcyQjKtfjYzXTR5AkaA4hKtfjch0TQwHlKT4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKBMiZUMTRSgTRH4hKtXWdOMCLFElYXcUV30zUZUGMV8DZDk1R1gjPHsFMwfUcQYkVzMlUOgFUEUkQvHjSncSZOYlcoU0Y2YjVmcmQgcVSUMlcUwlXyUTLhk2ZrM1ZAIjXxUkLY8FMrU0ZIIiXugCaggCRR0Dctj1R1gjPHYWRWkUdUYzXNUjUgsFLogjUiYUV3kjPH0zZFQFNHIESz4RZHYFTTkkbEYEYSsVagkFLogjcyfFSvfjPHQTUFE1Yq01T0E0UYgCRBwDcTMkS34xPLYmKCwjLXkFSzvzTNoGUogjYPQUVxUjUjUFL5IFNHIDSz4RdLQiZS4DMpMkSzPzPLAiZ4wjcLkGSn4hPQs1cVgEMiUEV3EzUOglKoszcDMkSzn1TNQiZ40TdDkWSxn1TLglK3AkbUYEV3ASZHc2LBwDZtfVTqUkQYgVQwfUbvjFR1MiTNAiZS4DMpMkSxX1TMoGR4wDdhMkSn4hPQsFMwH1aQcEY3fjPLQmKC4DdtLDS14xPLgGRo0jdpkWSwPUZHYlXUokZQcjV3fjTLQmKogjY1oWXxzDUioGLogjcyHDSn4hPR81XFo0PUczX3fjTLQmKogjY5oWXpkTUXoWUV8DZtj1R3IVdLMCSC0zctLkS44RZMkGSS0jdHIDRMgiQYQTUFIldmY0Sn4RZKgGT40DMpMkSzn1TMQCTo0zLlMTS3gjPH0DNFk0ZvjFR1MiPLoGQo0TLXkVSwH1TNYmYC0TdtLESn4BZTsVSWkEdYcUVpUzTOglKosjcHIDRRUULhsVRsM1ZQwFS3fjPLQmKogjYHUUV4UEahESUFkUd5kFR1MiPLglKnQ0ZMcUV3k0UYoVTS8DZtj1R1gjPHM2ZFQFS3DCVwASZHYGRBgDLqESUuEkQi4FLogzLHMDSn4hTi81YTk0aiYjV5ASZHoGSS0DZ2f1St3hKt3hKt3hKt3hKJUELPUTPqI1aYcEV5UkQQcVTWgkKDAkKBs1QhcVSxHlKDAkKC4BTG4hKt3hKt3hKt3FUUMTUDQEdqw1XmE0UYQTQFM1YAwyKIMzasA2atUlaz4COuX0TTMCTrU2Yo41TzEFck4C."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "ValhallaSupermassive",
									"origin" : "ValhallaSupermassive.vst3",
									"type" : "VST3",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "ValhallaSupermassive.vst3",
										"plugindisplayname" : "ValhallaSupermassive",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "1134.VMjLgTFA...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9biM13hUMczXWEjKt3hYt3hKt.kKt3hKt3BS5gEcyQjKtfjYzXTR5AkaA4hKtfjch0TQwHlKT4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKBMiZUMTRSgTRH4hKtXWdOMCLFElYXcUV30zUZUGMV8DZDk1R1gjPHsFMwfUcQYkVzMlUOgFUEUkQvHjSncSZOYlcoU0Y2YjVmcmQgcVSUMlcUwlXyUTLhk2ZrM1ZAIjXxUkLY8FMrU0ZIIiXugCaggCRR0Dctj1R1gjPHYWRWkUdUYzXNUjUgsFLogjUiYUV3kjPH0zZFQFNHIESz4RZHYFTTkkbEYEYSsVagkFLogjcyfFSvfjPHQTUFE1Yq01T0E0UYgCRBwDcTMkS34xPLYmKCwjLXkFSzvzTNoGUogjYPQUVxUjUjUFL5IFNHIDSz4RdLQiZS4DMpMkSzPzPLAiZ4wjcLkGSn4hPQs1cVgEMiUEV3EzUOglKoszcDMkSzn1TNQiZ40TdDkWSxn1TLglK3AkbUYEV3ASZHc2LBwDZtfVTqUkQYgVQwfUbvjFR1MiTNAiZS4DMpMkSxX1TMoGR4wDdhMkSn4hPQsFMwH1aQcEY3fjPLQmKC4DdtLDS14xPLgGRo0jdpkWSwPUZHYlXUokZQcjV3fjTLQmKogjY1oWXxzDUioGLogjcyHDSn4hPR81XFo0PUczX3fjTLQmKogjY5oWXpkTUXoWUV8DZtj1R3IVdLMCSC0zctLkS44RZMkGSS0jdHIDRMgiQYQTUFIldmY0Sn4RZKgGT40DMpMkSzn1TMQCTo0zLlMTS3gjPH0DNFk0ZvjFR1MiPLoGQo0TLXkVSwH1TNYmYC0TdtLESn4BZTsVSWkEdYcUVpUzTOglKosjcHIDRRUULhsVRsM1ZQwFS3fjPLQmKogjYHUUV4UEahESUFkUd5kFR1MiPLglKnQ0ZMcUV3k0UYoVTS8DZtj1R1gjPHM2ZFQFS3DCVwASZHYGRBgDLqESUuEkQi4FLogzLHMDSn4hTi81YTk0aiYjV5ASZHoGSS0DZ2f1St3hKt3hKt3hKt3hKJUELPUTPqI1aYcEV5UkQQcVTWgkKDAkKBs1QhcVSxHlKDAkKC4BTG4hKt3hKt3hKt3FUUMTUDQEdqw1XmE0UYQTQFM1YAwyKIMzasA2atUlaz4COuX0TTMCTrU2Yo41TzEFck4C."
									}
,
									"fileref" : 									{
										"name" : "ValhallaSupermassive",
										"filename" : "ValhallaSupermassive.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "cd54e8e60888a90c87c7e06b2ce508ad"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 2 2 @autosave 1",
					"varname" : "vst~[3]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-333",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 5800.0, 260.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 806.0, 328.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-334",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 80.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 832.0, 330.0, 80.0, 19.0 ],
					"text" : "load reverb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-335",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 5840.0, 260.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 806.0, 356.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-336",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 80.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 832.0, 358.0, 80.0, 19.0 ],
					"text" : "show reverb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-337",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5800.0, 230.0, 44.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-338",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5850.0, 230.0, 44.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-339",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 240.0, 27.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 806.0, 384.0, 141.0, 27.0 ],
					"text" : "set both plug-ins to 100% wet\n(e.g. Supermassive · TAL-Dub-X)"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-340",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 6100.0, 300.0, 125.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, 2, "@autosave", 1, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[4]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~[4]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "ChowMatrix.vst3",
							"plugindisplayname" : "ChowMatrix",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "24768.VMjLgbKX...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9DCNzjCLtXUSpwzYTsRTt3hKOshYWElbAg1XqkjLh8FNrEFNHIESz4RZHYFUrEVZ3XTVuQSLYgCRRUEUYQ0RyfDdOkiKB8zPmESXx.CUXoWRWo0L3.CU5UjQisFMC8TdQcEV5UEaOciKUgEdEYUXqE0UYgWSs8zMtTETRUDUSYlZFkENHITVqcmUXQCNEMFMAcUVn4BZic1cVM1ZvjFR3MiPLg1Mn8zMtTETRUDUSYlZFkENHITV3slLWYWQrI1YvvFRlg0UXIWUWkENHI0R2gTZKYGR3sTN1MDUAkTUP0TPRokZvjFRuQSLhcFMVokdq0FRlg0UXIWUWkENHIDSzQ0PLEiXCwDdPkFS44xTNAiXCwTdDkFR0MyPOAUQpQUPvPDRuEkUOgFSsEFMMwFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZhcUV5gSQhcVRWg0bIIDRwTjQgASUV8DZ5IES3MiPLg1Mn8zMtTETRUDUSYlZFkENHIjX3UULhsVTsgjYXcEVxU0UYgCRRwDZ2f1S23RUPIUQTMkYpYTV3fjTXkWSWoUazXUVpgSQLg1Mn8zMtTETRUDUSYlZFkENHIEV40zUZ0FMVkkZ3TESncCZOciKUAkTEQ0TlolQYgCRRgUdMckVsQiUYoFNqwDZ2f1S23RUPIUQTMkYpYTV3fjTXkWSWoUazXUVpgCLLg1Mn8zMtTETRUDUSYlZFkENHIEV40zUZ0FMVkkZ3TTSncCZOciKUAkTEQ0TlolQYgCRRgUdMckVsQiUYoFNU0DZ2f1S23RUPIUQTMkYpYTV3fjTXkWSWoUazXUVpgyZMg1Mn8zMtTETRUDUSYlZFkENHIEV40zUZ0FMVkkZ3.SSncCZOciKUAkTEQ0TlolQYgCRRoEcMcEVzslQiQCNqI1ZMcUV5kDdKkicCQUPIUETMEjTZoFLogjLUYzXkMlUX8FMwbUZ3XUX1gSQhcVRWg0bIg2R4XWdKAUQrI1YvXUV5UEahkGMC8Dc3XTVq0TaOciZrElcUczXkQSLgoVUr8zMLYjVucmQYgWUrEVN1MTVqcmUXQCNqEVcQYUV4X2PTcVRWg0bUYzXqkjLhYlcwDVZyYUVpASZHIGRBgDdUEiXqE0UOglcngjY1wVV0gCLhQCMwfENHIDSn4BZhcFMFkUY2ESXoMmUOglcngTN1MDUAkTUP0TPRokZvjFRDsldTQURBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHQzcTYEZtf1XmcmUisFLogTdyfGSwP0PMcmYo0jLHMUSwPTZMoGVogTcyLzSPUjZTEDLDgzaQY0SngEQQIzbpgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOglXTAURznFRlg0UXIWUWkENHI0R5MiTNQCRCwjctLES1gzTNQCVC4DdXkFR0MyPOAUQpQUPvPDRuEkUOglYDQkQIIDRwTjQgASUV8DZHMDSz4RZHU2LC8DTEoFUAACQH8VTV8DZ1QDUFkjPHESQFEFLUY0SngzPLYmKCwDctjFR0MyPOAUQpQUPvPDRuEkUOglKUAkSIIDRwTjQgASUV8DZtj1R1Y1TMECV4wjdLkWSy.UdLkGRowjLTkFR0MyPOAUQpQUPvPDRuEkUOgFTTIkQYoFR0MyPOAUQpQUPvPDRuEkUOgld5MEQ3TTTEcGUPkUR3sTN1MDUAkTUP0TPRokZvjFRMgCQQUVVpQUQEsFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZ5o2TDgSQTEDMpgTcyLzSPUjZTEDLDgzaQY0Sn4RURQUSDIEZ2f1S23RUPIUQTMkYpYTV3fDZTUTVqgTcyLzS04RUXgWQVE1ZQcUV30TaOciYwDVdQIyUogCagoWRxDlbMIyR4XWdX41ZFElZIcUVzQyPOoVUFE1YqIyUzgiQYsFMC8DTEwlXmAiUYoWUrIVdAITX00TLZsVTV8DZ1gFRlgzUYkWUFMFNHIzRn4hPgwFNwbUdq0VXoASZHYGRBgDdEwVXpgSQgUWSwnENHIzRnMyPOAUQpQUPvPDRuEkUOgFTTI0TQsFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZPQzTYkjPHESQFEFLUY0SnA0TNQGSCwTdTkVS3QTZMoGSCwTLXMTSncCZOciKUAkTEQ0TlolQYgCRnEEQIomTn4BZic1cVM1ZvjFR1MCdLICRowTdpMkSxH1TLgGQ4wDLLMESncCZOciKUAkTEQ0TlolQYgCR3EUPqo1Tn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fDZLY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPSAUVpgjYXcEVxU0UYgCR30DMpMkSzo1TNQiKowTdPkGSxPUZHU2LC8DTEoFUAACQH8VTV8DZtTETNkjPHESQFEFLUY0SnomPLQmZS4zLDMDS3Y1PMkmXo0zcPMTS5QTZHU2LC8DTEoFUAACQH8VTV8DZPQkTFkkZHU2LC8DTEoFUAACQH8VTV8DZ5o2TDgSQQUzcTAUVIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYYoFUEUzZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEQUPznFR0MyPOAUQpQUPvPDRuEkUOglKUIEUMQjTncCZOciKUAkTEQ0TlolQYgCRnQUQYsFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkic4gkaqYTXpkzUYQGMC8jZUYTXmslLWQGNFk0ZzLzSPUDahcFLVkkdUwlX4EjPgUWSwn0ZQY0SnYGZHYFRWkUdUYzX3fjPKglKBEFa3DyU4sVagkFLogjcHIDR3UDagoFNEEVcMEiV3fjPKg1LC8DTEoFUAACQH8VTV8DZPQkTSE0ZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnAEQSkURBgTLEYTXvTkUOgFQS4jLyHES34xPNMiKSwDdXMkSvvzTLg1Mn8zMtTETRUDUSYlZFkENHgVTDkjdRglKnM1Y2Y0XqASZHY2LnwTdLkVS54xPLYmKowDdPMES2wzTMg1Mn8zMtTETRUDUSYlZFkENHgWTAslZSglKnM1Y2Y0XqASZHY2L30TLhMkSznVZMomZCwjdhMjSvPTZMg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fjTNg2LnwDdPMkSyvTZLcGU4wTdHMDS4gDdKkicCQUPIUETMEjTZoFLogDSAsVTn4BZic1cVM1ZvjFR34xPLYmKosjcHg2R4X2PTETRUAUSAIkVpASZHAUQpMEZtf1XmcmUisFLogjcyfVS2g0TLkGQCwTLhkFSxf0PLYGQogTcyLzSPUjZTEDLDgzaQY0SnAEURYTVpgTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEEUQ2QETYkDdKkicCQUPIUETMEjTZoFLogTS3PTTkkkZTUTQqgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOgld5MEQ3TDUAQiZHU2LC8DTEoFUAACQH8VTV8DZtTkTT0DQRg1Mn8zMtTETRUDUSYlZFkENHgFUEk0ZHU2LC8TctTEV3UjUgsVTWkEdM01S2XVLgkWTxbUZ3vVX5kjLgIWSxrTN1kVX0gCLX41ZFElZIcUVzgCZOcyMBk0Z2YEVzfyZgUWTVkUN1MTVqcmUXQCNqEVcQYUV4X2PTcVRWg0bUYzXqkjLhYlcwDVZyYUVpASZHIGRBgDdUEiXqE0UOglcngjY1wVV0gCLhQCMwfENHIDSn4BZhcFMFkUY2ESXoMmUOglcngTN1MDUAkTUP0TPRokZvjFRDsldTQURBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHQzcTYEZtf1XmcmUisFLogzcDMjSwLCdLMCQS0DMDkWSzf0PNICUogTcyLzSPUjZTEDLDgzaQY0SngEQQIzbpgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOglXTAURznFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZlQDUFkjPHESQFEFLUY0SngzPLQmKogTcyLzSPUjZTEDLDgzaQY0SnYGQTYTRBgTLEYTXvTkUOgFRCwjctLDSz4RZHU2LC8DTEoFUAACQH8VTV8DZtTETNkjPHESQFEFLUY0SnomPLQGS40TdDMUSyf0TNkGSSwTdTMkSyfUZHU2LC8DTEoFUAACQH8VTV8DZPQkTFkkZHU2LC8DTEoFUAACQH8VTV8DZ5o2TDgSQQUzcTAUVIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYYoFUEUzZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEQUPznFR0MyPOAUQpQUPvPDRuEkUOglKUIEUMQjTncCZOciKUAkTEQ0TlolQYgCRnQUQYsFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkicoEVc3.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkic4sTZmYkVxEEahsFMr8zM2HTVqcmUXQCNqEVcQYUV4X2PYs1cVgEM3rVX0EkUYkicCQ0YIcEVyUkQisVRxHlY1ESXoMmUYoFLogjbHIDR3UULhsVTW8DZ1gFRlYGaYUGNvHFMzDCV3fjPLglKnI1YzXTVkcWLgk1bV8DZ1gFR4X2PTETRUAUSAIkVpASZHQzZ5QEUIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogDQ2QkUn4BZic1cVM1ZvjFR2I1TLQmYowTLLkWS1gTdLQCRS0jLlkFR0MyPOAUQpQUPvPDRuEkUOgFVDEkPyoFRlg0UXIWUWkENHIDSzQ0TNYmKC0jctjFSy3xTNACRC0DLPkFR0MyPOAUQpQUPvPDRuEkUOglXTAURznFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZlQDUFkjPHESQFEFLUY0SngzPLQmKogTcyLzSPUjZTEDLDgzaQY0SnYGQTYTRBgTLEYTXvTkUOgFSC4TLDk1RvPUdMMCVSwTdHMjS2gzTMg1Mn8zMtTETRUDUSYlZFkENHIDUAQiZHYFVWgkbUcUV3fjPLQmKo0DLLMjSyfUdMQCUCwjdLMkS5QUdLg1Mn8zMtTETRUDUSYlZFkENHITTIkkZQg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWQTUDMUPqsFR0MyPOAUQpQUPvPDRuEkUOgld5MEQ3rVTRUEUTglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5cETEo1TncCZOciKUAkTEQ0TlolQYgCRBQURQACTHkDdKkicCQUPIUETMEjTZoFLogjTUoVUncCZOcyMBQ0YIcEVyUkQisVRxHVN1MjV00zQiUVSwDFcQ0lX0cWLhU2LC8TZmYkVxEEahsFMr8zMPYUVxUjUjUFMwDlZUw1S23RUXgWQVE1ZQcUV30zQHIGNwfUbUYTV3fjPKglKnI1ZMcUV5ASZHIGRBgjbYESXk0zUjQWSV8DZtjFRlgzUXQWTwbkb3DCVwASZHIGRn8zMtTETRUDUSYlZFkENHITTI0TQUglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPQwzZqgjYXcEVxU0UYgCRnwjdlk1R2g0PMcGVS4TdDMESvfTdLoGR3sTN1MDUAkTUP0TPRokZvjFRFEkZPsTRBgTLEYTXvTkUOglKosDLLMjSvf0PLYGSowzLPMTSv.UdLACR3sTN1MDUAkTUP0TPRokZvjFRGUDUR4TRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHgTPqEEZtf1XmcmUisFLogDdtj1R1gDdKkicCQUPIUETMEjTZoFLogDSAsVTn4BZic1cVM1ZvjFR34xPLYmKosjcHg2R4X2PTETRUAUSAIkVpASZHAUQpMEZtf1XmcmUisFLogjcyfVS4QzTNgGVowDMlMES5QzPMIiZS0DZ2f1S23RUPIUQTMkYpYTV3fjPQkTVpEEZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5cEQUQzTAs1ZHU2LC8DTEoFUAACQH8VTV8DZ5o2TDgyZQIUUTQEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCRRM0SQo2UPUjZSg1Mn8zMtTETRUDUSYlZFkENHIDUIEELPgTR3sTN1MDUAkTUP0TPRokZvjFRRUkZUg1Mn8zM2HDUmkzUXMWUFM1ZIIiX4X2PZUWSGMVYMESXzEUahU2cwHVcyLzSzgSLWk1YVokbQwlXqQSLKkic4sjZUYTXmslLWQGNFk0ZzLzS0wjQZ81cFkEdUwVX4XWdKoVUFE1YqIyUzgiQYsFMC8jZUYTXmslLWQGNFk0ZzLzSPUDahcFLVkkdUwlX4EjPgUWSwn0ZQY0SnYGZHYFRWkUdUYzX3fjPKglKBEFa3DyU4sVagkFLogjcHIDR3UDagoFNEEVcMEiV3fjPKg1LC8DTEoFUAACQH8VTV8DZPQkTSE0ZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnAEQSkURBgTLEYTXvTkUOglKosjdLkVSy3xTNQCR40DdHMUS2QTZLQCR3sTN1MDUAkTUP0TPRokZvjFRFEkZPsTRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHcTQTIkSIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogDRAsVTn4BZic1cVM1ZvjFRw3RZKcGRo0TdtLDSyPzTLICV40DLlkFR0MyPOAUQpQUPvPDRuEkUOglcDQkQIIDRwTjQgASUV8DZHMDS14xPLQmKogTcyLzSPUjZTEDLDgzaQY0Sn4RUP4TRBgTLEYTXvTkUOglKosjdXMUSzP0TLQCQS4DLTMUSwf0PMcGR3sTN1MDUAkTUP0TPRokZvjFRDslZQYTR3sTN1MDUAkTUP0TPRokZvjFRMgCQQUVTTEESEQkUncCZOciKUAkTEQ0TlolQYgCRRM0SQo2UFkTUQEURBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZH0DNDEUYAUETNkDdKkicCQUPIUETMEjTZoFLogDTqQTUCclZHU2LC8DTEoFUAACQH8VTV8DZHUUTVkDdKkic4sDTEwlXmAiUYoWUrIVdzLzStgSLhoGNvfUczXzX3giQgkGNn8zMyDSXk0jQZ81cFkEdUwVX0MyPOUGTVkkbEYEYkQSLgoVUr8zM2fGVtslQgoVRWkEczLzS0AkUYIWQVQVYzDSXpUEaOcyM3gkaqYTXpkzUYQGMC8TcpwVX1U0QiUFMwDlZUw1S2nFagYWUGMVYzDSXpUEaOcCSFo0a2YTV3UEagkicCk0Z2YEVzfyZgUWTVkUN1MDUmkzUXMWUFM1ZIIiXlYWLgk1bVkkZvjFRxgjPHgWUwH1ZQc0SnYGZHYlcrkUc3.iXzPSLXgCRBwDZtflXmQiQYU1cwDVZyY0SnYGZHkicCQUPIUETMEjTZoFLogDQqoGUTkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRDcGUVglKnM1Y2Y0XqASZHoGQo0DclMUS24xTLkGQC4TdTMkS4YVZHU2LC8DTEoFUAACQH8VTV8DZXQTTBMmZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnIFUPkDMpgjYXcEVxU0UYgCRRszLyfVSynVdLcGSC4zLlMUS5o1PNYGUogTcyLzSPUjZTEDLDgzaQY0SnYFQTYTRBgTLEYTXvTkUOgFRCwDctjFR0MyPOAUQpQUPvPDRuEkUOglcDQkQIIDRwTjQgASUV8DZHMDS14xPLQmKogTcyLzSPUjZTEDLDgzaQY0Sn4RUP4TRBgTLEYTXvTkUOgldBwDcTMjS4QTdMECTS4TdXMTS5I1TLoGTogTcyLzSPUjZTEDLDgzaQY0SnAEURYTVpgTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEEUQ2QETYkDdKkicCQUPIUETMEjTZoFLogTS3PTTkkkZTUTQqgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOgld5MEQ3TDUAQiZHU2LC8DTEoFUAACQH8VTV8DZtTkTT0DQRg1Mn8zMtTETRUDUSYlZFkENHgFUEk0ZHU2LC8TctTEV3UjUgsVTWkEdM01S2XVLgkWTxbUZ3vVX5kjLgIWSxrTN1kGVtslQgoVRWkEczLzSpUkQgc1ZxbEc3XTVqQyPOAUQrI1YvXUV5UEahkWPBEVcMEiVqEkUOglcngjYHcUV4UkQigCRBsDZtHTXrgSLWk2ZsEVZvjFR1gjPHgWQrElZ3TTX00TLZgCRBsDZyLzSPUjZTEDLDgzaQY0SnAEURMUTqgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOgFTDMUVIIDRwTjQgASUV8DZDMDS3MCdMMiKSwzcLkFS34RZLcGTC4DZ2f1S23RUPIUQTMkYpYTV3fDZQQTR5IEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCR3EUPqo1Tn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fDZLY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPSAUVpgjYXcEVxU0UYgCRnwjctLDS1MiPLg1Mn8zMtTETRUDUSYlZFkENHIDUAQiZHYFVWgkbUcUV3fjPLQGUSwDMtLUSxPzTMoGVS0DLPMUSwPUZHU2LC8DTEoFUAACQH8VTV8DZPQkTFkkZHU2LC8DTEoFUAACQH8VTV8DZ5o2TDgSQQUzcTAUVIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYYoFUEUzZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEQUPznFR0MyPOAUQpQUPvPDRuEkUOglKUIEUMQjTncCZOciKUAkTEQ0TlolQYgCRnQUQYsFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkicoEVc3.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkicCk0Z2YEVzfyZgUWTVkUN1MDUmkzUXMWUFM1ZIIiXlYWLgk1bVkkZvjFRxgjPHgWUwH1ZQc0SnYGZHYlcrkUc3.iXzPSLXgCRBwDZtflXmQiQYU1cwDVZyY0SnYGZHkicCQUPIUETMEjTZoFLogDQqoGUTkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRDcGUVglKnM1Y2Y0XqASZHQyL30DLXMDSvP0PNkGQS4jcpMESyfDdKkicCQUPIUETMEjTZoFLogjQQoFTKkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRGUDUR4TRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHgTPqEEZtf1XmcmUisFLogDdtj1R1gDdKkicCQUPIUETMEjTZoFLogDSAsVTn4BZic1cVM1ZvjFR34xPLYmKosjcHg2R4X2PTETRUAUSAIkVpASZHAUQpMEZtf1XmcmUisFLogzbtj1RzPTZLgGQ4wDdtjVS3o1TLcmZC4jLHg2R4X2PTETRUAUSAIkVpASZHQzZpEkQIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYQQUTLUDUVg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWYTRUEUTIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogTS3PTTkETUP4TR3sTN1MDUAkTUP0TPRokZvjFRPsFQUMzYpgTcyLzSPUjZTEDLDgzaQY0SngTUQYUR3sTN1k2RPUDahcFLVkkdUwlX4QyPO4FNwHld3.CV0QiQigGNFEVd3f1S2LSLgUVSFo0a2YTV3UEagU2LC8TcPYUVxUjUjUFMwDlZUw1S2.kUYIWQVQVYzDSXpUEaOciKUgEdEYUXqE0UYgWSGgjb3DCVwUkQYgCRBsDZtflXq0zUYoGLogjbHIDRxkULgUVSWQFcMY0Sn4RZHYFRWgEcQEyUxgSLXEGLogjbHg1S23RUPIUQTMkYpYTV3fjPQkTSEUEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCRBEESqsFRlg0UXIWUWkENHgGS2gUZKkmZCwzctjVS34xTLcmXSwDMHg2R4X2PTETRUAUSAIkVpASZHYTTpA0RIIDRwTjQgASUV8DZtj1R3A0TMACQS4DMpMUSwX1TNkmZowzcHg2R4X2PTETRUAUSAIkVpASZHcTQTIkSIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogDRAsVTn4BZic1cVM1ZvjFR34RZKYGR3sTN1MDUAkTUP0TPRokZvjFRLEzZQglKnM1Y2Y0XqASZHgmKCwjctj1R1gDdKkicCQUPIUETMEjTZoFLogDTEo1Tn4BZic1cVM1ZvjFR1MCZLcmKS0DdtLUS1Q0TNYGUSwDLDMTSncCZOciKUAkTEQ0TlolQYgCRBEURYoVTncCZOciKUAkTEQ0TlolQYgCRRM0SQo2UDUEQSEzZqgTcyLzSPUjZTEDLDgzaQY0SnomdSQDNqEkTUQEUn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWAUQpMEZ2f1S23RUPIUQTMkYpYTV3fjPTkTTv.ERIg2R4X2PTETRUAUSAIkVpASZHIUUpUEZ2f1S2biPTcVRWg0bUYzXqkjLhkicCoUcMczXk0TLgQWTsIVc2EiX0MyPOk1YVokbQwlXqQCaOcCTVkkbEYEYkQSLgoVUr8zMtTEV3UjUgsVTWkEdMcDRxgSLXEWUFkENHIzRn4BZhsVSWkkdvjFRxgjPHIWVwDVYMcEYz0jUOglKogjYHcEVzEULWIGNwfUbvjFRxgDZOciKUAkTEQ0TlolQYgCRBEURMUTUn4BZic1cVM1ZvjFR2MiPLg1Mn8zMtTETRUDUSYlZFkENHITTLs1ZHYFVWgkbUcUV3fDdMQGSC0jcDkWSz.0PMkGSS0DMLkWSvfDdKkicCQUPIUETMEjTZoFLogjQQoFTKkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRGUDUR4TRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHgTPqEEZtf1XmcmUisFLogDdtj1R1gDdKkicCQUPIUETMEjTZoFLogDSAsVTn4BZic1cVM1ZvjFRxXVZMg2LRwjcHMUS4o1PLECRS0DZ2f1S23RUPIUQTMkYpYTV3fjPTEDMpgjYXcEVxU0UYgCRBwDcXkVS5oVZLQCSC4DMpMUS4g0TLkGSogTcyLzSPUjZTEDLDgzaQY0SnAEURYTVpgTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEEUQ2QETYkDdKkicCQUPIUETMEjTZoFLogTS3PTTkkkZTUTQqgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOgld5MEQ3TDUAQiZHU2LC8DTEoFUAACQH8VTV8DZtTkTT0DQRg1Mn8zMtTETRUDUSYlZFkENHgFUEk0ZHU2LC8TctTEV3UjUgsVTWkEdM01S2XVLgkWTxbUZ3vVX5kjLgIWSxrTN1kVX0gCLX41ZFElZIcUVzgCZOcyMBk0Z2YEVzfyZgUWTVkUN1MTVqcmUXQCNqEVcQYUV4X2PTcVRWg0bUYzXqkjLhYlcwDVZyYUVpASZHIGRBgDdUEiXqE0UOglcngjY1wVV0gCLhQCMwfENHIDSn4BZhcFMFkUY2ESXoMmUOglcngTN1MDUAkTUP0TPRokZvjFRDsldTQURBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHQzcTYEZtf1XmcmUisFLogDdDkGSzgzTMEiKowjLHkFS2gUdMQiXogTcyLzSPUjZTEDLDgzaQY0SngEQQIzbpgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOglXTAURznFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZlQDUFkjPHESQFEFLUY0SngzPLQmKogTcyLzSPUjZTEDLDgzaQY0SnYGQTYTRBgTLEYTXvTkUOgFRCwjctLDSz4RZHU2LC8DTEoFUAACQH8VTV8DZtTETNkjPHESQFEFLUY0SnomPLQGUC0jclkWSx.0PLcmYowzLhkVSvnVZHU2LC8DTEoFUAACQH8VTV8DZPQkTFkkZHU2LC8DTEoFUAACQH8VTV8DZ5o2TDgSQQUzcTAUVIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYYoFUEUzZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEQUPznFR0MyPOAUQpQUPvPDRuEkUOglKUIEUMQjTncCZOciKUAkTEQ0TlolQYgCRnQUQYsFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkicoEVc3.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkic4sTZmYkVxEEahsFMr8zM2HTVqcmUXQCNqEVcQYUV4X2PYs1cVgEM3rVX0EkUYkicCQ0YIcEVyUkQisVRxHlY1ESXoMmUYoFLogjbHIDR3UULhsVTW8DZ1gFRlYGaYUGNvHFMzDCV3fjPLglKnI1YzXTVkcWLgk1bV8DZ1gFR4X2PTETRUAUSAIkVpASZHQzZ5QEUIIDRwTjQgASUV8DZtj1R3Q0TMQiZS4DMlkFS4QUdMYGRS0zcHg2R4X2PTETRUAUSAIkVpASZHQzcTYEZtf1XmcmUisFLogDdtjVSzQ0PMoGUS0DLXkVS54RZMgGUogTcyLzSPUjZTEDLDgzaQY0SngEQQIzbpgjYXcEVxU0UYgCRBwDcPMkS24RdLQiZS4zcLkWSyH1PNoGRogTcyLzSPUjZTEDLDgzaQY0SnIFUPkDMpgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOglYDQkQIIDRwTjQgASUV8DZHMDSz4RZHU2LC8DTEoFUAACQH8VTV8DZ1QDUFkjPHESQFEFLUY0SngzPLYmKCwDctjFR0MyPOAUQpQUPvPDRuEkUOglKUAkSIIDRwTjQgASUV8DZtj1R3I1TNACQowDdlkVS2YVZMgGQC4TdHg2R4X2PTETRUAUSAIkVpASZHQzZpEkQIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYQQUTLUDUVg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWYTRUEUTIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogTS3PTTkETUP4TR3sTN1MDUAkTUP0TPRokZvjFRPsFQUMzYpgTcyLzSPUjZTEDLDgzaQY0SngTUQYUR3sTN1k2RPUDahcFLVkkdUwlX4QyPO4FNwHld3.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.CSncCZOciKUAkTEQ0TlolQYgCRRgUdMckVsQiUYoFNE0DZ2f1S23RUPIUQTMkYpYTV3fjTXkWSWoUazXUVpgSUMg1Mn8zMtTETRUDUSYlZFkENHIEV40zUZ0FMVkkZ3rVSncCZOciKUAkTEQ0TlolQYgCRRgUdMckVsQiUYoFNvzDZ2f1S23RUPIUQTMkYpYTV3fjTZQWSWgEcqYzXzfyZhsVSWkkdIg2R4XWdKAUQrI1YvXUV5UEahkGMC8Dc3XTVq0TaOciZrElcUczXkQSLgoVUr8zMLYjVucmQYgWUrEVN1MTVqcmUXQCNqEVcQYUV4X2PTcVRWg0bUYzXqkjLhYlcwDVZyYUVpASZHIGRBgDdUEiXqE0UOglcngjY1wVV0gCLhQCMwfENHIDSnMyPOAUQpQUPvPDRuEkUOgFTTI0TQsFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZPQzTYkjPHESQFEFLUY0SnwzPLY2LBwTLtLESv3xTLoGVC0zLPMTSncCZOciKUAkTEQ0TlolQYgCRnEEQIomTn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHgWTAslZSglKnM1Y2Y0XqASZHMGTosDMpkFS14xPLcmKowDMpkVSyfTZMg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fDZLY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPSAUVpgjYXcEVxU0UYgCRnwjctLDS1MiPLg1Mn8zMtTETRUDUSYlZFkENHIDUAQiZHYFVWgkbUcUV3fjPLQmK4wzclMDS5QUZMcGVSwjdpMkS1gTdLg1Mn8zMtTETRUDUSYlZFkENHITTIkkZQg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWQTUDMUPqsFR0MyPOAUQpQUPvPDRuEkUOgld5MEQ3rVTRUEUTglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5cETEo1TncCZOciKUAkTEQ0TlolQYgCRBQURQACTHkDdKkic4sDTEwlXmAiUYoWUrIVdzLzStgSLhoGNvfUczXzX3giQgkGNn8zMLYjVucmQYgWUrEVN1MTVqcmUXQCNqEVcQYUV4X2PTcVRWg0bUYzXqkjLhYlcwDVZyYUVpASZHIGRBgDdUEiXqE0UOglcngjY1wVV0gCLhQCMwfENHIDSnMyPOAUQpQUPvPDRuEkUOgFTTI0TQsFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZPQzTYkjPHESQFEFLUY0SnAUZLk2LnwDMTkFSyX1PLMCUS4TdhMUSncCZOciKUAkTEQ0TlolQYgCRnEEQIomTn4BZic1cVM1ZvjFR1MCdLICRowTdpMkSxH1TLgGQ4wDLLMESncCZOciKUAkTEQ0TlolQYgCR3EUPqo1Tn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fDZLY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPSAUVpgjYXcEVxU0UYgCR30DMpMkSzo1TNQiKowTdPkGSxPUZHU2LC8DTEoFUAACQH8VTV8DZtTETNkjPHESQFEFLUY0SnomPLQmX4wzLTkFSz.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.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkic4sTZmYkVxEEahsFMr8zM2HTVqcmUXQCNqEVcQYUV4X2PYs1cVgEM3rVX0EkUYkicCQ0YIcEVyUkQisVRxHlY1ESXoMmUYoFLogjbHIDR3UULhsVTW8DZ1gFRlYGaYUGNvHFMzDCV3fjPLg1LC8DTEoFUAACQH8VTV8DZPQkTSE0ZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnAEQSkURBgTLEYTXvTkUOgFQS0jctj1R1gDdKkicCQUPIUETMEjTZoFLogjQQoFTKkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRGUDUR4TRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHgTPqEEZtf1XmcmUisFLogTLtj1R2gTZMkmKCwzLDMESxfUdMAiYogTcyLzSPUjZTEDLDgzaQY0SnYGQTYTRBgTLEYTXvTkUOgFRCwjctLDSz4RZHU2LC8DTEoFUAACQH8VTV8DZtTETNkjPHESQFEFLUY0Sn4RZKACUS4jdDkFS14RZLACV4wjdhkVSwfDdKkicCQUPIUETMEjTZoFLogDQqoVTFkDdKkicCQUPIUETMEjTZoFLogTS3PTTkEEUQwTQTYEZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5ckQIUUTQkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRMgCQQUVPUAkSIg2R4X2PTETRUAUSAIkVpASZHA0ZDU0PmoFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkicoEVc3.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkic4sTZmYkVxEEahsFMr8zM2HTVqcmUXQCNqEVcQYUV4XWdKk1YVokbQwlXqQCaOcyMRoEcAc0X5gyZgUWTVkUN1MkVzEzUioGNqEVcQYUV4XWdX41ZFElZIcUVzQyPOoVUFE1YqIyUzgiQYsFMC8DTEwlXmAiUYoWUrIVdAITX00TLZsVTV8DZ1gFRlgzUYkWUFMFNHIzRn4hPgwFNwbUdq0VXoASZHYGRn8zMtTETRUDUSYlZFkENHITTI0TQUglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPQwzZqgjYXcEVxU0UYgCR3wDMLk1R24RZLgGS4wzLlkVSxPzPNMCR3sTN1MDUAkTUP0TPRokZvjFRFEkZPsTRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHcTQTIkSIIDRwTjQgASUV8DZ5IjSzg0PNQCSSwTdlMjSyP0PMQiYCwDLHg2R4X2PTETRUAUSAIkVpASZHgTPqEEZtf1XmcmUisFLogDdtj1R1gDdKkicCQUPIUETMEjTZoFLogDSAsVTn4BZic1cVM1ZvjFR34xPLYmKosjcHg2R4X2PTETRUAUSAIkVpASZHAUQpMEZtf1XmcmUisFLogzbtj1R24RZMICRC0DLtLDSwPUZMcGR40DMHg2R4X2PTETRUAUSAIkVpASZHQzZpEkQIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYQQUTLUDUVg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWYTRUEUTIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogTS3PTTkETUP4TR3sTN1MDUAkTUP0TPRokZvjFRPsFQUMzYpgTcyLzS04RUXgWQVE1ZQcUV30TaOciYwDVdQIyUogCagoWRxDlbMIyR4XWdX41ZFElZIcUVzQyPOoVUFE1YqIyUzgiQYsFMC8DTEwlXmAiUYoWUrIVdAITX00TLZsVTV8DZ1gFRlgzUYkWUFMFNHIzRn4hPgwFNwbUdq0VXoASZHYGRn8zMtTETRUDUSYlZFkENHITTI0TQUglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPQwzZqgjYXcEVxU0UYgCRn0jdHk1R5g0TMcGTC4DMHMUSxX1TLkGR3sTN1MDUAkTUP0TPRokZvjFRFEkZPsTRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHcTQTIkSIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogDRAsVTn4BZic1cVM1ZvjFR34RZKYGR3sTN1MDUAkTUP0TPRokZvjFRLEzZQglKnM1Y2Y0XqASZHgmKCwjctj1R1gDdKkicCQUPIUETMEjTZoFLogDTEo1Tn4BZic1cVM1ZvjFRy4RZKcGRowTdtjGS2gzPNgGTowjdpkFSxfDdKkicCQUPIUETMEjTZoFLogDQqoVTFkDdKkicCQUPIUETMEjTZoFLogTS3PTTkEEUQwTQTYEZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5ckQIUUTQkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRMgCQQUVPUAkSIg2R4X2PTETRUAUSAIkVpASZHA0ZDU0PmoFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkicoEVc3.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkicCk0Z2YEVzfyZgUWTVkUN1MDUmkzUXMWUFM1ZIIiXlYWLgk1bVkkZvjFRxgjPHgWUwH1ZQc0SnYGZHYlcrkUc3.iXzPSLXgCRBwDZyLzSPUjZTEDLDgzaQY0SnAEURMUTqgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOgFTDMUVIIDRwTjQgASUV8DZDkGS2MCdMkmYo0jdhMTSw3xTNkmXS0DZ2f1S23RUPIUQTMkYpYTV3fDZQQTR5IEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCR3EUPqo1Tn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fDZLY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPSAUVpgjYXcEVxU0UYgCRnwjctLDS1MiPLg1Mn8zMtTETRUDUSYlZFkENHIDUAQiZHYFVWgkbUcUV3fjPLQGSowDdDkVSyP0PNMCV4wzLLMDSvHVZHU2LC8DTEoFUAACQH8VTV8DZPQkTFkkZHU2LC8DTEoFUAACQH8VTV8DZ5o2TDgSQQUzcTAUVIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYYoFUEUzZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEQUPznFR0MyPOAUQpQUPvPDRuEkUOglKUIEUMQjTncCZOcyMBQ0YIcEVyUkQisVRxHVN1MjV00zQiUVSwDFcQ0lX0cWLhU2LC8Dc3DyUoclUZIWTrI1ZzDyR4XWdKoVUFE1YqIyUzgiQYsFMC8jZUYTXmslLWQGNFk0ZzLzSPUDahcFLVkkdUwlX4EjPgUWSwn0ZQY0SnYGZHYFRWkUdUYzX3fjPKglKBEFa3DyU4sVagkFLogjcHg1S23RUPIUQTMkYpYTV3fjPQkTSEUEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCRBEESqsFRlg0UXIWUWkENHITS5wTZKICVSwjdDkGSvH1PMgGQC4zLHg2R4X2PTETRUAUSAIkVpASZHYTTpA0RIIDRwTjQgASUV8DZtj1R3A0TMACQS4DMpMUSwX1TNkmZowzcHg2R4X2PTETRUAUSAIkVpASZHcTQTIkSIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogDRAsVTn4BZic1cVM1ZvjFR34RZKYGR3sTN1MDUAkTUP0TPRokZvjFRLEzZQglKnM1Y2Y0XqASZHgmKCwjctj1R1gDdKkicCQUPIUETMEjTZoFLogDTEo1Tn4BZic1cVM1ZvjFR1MiTNYmXCwjdTkVS1gTdMQiYC0TLDMkSncCZOciKUAkTEQ0TlolQYgCRBEURYoVTncCZOciKUAkTEQ0TlolQYgCRRM0SQo2UDUEQSEzZqgTcyLzSPUjZTEDLDgzaQY0SnomdSQDNqEkTUQEUn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWAUQpMEZ2f1S23RUPIUQTMkYpYTV3fjPTkTTv.ERIg2R4XWdKAUQrI1YvXUV5UEahkGMC8ja3DiX5gCLXUGMFMFd3XTX4gCZOcCSFo0a2YTV3UEagkicCk0Z2YEVzfyZgUWTVkUN1MDUmkzUXMWUFM1ZIIiXlYWLgk1bVkkZvjFRxgjPHgWUwH1ZQc0SnYGZHYlcrkUc3.iXzPSLXgCRBwDZyLzSPUjZTEDLDgzaQY0SnAEURMUTqgjYXcEVxU0UYgCRRwDctjFR0MyPOAUQpQUPvPDRuEkUOgFTDMUVIIDRwTjQgASUV8DZPMkSzLiTMomZCwjdDkWS5Y1PLoGVS4DZ2f1S23RUPIUQTMkYpYTV3fDZQQTR5IEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCR3EUPqo1Tn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fDZLY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPSAUVpgjYXcEVxU0UYgCR30zLXkFSzQzPLgGU4wDMtjVS3QUZHU2LC8DTEoFUAACQH8VTV8DZtTETNkjPHESQFEFLUY0Sn4RZKMCVS0TLDkGSwn1PNQCUS4TdTMDSwfDdKkicCQUPIUETMEjTZoFLogDQqoVTFkDdKkicCQUPIUETMEjTZoFLogTS3PTTkEEUQwTQTYEZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5ckQIUUTQkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRMgCQQUVPUAkSIg2R4X2PTETRUAUSAIkVpASZHA0ZDU0PmoFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkicoEVc3.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkicCk0Z2YEVzfyZgUWTVkUN1MDUmkzUXMWUFM1ZIIiXlYWLgk1bVkkZvjFRxgjPHgWUwH1ZQc0SnYGZHYlcrkUc3.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."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "ChowMatrix",
									"origin" : "ChowMatrix.vst3",
									"type" : "VST3",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "ChowMatrix.vst3",
										"plugindisplayname" : "ChowMatrix",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "24768.VMjLgbKX...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9DCNzjCLtXUSpwzYTsRTt3hKOshYWElbAg1XqkjLh8FNrEFNHIESz4RZHYFUrEVZ3XTVuQSLYgCRRUEUYQ0RyfDdOkiKB8zPmESXx.CUXoWRWo0L3.CU5UjQisFMC8TdQcEV5UEaOciKUgEdEYUXqE0UYgWSs8zMtTETRUDUSYlZFkENHITVqcmUXQCNEMFMAcUVn4BZic1cVM1ZvjFR3MiPLg1Mn8zMtTETRUDUSYlZFkENHITV3slLWYWQrI1YvvFRlg0UXIWUWkENHI0R2gTZKYGR3sTN1MDUAkTUP0TPRokZvjFRuQSLhcFMVokdq0FRlg0UXIWUWkENHIDSzQ0PLEiXCwDdPkFS44xTNAiXCwTdDkFR0MyPOAUQpQUPvPDRuEkUOgFSsEFMMwFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZhcUV5gSQhcVRWg0bIIDRwTjQgASUV8DZ5IES3MiPLg1Mn8zMtTETRUDUSYlZFkENHIjX3UULhsVTsgjYXcEVxU0UYgCRRwDZ2f1S23RUPIUQTMkYpYTV3fjTXkWSWoUazXUVpgSQLg1Mn8zMtTETRUDUSYlZFkENHIEV40zUZ0FMVkkZ3TESncCZOciKUAkTEQ0TlolQYgCRRgUdMckVsQiUYoFNqwDZ2f1S23RUPIUQTMkYpYTV3fjTXkWSWoUazXUVpgCLLg1Mn8zMtTETRUDUSYlZFkENHIEV40zUZ0FMVkkZ3TTSncCZOciKUAkTEQ0TlolQYgCRRgUdMckVsQiUYoFNU0DZ2f1S23RUPIUQTMkYpYTV3fjTXkWSWoUazXUVpgyZMg1Mn8zMtTETRUDUSYlZFkENHIEV40zUZ0FMVkkZ3.SSncCZOciKUAkTEQ0TlolQYgCRRoEcMcEVzslQiQCNqI1ZMcUV5kDdKkicCQUPIUETMEjTZoFLogjLUYzXkMlUX8FMwbUZ3XUX1gSQhcVRWg0bIg2R4XWdKAUQrI1YvXUV5UEahkGMC8Dc3XTVq0TaOciZrElcUczXkQSLgoVUr8zMLYjVucmQYgWUrEVN1MTVqcmUXQCNqEVcQYUV4X2PTcVRWg0bUYzXqkjLhYlcwDVZyYUVpASZHIGRBgDdUEiXqE0UOglcngjY1wVV0gCLhQCMwfENHIDSn4BZhcFMFkUY2ESXoMmUOglcngTN1MDUAkTUP0TPRokZvjFRDsldTQURBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHQzcTYEZtf1XmcmUisFLogTdyfGSwP0PMcmYo0jLHMUSwPTZMoGVogTcyLzSPUjZTEDLDgzaQY0SngEQQIzbpgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOglXTAURznFRlg0UXIWUWkENHI0R5MiTNQCRCwjctLES1gzTNQCVC4DdXkFR0MyPOAUQpQUPvPDRuEkUOglYDQkQIIDRwTjQgASUV8DZHMDSz4RZHU2LC8DTEoFUAACQH8VTV8DZ1QDUFkjPHESQFEFLUY0SngzPLYmKCwDctjFR0MyPOAUQpQUPvPDRuEkUOglKUAkSIIDRwTjQgASUV8DZtj1R1Y1TMECV4wjdLkWSy.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.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkic4sTZmYkVxEEahsFMr8zM2HTVqcmUXQCNqEVcQYUV4X2PYs1cVgEM3rVX0EkUYkicCQ0YIcEVyUkQisVRxHlY1ESXoMmUYoFLogjbHIDR3UULhsVTW8DZ1gFRlYGaYUGNvHFMzDCV3fjPLglKnI1YzXTVkcWLgk1bV8DZ1gFR4X2PTETRUAUSAIkVpASZHQzZ5QEUIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogDQ2QkUn4BZic1cVM1ZvjFR2I1TLQmYowTLLkWS1gTdLQCRS0jLlkFR0MyPOAUQpQUPvPDRuEkUOgFVDEkPyoFRlg0UXIWUWkENHIDSzQ0TNYmKC0jctjFSy3xTNACRC0DLPkFR0MyPOAUQpQUPvPDRuEkUOglXTAURznFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZlQDUFkjPHESQFEFLUY0SngzPLQmKogTcyLzSPUjZTEDLDgzaQY0SnYGQTYTRBgTLEYTXvTkUOgFSC4TLDk1RvPUdMMCVSwTdHMjS2gzTMg1Mn8zMtTETRUDUSYlZFkENHIDUAQiZHYFVWgkbUcUV3fjPLQmKo0DLLMjSyfUdMQCUCwjdLMkS5QUdLg1Mn8zMtTETRUDUSYlZFkENHITTIkkZQg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWQTUDMUPqsFR0MyPOAUQpQUPvPDRuEkUOgld5MEQ3rVTRUEUTglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5cETEo1TncCZOciKUAkTEQ0TlolQYgCRBQURQACTHkDdKkicCQUPIUETMEjTZoFLogjTUoVUncCZOcyMBQ0YIcEVyUkQisVRxHVN1MjV00zQiUVSwDFcQ0lX0cWLhU2LC8TZmYkVxEEahsFMr8zMPYUVxUjUjUFMwDlZUw1S23RUXgWQVE1ZQcUV30zQHIGNwfUbUYTV3fjPKglKnI1ZMcUV5ASZHIGRBgjbYESXk0zUjQWSV8DZtjFRlgzUXQWTwbkb3DCVwASZHIGRn8zMtTETRUDUSYlZFkENHITTI0TQUglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPQwzZqgjYXcEVxU0UYgCRnwjdlk1R2g0PMcGVS4TdDMESvfTdLoGR3sTN1MDUAkTUP0TPRokZvjFRFEkZPsTRBgTLEYTXvTkUOglKosDLLMjSvf0PLYGSowzLPMTSv.UdLACR3sTN1MDUAkTUP0TPRokZvjFRGUDUR4TRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHgTPqEEZtf1XmcmUisFLogDdtj1R1gDdKkicCQUPIUETMEjTZoFLogDSAsVTn4BZic1cVM1ZvjFR34xPLYmKosjcHg2R4X2PTETRUAUSAIkVpASZHAUQpMEZtf1XmcmUisFLogjcyfVS4QzTNgGVowDMlMES5QzPMIiZS0DZ2f1S23RUPIUQTMkYpYTV3fjPQkTVpEEZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5cEQUQzTAs1ZHU2LC8DTEoFUAACQH8VTV8DZ5o2TDgyZQIUUTQEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCRRM0SQo2UPUjZSg1Mn8zMtTETRUDUSYlZFkENHIDUIEELPgTR3sTN1MDUAkTUP0TPRokZvjFRRUkZUg1Mn8zM2HDUmkzUXMWUFM1ZIIiX4X2PZUWSGMVYMESXzEUahU2cwHVcyLzSzgSLWk1YVokbQwlXqQSLKkic4sjZUYTXmslLWQGNFk0ZzLzS0wjQZ81cFkEdUwVX4XWdKoVUFE1YqIyUzgiQYsFMC8jZUYTXmslLWQGNFk0ZzLzSPUDahcFLVkkdUwlX4EjPgUWSwn0ZQY0SnYGZHYFRWkUdUYzX3fjPKglKBEFa3DyU4sVagkFLogjcHIDR3UDagoFNEEVcMEiV3fjPKg1LC8DTEoFUAACQH8VTV8DZPQkTSE0ZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnAEQSkURBgTLEYTXvTkUOglKosjdLkVSy3xTNQCR40DdHMUS2QTZLQCR3sTN1MDUAkTUP0TPRokZvjFRFEkZPsTRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHcTQTIkSIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogDRAsVTn4BZic1cVM1ZvjFRw3RZKcGRo0TdtLDSyPzTLICV40DLlkFR0MyPOAUQpQUPvPDRuEkUOglcDQkQIIDRwTjQgASUV8DZHMDS14xPLQmKogTcyLzSPUjZTEDLDgzaQY0Sn4RUP4TRBgTLEYTXvTkUOglKosjdXMUSzP0TLQCQS4DLTMUSwf0PMcGR3sTN1MDUAkTUP0TPRokZvjFRDslZQYTR3sTN1MDUAkTUP0TPRokZvjFRMgCQQUVTTEESEQkUncCZOciKUAkTEQ0TlolQYgCRRM0SQo2UFkTUQEURBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZH0DNDEUYAUETNkDdKkicCQUPIUETMEjTZoFLogDTqQTUCclZHU2LC8DTEoFUAACQH8VTV8DZHUUTVkDdKkic4sDTEwlXmAiUYoWUrIVdzLzStgSLhoGNvfUczXzX3giQgkGNn8zMyDSXk0jQZ81cFkEdUwVX0MyPOUGTVkkbEYEYkQSLgoVUr8zM2fGVtslQgoVRWkEczLzS0AkUYIWQVQVYzDSXpUEaOcyM3gkaqYTXpkzUYQGMC8TcpwVX1U0QiUFMwDlZUw1S2nFagYWUGMVYzDSXpUEaOcCSFo0a2YTV3UEagkicCk0Z2YEVzfyZgUWTVkUN1MDUmkzUXMWUFM1ZIIiXlYWLgk1bVkkZvjFRxgjPHgWUwH1ZQc0SnYGZHYlcrkUc3.iXzPSLXgCRBwDZtflXmQiQYU1cwDVZyY0SnYGZHkicCQUPIUETMEjTZoFLogDQqoGUTkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRDcGUVglKnM1Y2Y0XqASZHoGQo0DclMUS24xTLkGQC4TdTMkS4YVZHU2LC8DTEoFUAACQH8VTV8DZXQTTBMmZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnIFUPkDMpgjYXcEVxU0UYgCRRszLyfVSynVdLcGSC4zLlMUS5o1PNYGUogTcyLzSPUjZTEDLDgzaQY0SnYFQTYTRBgTLEYTXvTkUOgFRCwDctjFR0MyPOAUQpQUPvPDRuEkUOglcDQkQIIDRwTjQgASUV8DZHMDS14xPLQmKogTcyLzSPUjZTEDLDgzaQY0Sn4RUP4TRBgTLEYTXvTkUOgldBwDcTMjS4QTdMECTS4TdXMTS5I1TLoGTogTcyLzSPUjZTEDLDgzaQY0SnAEURYTVpgTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEEUQ2QETYkDdKkicCQUPIUETMEjTZoFLogTS3PTTkkkZTUTQqgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOgld5MEQ3TDUAQiZHU2LC8DTEoFUAACQH8VTV8DZtTkTT0DQRg1Mn8zMtTETRUDUSYlZFkENHgFUEk0ZHU2LC8TctTEV3UjUgsVTWkEdM01S2XVLgkWTxbUZ3vVX5kjLgIWSxrTN1kGVtslQgoVRWkEczLzSpUkQgc1ZxbEc3XTVqQyPOAUQrI1YvXUV5UEahkWPBEVcMEiVqEkUOglcngjYHcUV4UkQigCRBsDZtHTXrgSLWk2ZsEVZvjFR1gjPHgWQrElZ3TTX00TLZgCRBsDZyLzSPUjZTEDLDgzaQY0SnAEURMUTqgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOgFTDMUVIIDRwTjQgASUV8DZDMDS3MCdMMiKSwzcLkFS34RZLcGTC4DZ2f1S23RUPIUQTMkYpYTV3fDZQQTR5IEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCR3EUPqo1Tn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fDZLY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPSAUVpgjYXcEVxU0UYgCRnwjctLDS1MiPLg1Mn8zMtTETRUDUSYlZFkENHIDUAQiZHYFVWgkbUcUV3fjPLQGUSwDMtLUSxPzTMoGVS0DLPMUSwPUZHU2LC8DTEoFUAACQH8VTV8DZPQkTFkkZHU2LC8DTEoFUAACQH8VTV8DZ5o2TDgSQQUzcTAUVIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYYoFUEUzZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEQUPznFR0MyPOAUQpQUPvPDRuEkUOglKUIEUMQjTncCZOciKUAkTEQ0TlolQYgCRnQUQYsFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkicoEVc3.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkicCk0Z2YEVzfyZgUWTVkUN1MDUmkzUXMWUFM1ZIIiXlYWLgk1bVkkZvjFRxgjPHgWUwH1ZQc0SnYGZHYlcrkUc3.iXzPSLXgCRBwDZtflXmQiQYU1cwDVZyY0SnYGZHkicCQUPIUETMEjTZoFLogDQqoGUTkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRDcGUVglKnM1Y2Y0XqASZHQyL30DLXMDSvP0PNkGQS4jcpMESyfDdKkicCQUPIUETMEjTZoFLogjQQoFTKkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRGUDUR4TRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHgTPqEEZtf1XmcmUisFLogDdtj1R1gDdKkicCQUPIUETMEjTZoFLogDSAsVTn4BZic1cVM1ZvjFR34xPLYmKosjcHg2R4X2PTETRUAUSAIkVpASZHAUQpMEZtf1XmcmUisFLogzbtj1RzPTZLgGQ4wDdtjVS3o1TLcmZC4jLHg2R4X2PTETRUAUSAIkVpASZHQzZpEkQIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYQQUTLUDUVg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWYTRUEUTIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogTS3PTTkETUP4TR3sTN1MDUAkTUP0TPRokZvjFRPsFQUMzYpgTcyLzSPUjZTEDLDgzaQY0SngTUQYUR3sTN1k2RPUDahcFLVkkdUwlX4QyPO4FNwHld3.CV0QiQigGNFEVd3f1S2LSLgUVSFo0a2YTV3UEagU2LC8TcPYUVxUjUjUFMwDlZUw1S2.kUYIWQVQVYzDSXpUEaOciKUgEdEYUXqE0UYgWSGgjb3DCVwUkQYgCRBsDZtflXq0zUYoGLogjbHIDRxkULgUVSWQFcMY0Sn4RZHYFRWgEcQEyUxgSLXEGLogjbHg1S23RUPIUQTMkYpYTV3fjPQkTSEUEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCRBEESqsFRlg0UXIWUWkENHgGS2gUZKkmZCwzctjVS34xTLcmXSwDMHg2R4X2PTETRUAUSAIkVpASZHYTTpA0RIIDRwTjQgASUV8DZtj1R3A0TMACQS4DMpMUSwX1TNkmZowzcHg2R4X2PTETRUAUSAIkVpASZHcTQTIkSIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogDRAsVTn4BZic1cVM1ZvjFR34RZKYGR3sTN1MDUAkTUP0TPRokZvjFRLEzZQglKnM1Y2Y0XqASZHgmKCwjctj1R1gDdKkicCQUPIUETMEjTZoFLogDTEo1Tn4BZic1cVM1ZvjFR1MCZLcmKS0DdtLUS1Q0TNYGUSwDLDMTSncCZOciKUAkTEQ0TlolQYgCRBEURYoVTncCZOciKUAkTEQ0TlolQYgCRRM0SQo2UDUEQSEzZqgTcyLzSPUjZTEDLDgzaQY0SnomdSQDNqEkTUQEUn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWAUQpMEZ2f1S23RUPIUQTMkYpYTV3fjPTkTTv.ERIg2R4X2PTETRUAUSAIkVpASZHIUUpUEZ2f1S2biPTcVRWg0bUYzXqkjLhkicCoUcMczXk0TLgQWTsIVc2EiX0MyPOk1YVokbQwlXqQCaOcCTVkkbEYEYkQSLgoVUr8zMtTEV3UjUgsVTWkEdMcDRxgSLXEWUFkENHIzRn4BZhsVSWkkdvjFRxgjPHIWVwDVYMcEYz0jUOglKogjYHcEVzEULWIGNwfUbvjFRxgDZOciKUAkTEQ0TlolQYgCRBEURMUTUn4BZic1cVM1ZvjFR2MiPLg1Mn8zMtTETRUDUSYlZFkENHITTLs1ZHYFVWgkbUcUV3fDdMQGSC0jcDkWSz.0PMkGSS0DMLkWSvfDdKkicCQUPIUETMEjTZoFLogjQQoFTKkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRGUDUR4TRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHgTPqEEZtf1XmcmUisFLogDdtj1R1gDdKkicCQUPIUETMEjTZoFLogDSAsVTn4BZic1cVM1ZvjFRxXVZMg2LRwjcHMUS4o1PLECRS0DZ2f1S23RUPIUQTMkYpYTV3fjPTEDMpgjYXcEVxU0UYgCRBwDcXkVS5oVZLQCSC4DMpMUS4g0TLkGSogTcyLzSPUjZTEDLDgzaQY0SnAEURYTVpgTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEEUQ2QETYkDdKkicCQUPIUETMEjTZoFLogTS3PTTkkkZTUTQqgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOgld5MEQ3TDUAQiZHU2LC8DTEoFUAACQH8VTV8DZtTkTT0DQRg1Mn8zMtTETRUDUSYlZFkENHgFUEk0ZHU2LC8TctTEV3UjUgsVTWkEdM01S2XVLgkWTxbUZ3vVX5kjLgIWSxrTN1kVX0gCLX41ZFElZIcUVzgCZOcyMBk0Z2YEVzfyZgUWTVkUN1MTVqcmUXQCNqEVcQYUV4X2PTcVRWg0bUYzXqkjLhYlcwDVZyYUVpASZHIGRBgDdUEiXqE0UOglcngjY1wVV0gCLhQCMwfENHIDSn4BZhcFMFkUY2ESXoMmUOglcngTN1MDUAkTUP0TPRokZvjFRDsldTQURBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHQzcTYEZtf1XmcmUisFLogDdDkGSzgzTMEiKowjLHkFS2gUdMQiXogTcyLzSPUjZTEDLDgzaQY0SngEQQIzbpgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOglXTAURznFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZlQDUFkjPHESQFEFLUY0SngzPLQmKogTcyLzSPUjZTEDLDgzaQY0SnYGQTYTRBgTLEYTXvTkUOgFRCwjctLDSz4RZHU2LC8DTEoFUAACQH8VTV8DZtTETNkjPHESQFEFLUY0SnomPLQGUC0jclkWSx.0PLcmYowzLhkVSvnVZHU2LC8DTEoFUAACQH8VTV8DZPQkTFkkZHU2LC8DTEoFUAACQH8VTV8DZ5o2TDgSQQUzcTAUVIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYYoFUEUzZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEQUPznFR0MyPOAUQpQUPvPDRuEkUOglKUIEUMQjTncCZOciKUAkTEQ0TlolQYgCRnQUQYsFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkicoEVc3.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkic4sTZmYkVxEEahsFMr8zM2HTVqcmUXQCNqEVcQYUV4X2PYs1cVgEM3rVX0EkUYkicCQ0YIcEVyUkQisVRxHlY1ESXoMmUYoFLogjbHIDR3UULhsVTW8DZ1gFRlYGaYUGNvHFMzDCV3fjPLglKnI1YzXTVkcWLgk1bV8DZ1gFR4X2PTETRUAUSAIkVpASZHQzZ5QEUIIDRwTjQgASUV8DZtj1R3Q0TMQiZS4DMlkFS4QUdMYGRS0zcHg2R4X2PTETRUAUSAIkVpASZHQzcTYEZtf1XmcmUisFLogDdtjVSzQ0PMoGUS0DLXkVS54RZMgGUogTcyLzSPUjZTEDLDgzaQY0SngEQQIzbpgjYXcEVxU0UYgCRBwDcPMkS24RdLQiZS4zcLkWSyH1PNoGRogTcyLzSPUjZTEDLDgzaQY0SnIFUPkDMpgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOglYDQkQIIDRwTjQgASUV8DZHMDSz4RZHU2LC8DTEoFUAACQH8VTV8DZ1QDUFkjPHESQFEFLUY0SngzPLYmKCwDctjFR0MyPOAUQpQUPvPDRuEkUOglKUAkSIIDRwTjQgASUV8DZtj1R3I1TNACQowDdlkVS2YVZMgGQC4TdHg2R4X2PTETRUAUSAIkVpASZHQzZpEkQIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYQQUTLUDUVg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWYTRUEUTIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogTS3PTTkETUP4TR3sTN1MDUAkTUP0TPRokZvjFRPsFQUMzYpgTcyLzSPUjZTEDLDgzaQY0SngTUQYUR3sTN1k2RPUDahcFLVkkdUwlX4QyPO4FNwHld3.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.CSncCZOciKUAkTEQ0TlolQYgCRRgUdMckVsQiUYoFNE0DZ2f1S23RUPIUQTMkYpYTV3fjTXkWSWoUazXUVpgSUMg1Mn8zMtTETRUDUSYlZFkENHIEV40zUZ0FMVkkZ3rVSncCZOciKUAkTEQ0TlolQYgCRRgUdMckVsQiUYoFNvzDZ2f1S23RUPIUQTMkYpYTV3fjTZQWSWgEcqYzXzfyZhsVSWkkdIg2R4XWdKAUQrI1YvXUV5UEahkGMC8Dc3XTVq0TaOciZrElcUczXkQSLgoVUr8zMLYjVucmQYgWUrEVN1MTVqcmUXQCNqEVcQYUV4X2PTcVRWg0bUYzXqkjLhYlcwDVZyYUVpASZHIGRBgDdUEiXqE0UOglcngjY1wVV0gCLhQCMwfENHIDSnMyPOAUQpQUPvPDRuEkUOgFTTI0TQsFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZPQzTYkjPHESQFEFLUY0SnwzPLY2LBwTLtLESv3xTLoGVC0zLPMTSncCZOciKUAkTEQ0TlolQYgCRnEEQIomTn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHgWTAslZSglKnM1Y2Y0XqASZHMGTosDMpkFS14xPLcmKowDMpkVSyfTZMg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fDZLY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPSAUVpgjYXcEVxU0UYgCRnwjctLDS1MiPLg1Mn8zMtTETRUDUSYlZFkENHIDUAQiZHYFVWgkbUcUV3fjPLQmK4wzclMDS5QUZMcGVSwjdpMkS1gTdLg1Mn8zMtTETRUDUSYlZFkENHITTIkkZQg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWQTUDMUPqsFR0MyPOAUQpQUPvPDRuEkUOgld5MEQ3rVTRUEUTglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5cETEo1TncCZOciKUAkTEQ0TlolQYgCRBQURQACTHkDdKkic4sDTEwlXmAiUYoWUrIVdzLzStgSLhoGNvfUczXzX3giQgkGNn8zMLYjVucmQYgWUrEVN1MTVqcmUXQCNqEVcQYUV4X2PTcVRWg0bUYzXqkjLhYlcwDVZyYUVpASZHIGRBgDdUEiXqE0UOglcngjY1wVV0gCLhQCMwfENHIDSnMyPOAUQpQUPvPDRuEkUOgFTTI0TQsFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZPQzTYkjPHESQFEFLUY0SnAUZLk2LnwDMTkFSyX1PLMCUS4TdhMUSncCZOciKUAkTEQ0TlolQYgCRnEEQIomTn4BZic1cVM1ZvjFR1MCdLICRowTdpMkSxH1TLgGQ4wDLLMESncCZOciKUAkTEQ0TlolQYgCR3EUPqo1Tn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fDZLY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPSAUVpgjYXcEVxU0UYgCR30DMpMkSzo1TNQiKowTdPkGSxPUZHU2LC8DTEoFUAACQH8VTV8DZtTETNkjPHESQFEFLUY0SnomPLQmX4wzLTkFSz.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.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkic4sTZmYkVxEEahsFMr8zM2HTVqcmUXQCNqEVcQYUV4X2PYs1cVgEM3rVX0EkUYkicCQ0YIcEVyUkQisVRxHlY1ESXoMmUYoFLogjbHIDR3UULhsVTW8DZ1gFRlYGaYUGNvHFMzDCV3fjPLg1LC8DTEoFUAACQH8VTV8DZPQkTSE0ZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnAEQSkURBgTLEYTXvTkUOgFQS0jctj1R1gDdKkicCQUPIUETMEjTZoFLogjQQoFTKkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRGUDUR4TRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHgTPqEEZtf1XmcmUisFLogTLtj1R2gTZMkmKCwzLDMESxfUdMAiYogTcyLzSPUjZTEDLDgzaQY0SnYGQTYTRBgTLEYTXvTkUOgFRCwjctLDSz4RZHU2LC8DTEoFUAACQH8VTV8DZtTETNkjPHESQFEFLUY0Sn4RZKACUS4jdDkFS14RZLACV4wjdhkVSwfDdKkicCQUPIUETMEjTZoFLogDQqoVTFkDdKkicCQUPIUETMEjTZoFLogTS3PTTkEEUQwTQTYEZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5ckQIUUTQkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRMgCQQUVPUAkSIg2R4X2PTETRUAUSAIkVpASZHA0ZDU0PmoFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkicoEVc3.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkic4sTZmYkVxEEahsFMr8zM2HTVqcmUXQCNqEVcQYUV4XWdKk1YVokbQwlXqQCaOcyMRoEcAc0X5gyZgUWTVkUN1MkVzEzUioGNqEVcQYUV4XWdX41ZFElZIcUVzQyPOoVUFE1YqIyUzgiQYsFMC8DTEwlXmAiUYoWUrIVdAITX00TLZsVTV8DZ1gFRlgzUYkWUFMFNHIzRn4hPgwFNwbUdq0VXoASZHYGRn8zMtTETRUDUSYlZFkENHITTI0TQUglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPQwzZqgjYXcEVxU0UYgCR3wDMLk1R24RZLgGS4wzLlkVSxPzPNMCR3sTN1MDUAkTUP0TPRokZvjFRFEkZPsTRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHcTQTIkSIIDRwTjQgASUV8DZ5IjSzg0PNQCSSwTdlMjSyP0PMQiYCwDLHg2R4X2PTETRUAUSAIkVpASZHgTPqEEZtf1XmcmUisFLogDdtj1R1gDdKkicCQUPIUETMEjTZoFLogDSAsVTn4BZic1cVM1ZvjFR34xPLYmKosjcHg2R4X2PTETRUAUSAIkVpASZHAUQpMEZtf1XmcmUisFLogzbtj1R24RZMICRC0DLtLDSwPUZMcGR40DMHg2R4X2PTETRUAUSAIkVpASZHQzZpEkQIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYQQUTLUDUVg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWYTRUEUTIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogTS3PTTkETUP4TR3sTN1MDUAkTUP0TPRokZvjFRPsFQUMzYpgTcyLzS04RUXgWQVE1ZQcUV30TaOciYwDVdQIyUogCagoWRxDlbMIyR4XWdX41ZFElZIcUVzQyPOoVUFE1YqIyUzgiQYsFMC8DTEwlXmAiUYoWUrIVdAITX00TLZsVTV8DZ1gFRlgzUYkWUFMFNHIzRn4hPgwFNwbUdq0VXoASZHYGRn8zMtTETRUDUSYlZFkENHITTI0TQUglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPQwzZqgjYXcEVxU0UYgCRn0jdHk1R5g0TMcGTC4DMHMUSxX1TLkGR3sTN1MDUAkTUP0TPRokZvjFRFEkZPsTRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHcTQTIkSIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogDRAsVTn4BZic1cVM1ZvjFR34RZKYGR3sTN1MDUAkTUP0TPRokZvjFRLEzZQglKnM1Y2Y0XqASZHgmKCwjctj1R1gDdKkicCQUPIUETMEjTZoFLogDTEo1Tn4BZic1cVM1ZvjFRy4RZKcGRowTdtjGS2gzPNgGTowjdpkFSxfDdKkicCQUPIUETMEjTZoFLogDQqoVTFkDdKkicCQUPIUETMEjTZoFLogTS3PTTkEEUQwTQTYEZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5ckQIUUTQkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRMgCQQUVPUAkSIg2R4X2PTETRUAUSAIkVpASZHA0ZDU0PmoFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkicoEVc3.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkicCk0Z2YEVzfyZgUWTVkUN1MDUmkzUXMWUFM1ZIIiXlYWLgk1bVkkZvjFRxgjPHgWUwH1ZQc0SnYGZHYlcrkUc3.iXzPSLXgCRBwDZyLzSPUjZTEDLDgzaQY0SnAEURMUTqgjYXcEVxU0UYgCRBwDctjFR0MyPOAUQpQUPvPDRuEkUOgFTDMUVIIDRwTjQgASUV8DZDkGS2MCdMkmYo0jdhMTSw3xTNkmXS0DZ2f1S23RUPIUQTMkYpYTV3fDZQQTR5IEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCR3EUPqo1Tn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fDZLY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPSAUVpgjYXcEVxU0UYgCRnwjctLDS1MiPLg1Mn8zMtTETRUDUSYlZFkENHIDUAQiZHYFVWgkbUcUV3fjPLQGSowDdDkVSyP0PNMCV4wzLLMDSvHVZHU2LC8DTEoFUAACQH8VTV8DZPQkTFkkZHU2LC8DTEoFUAACQH8VTV8DZ5o2TDgSQQUzcTAUVIg2R4X2PTETRUAUSAIkVpASZH0DNDEUYYoFUEUzZHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnomdSQDNEQUPznFR0MyPOAUQpQUPvPDRuEkUOglKUIEUMQjTncCZOcyMBQ0YIcEVyUkQisVRxHVN1MjV00zQiUVSwDFcQ0lX0cWLhU2LC8Dc3DyUoclUZIWTrI1ZzDyR4XWdKoVUFE1YqIyUzgiQYsFMC8jZUYTXmslLWQGNFk0ZzLzSPUDahcFLVkkdUwlX4EjPgUWSwn0ZQY0SnYGZHYFRWkUdUYzX3fjPKglKBEFa3DyU4sVagkFLogjcHg1S23RUPIUQTMkYpYTV3fjPQkTSEUEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCRBEESqsFRlg0UXIWUWkENHITS5wTZKICVSwjdDkGSvH1PMgGQC4zLHg2R4X2PTETRUAUSAIkVpASZHYTTpA0RIIDRwTjQgASUV8DZtj1R3A0TMACQS4DMpMUSwX1TNkmZowzcHg2R4X2PTETRUAUSAIkVpASZHcTQTIkSIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogDRAsVTn4BZic1cVM1ZvjFR34RZKYGR3sTN1MDUAkTUP0TPRokZvjFRLEzZQglKnM1Y2Y0XqASZHgmKCwjctj1R1gDdKkicCQUPIUETMEjTZoFLogDTEo1Tn4BZic1cVM1ZvjFR1MiTNYmXCwjdTkVS1gTdMQiYC0TLDMkSncCZOciKUAkTEQ0TlolQYgCRBEURYoVTncCZOciKUAkTEQ0TlolQYgCRRM0SQo2UDUEQSEzZqgTcyLzSPUjZTEDLDgzaQY0SnomdSQDNqEkTUQEUn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHI0TOEkdWAUQpMEZ2f1S23RUPIUQTMkYpYTV3fjPTkTTv.ERIg2R4XWdKAUQrI1YvXUV5UEahkGMC8ja3DiX5gCLXUGMFMFd3XTX4gCZOcCSFo0a2YTV3UEagkicCk0Z2YEVzfyZgUWTVkUN1MDUmkzUXMWUFM1ZIIiXlYWLgk1bVkkZvjFRxgjPHgWUwH1ZQc0SnYGZHYlcrkUc3.iXzPSLXgCRBwDZyLzSPUjZTEDLDgzaQY0SnAEURMUTqgjYXcEVxU0UYgCRRwDctjFR0MyPOAUQpQUPvPDRuEkUOgFTDMUVIIDRwTjQgASUV8DZPMkSzLiTMomZCwjdDkWS5Y1PLoGVS4DZ2f1S23RUPIUQTMkYpYTV3fDZQQTR5IEZtf1XmcmUisFLogjcyHDSncCZOciKUAkTEQ0TlolQYgCR3EUPqo1Tn4BZic1cVM1ZvjFR1MiPLg1Mn8zMtTETRUDUSYlZFkENHIjTPkkZHYFVWgkbUcUV3fDZLY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPSAUVpgjYXcEVxU0UYgCR30zLXkFSzQzPLgGU4wDMtjVS3QUZHU2LC8DTEoFUAACQH8VTV8DZtTETNkjPHESQFEFLUY0Sn4RZKMCVS0TLDkGSwn1PNQCUS4TdTMDSwfDdKkicCQUPIUETMEjTZoFLogDQqoVTFkDdKkicCQUPIUETMEjTZoFLogTS3PTTkEEUQwTQTYEZ2f1S23RUPIUQTMkYpYTV3fjTS8TT5ckQIUUTQkjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFRMgCQQUVPUAkSIg2R4X2PTETRUAUSAIkVpASZHA0ZDU0PmoFR0MyPOUmKUgEdEYUXqE0UYgWSs8zMlESX4EkLWkFNrEldIISXx0jLKkicoEVc3.CVtslQgoVRWkEc3f1S2biPYs1cVgEM3rVX0EkUYkicCk0Z2YEVzfyZgUWTVkUN1MDUmkzUXMWUFM1ZIIiXlYWLgk1bVkkZvjFRxgjPHgWUwH1ZQc0SnYGZHYlcrkUc3.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."
									}
,
									"fileref" : 									{
										"name" : "ChowMatrix",
										"filename" : "ChowMatrix.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "581fb7b9109515a9df1735b1908338a2"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 2 2 @autosave 1",
					"varname" : "vst~[4]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-341",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 6100.0, 260.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 954.0, 328.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-342",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 70.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 980.0, 330.0, 70.0, 19.0 ],
					"text" : "load delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-343",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 6140.0, 260.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 954.0, 356.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-344",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 70.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 980.0, 358.0, 70.0, 19.0 ],
					"text" : "show delay"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-345",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 130.0, 37.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 1056.0, 330.0, 99.0, 37.0 ],
					"text" : "solo any strip in the\nmixer below; soloing\nkeeps the sends going"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-346",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6100.0, 230.0, 44.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-347",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6150.0, 230.0, 44.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-348",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 6600.0, 200.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1190.0, 326.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.3 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "delay_to_reverb",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "dly→rev",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "delay_to_reverb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-349",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 6660.0, 200.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1238.0, 326.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "wash",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "WASH",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "wash"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-350",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 6720.0, 200.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1286.0, 326.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "echo",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "ECHO",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "echo"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-351",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 196.0, 27.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1190.0, 380.0, 143.0, 27.0 ],
					"text" : "WASH / ECHO add reverb / delay\nto everything at once"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-352",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6660.0, 260.0, 100.0, 22.0 ],
					"text" : "s chain_wash"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-353",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6720.0, 260.0, 100.0, 22.0 ],
					"text" : "s chain_echo"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "BED" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-354",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chain_strip.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 7000.0, 40.0, 150.0, 370.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.0, 420.0, 150.0, 370.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "SOURCE" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-355",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chain_strip.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 7170.0, 40.0, 150.0, 370.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 166.0, 420.0, 150.0, 370.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "VOICE1" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-356",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chain_strip.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 7340.0, 40.0, 150.0, 370.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 324.0, 420.0, 150.0, 370.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "VOICE2" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-357",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chain_strip.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 7510.0, 40.0, 150.0, 370.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 482.0, 420.0, 150.0, 370.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "VOICE3" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-358",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chain_strip.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 7680.0, 40.0, 150.0, 370.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 640.0, 420.0, 150.0, 370.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "DDSP" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-359",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chain_strip.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 7850.0, 40.0, 150.0, 370.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 798.0, 420.0, 150.0, 370.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "REVERB" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-360",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chain_return.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 8020.0, 40.0, 150.0, 370.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 956.0, 420.0, 150.0, 370.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "DELAY" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-361",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chain_return.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 8190.0, 40.0, 150.0, 370.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1114.0, 420.0, 150.0, 370.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-362",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 6600.0, 300.0, 58.0, 22.0 ],
					"text" : "*~ 0.3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-363",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 6660.0, 300.0, 58.0, 22.0 ],
					"text" : "*~ 0.3"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.96, 0.96, 0.95, 1.0 ],
					"id" : "obj-364",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1272.0, 420.0, 120.0, 370.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1272.0, 420.0, 120.0, 370.0 ],
					"rounded" : 6
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.3, 0.3, 0.33, 1.0 ],
					"id" : "obj-365",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1272.0, 420.0, 120.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1272.0, 420.0, 120.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 13.0,
					"id" : "obj-366",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1272.0, 420.0, 110.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1278.0, 422.0, 108.0, 21.0 ],
					"text" : "MASTER",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-367",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 8500.0, 520.0, 48.0, 250.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1284.0, 456.0, 48.0, 250.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -6.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "master",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "master",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "master"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-368",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8300.0, 440.0, 120.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "chain_solo.js",
						"parameter_enable" : 0
					}
,
					"text" : "js chain_solo.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-369",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8300.0, 410.0, 100.0, 22.0 ],
					"text" : "r chain_solo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-370",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 8600.0, 400.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1340.0, 456.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "master_tone",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : -1.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "LP·tone·HP",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "master_tone"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-371",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 8600.0, 460.0, 130.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "chain_strip.js",
						"parameter_enable" : 0
					}
,
					"text" : "js chain_strip.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-372",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8600.0, 430.0, 114.0, 22.0 ],
					"text" : "prepend filter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-373",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 8760.0, 430.0, 72.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-374",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 8600.0, 500.0, 130.0, 22.0 ],
					"text" : "filtercoeff~ lowpass"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-375",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 8500.0, 560.0, 65.0, 22.0 ],
					"text" : "biquad~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-376",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 8500.0, 620.0, 51.0, 22.0 ],
					"text" : "tanh~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-377",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 8580.0, 560.0, 65.0, 22.0 ],
					"text" : "biquad~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-378",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 8580.0, 620.0, 51.0, 22.0 ],
					"text" : "tanh~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-379",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 8900.0, 520.0, 30.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1150.0, 6.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-380",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 110.0, 31.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1184.0, 8.0, 97.0, 31.0 ],
					"text" : "STOP ALL AUDIO\n(Esc)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-381",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8900.0, 490.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-382",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 8960.0, 460.0, 40.0, 22.0 ],
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-383",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 8960.0, 490.0, 58.0, 22.0 ],
					"text" : "sel 27"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-384",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 8900.0, 560.0, 44.0, 22.0 ],
					"text" : "== 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-385",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8900.0, 590.0, 86.0, 22.0 ],
					"text" : "pack 0. 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-386",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8960.0, 560.0, 93.0, 22.0 ],
					"text" : "loadmess 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-387",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 8900.0, 620.0, 51.0, 22.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-388",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 8500.0, 645.0, 40.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-389",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 8580.0, 645.0, 40.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-390",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 8500.0, 660.0, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1340.0, 520.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-391",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 50.0, 27.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1340.0, 566.0, 31.0, 27.0 ],
					"text" : "audio\non/off"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-392",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 8600.0, 700.0, 93.0, 22.0 ],
					"text" : "sfrecord~ 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-393",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 8600.0, 660.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1340.0, 606.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-394",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 50.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1340.0, 630.0, 50.0, 17.0 ],
					"text" : "rec file"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-395",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8600.0, 630.0, 44.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-396",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 8640.0, 660.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1340.0, 652.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-397",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 40.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1340.0, 676.0, 40.0, 18.0 ],
					"text" : "REC"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-398",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 8700.0, 400.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1340.0, 696.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-399",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 50.0, 27.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1336.0, 720.0, 30.0, 27.0 ],
					"text" : "clear\nsolos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-400",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8700.0, 430.0, 51.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-401",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 100.0, 27.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1284.0, 756.0, 68.0, 27.0 ],
					"text" : "soft limit (tanh)\non the master"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-402",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 8800.0, 400.0, 72.0, 22.0 ],
					"text" : "loadbang"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 1609.5, 144.0, 1587.0, 144.0, 1587.0, 105.0, 1759.5, 105.0 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 1609.5, 144.0, 1609.5, 144.0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"midpoints" : [ 2484.5, 150.0, 2484.5, 150.0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"midpoints" : [ 2699.5, 186.0, 2409.5, 186.0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"midpoints" : [ 2699.5, 123.0, 2699.5, 123.0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 2 ],
					"midpoints" : [ 2518.166666666666515, 195.0, 2570.5, 195.0 ],
					"source" : [ "obj-103", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 1 ],
					"midpoints" : [ 2484.5, 192.0, 2490.0, 192.0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 1 ],
					"midpoints" : [ 2551.833333333333485, 192.0, 2675.5, 192.0 ],
					"order" : 1,
					"source" : [ "obj-103", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 1 ],
					"midpoints" : [ 2551.833333333333485, 192.0, 2760.0, 192.0, 2760.0, 252.0, 2755.5, 252.0 ],
					"order" : 0,
					"source" : [ "obj-103", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"midpoints" : [ 2585.5, 375.0, 2673.0, 375.0, 2673.0, 525.0, 2509.5, 525.0 ],
					"source" : [ "obj-103", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"midpoints" : [ 2570.5, 225.0, 2629.5, 225.0 ],
					"order" : 1,
					"source" : [ "obj-104", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"midpoints" : [ 2570.5, 225.0, 2607.0, 225.0, 2607.0, 216.0, 2709.5, 216.0 ],
					"order" : 0,
					"source" : [ "obj-104", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"midpoints" : [ 2409.5, 225.0, 2409.5, 225.0 ],
					"order" : 1,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"midpoints" : [ 2490.0, 336.0, 2474.5, 336.0 ],
					"source" : [ "obj-104", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"midpoints" : [ 2409.5, 336.0, 2607.0, 336.0, 2607.0, 405.0, 2673.0, 405.0, 2673.0, 525.0, 2409.5, 525.0 ],
					"order" : 0,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"midpoints" : [ 2570.5, 485.0, 2409.5, 485.0 ],
					"order" : 2,
					"source" : [ "obj-104", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"midpoints" : [ 2629.5, 255.0, 2629.5, 255.0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 2709.5, 255.0, 2709.5, 255.0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 1 ],
					"midpoints" : [ 2709.5, 282.0, 2682.5, 282.0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 2629.5, 309.0, 2629.5, 309.0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 1 ],
					"midpoints" : [ 2629.5, 339.0, 2451.0, 339.0, 2451.0, 345.0, 2430.5, 345.0 ],
					"order" : 1,
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 1 ],
					"midpoints" : [ 2629.5, 348.0, 2505.0, 348.0, 2505.0, 345.0, 2495.5, 345.0 ],
					"order" : 0,
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-354", 0 ],
					"midpoints" : [ 2409.5, 384.0, 2451.0, 384.0, 2451.0, 234.0, 2607.0, 234.0, 2607.0, 159.0, 3087.0, 159.0, 3087.0, 27.0, 7009.5, 27.0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-354", 1 ],
					"midpoints" : [ 2474.5, 375.0, 3087.0, 375.0, 3087.0, 27.0, 7140.5, 27.0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"midpoints" : [ 2409.5, 450.0, 2409.5, 450.0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"midpoints" : [ 2449.5, 450.0, 2449.5, 450.0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"midpoints" : [ 2409.5, 513.0, 2673.0, 513.0, 2673.0, 348.0, 2607.0, 348.0, 2607.0, 156.0, 2484.5, 156.0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"midpoints" : [ 2449.5, 513.0, 2673.0, 513.0, 2673.0, 348.0, 2607.0, 348.0, 2607.0, 156.0, 2484.5, 156.0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"midpoints" : [ 2509.5, 444.0, 2509.5, 444.0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"midpoints" : [ 2509.5, 414.0, 2509.5, 414.0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-320", 0 ],
					"midpoints" : [ 1809.900000000000091, 183.0, 2385.0, 183.0, 2385.0, 27.0, 5409.5, 27.0 ],
					"source" : [ "obj-12", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"midpoints" : [ 1609.5, 186.0, 1587.0, 186.0, 1587.0, 687.0, 2187.0, 687.0, 2187.0, 885.0, 2248.5, 885.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"midpoints" : [ 1910.099999999999909, 186.0, 2009.5, 186.0 ],
					"source" : [ "obj-12", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"midpoints" : [ 1709.700000000000045, 186.0, 1587.0, 186.0, 1587.0, 246.0, 1739.5, 246.0 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"midpoints" : [ 2010.299999999999955, 186.0, 1956.0, 186.0, 1956.0, 246.0, 1859.5, 246.0 ],
					"source" : [ "obj-12", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"midpoints" : [ 2509.5, 474.0, 2509.5, 474.0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"midpoints" : [ 2509.5, 513.0, 2673.0, 513.0, 2673.0, 348.0, 2607.0, 348.0, 2607.0, 156.0, 2484.5, 156.0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 1 ],
					"midpoints" : [ 2609.5, 525.0, 2487.0, 525.0, 2487.0, 594.0, 2532.0, 594.0, 2532.0, 642.0, 2460.0, 642.0, 2460.0, 633.0, 2448.5, 633.0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 2809.5, 441.0, 2787.0, 441.0, 2787.0, 405.0, 2976.0, 405.0, 2976.0, 414.0, 2989.5, 414.0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"order" : 0,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"midpoints" : [ 2989.5, 444.0, 2976.0, 444.0, 2976.0, 483.0, 2895.0, 483.0, 2895.0, 477.0, 2809.5, 477.0 ],
					"order" : 1,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"midpoints" : [ 2989.5, 513.0, 2673.0, 513.0, 2673.0, 348.0, 2517.0, 348.0, 2517.0, 234.0, 2385.0, 234.0, 2385.0, 186.0, 2409.5, 186.0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 1609.5, 465.0, 1609.5, 465.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 1646.5, 474.0, 1749.5, 474.0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"midpoints" : [ 1720.5, 627.0, 1909.5, 627.0 ],
					"source" : [ "obj-13", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"midpoints" : [ 1683.5, 474.0, 1725.0, 474.0, 1725.0, 627.0, 2009.5, 627.0 ],
					"source" : [ "obj-13", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"midpoints" : [ 2809.5, 504.0, 2787.0, 504.0, 2787.0, 417.0, 2809.5, 417.0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 2809.5, 474.0, 2787.0, 474.0, 2787.0, 405.0, 2976.0, 405.0, 2976.0, 414.0, 2989.5, 414.0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 2854.5, 474.0, 2976.0, 474.0, 2976.0, 417.0, 2989.5, 417.0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 2899.5, 474.0, 2976.0, 474.0, 2976.0, 417.0, 2989.5, 417.0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 1809.5, 435.0, 1740.0, 435.0, 1740.0, 426.0, 1609.5, 426.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"midpoints" : [ 3049.5, 513.0, 2673.0, 513.0, 2673.0, 348.0, 2517.0, 348.0, 2517.0, 234.0, 2385.0, 234.0, 2385.0, 186.0, 2409.5, 186.0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"midpoints" : [ 2409.5, 603.0, 2409.5, 603.0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"midpoints" : [ 2409.5, 633.0, 2409.5, 633.0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"midpoints" : [ 2409.5, 660.0, 2409.5, 660.0 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"midpoints" : [ 2409.5, 687.0, 2409.5, 687.0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"midpoints" : [ 2409.5, 717.0, 2409.5, 717.0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"midpoints" : [ 2441.5, 744.0, 2457.0, 744.0, 2457.0, 723.0, 2535.0, 723.0, 2535.0, 702.0, 2646.0, 702.0, 2646.0, 537.0, 2729.5, 537.0 ],
					"source" : [ "obj-148", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"midpoints" : [ 2409.5, 744.0, 2409.5, 744.0 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"midpoints" : [ 2409.5, 771.0, 2409.5, 771.0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 1949.5, 444.0, 1740.0, 444.0, 1740.0, 426.0, 1609.5, 426.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"midpoints" : [ 2409.5, 822.0, 2808.0, 822.0, 2808.0, 513.0, 2775.0, 513.0, 2775.0, 159.0, 2595.0, 159.0, 2595.0, 156.0, 2484.5, 156.0 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"source" : [ "obj-154", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"order" : 0,
					"source" : [ "obj-154", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"midpoints" : [ 3132.5, 63.0, 2808.0, 63.0, 2808.0, 405.0, 2787.0, 405.0, 2787.0, 525.0, 2808.0, 525.0, 2808.0, 726.0, 2669.5, 726.0 ],
					"order" : 1,
					"source" : [ "obj-154", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 0 ],
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"source" : [ "obj-162", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 2 ],
					"source" : [ "obj-163", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 1 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 1 ],
					"order" : 1,
					"source" : [ "obj-163", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 1 ],
					"order" : 0,
					"source" : [ "obj-163", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"midpoints" : [ 3285.5, 525.0, 3207.0, 525.0, 3207.0, 537.0, 3109.5, 537.0 ],
					"source" : [ "obj-163", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"order" : 1,
					"source" : [ "obj-164", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"order" : 0,
					"source" : [ "obj-164", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"midpoints" : [ 3109.5, 225.0, 3109.5, 225.0 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"midpoints" : [ 3190.0, 336.0, 3174.5, 336.0 ],
					"source" : [ "obj-164", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 1 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 1 ],
					"order" : 1,
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 1 ],
					"order" : 0,
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"midpoints" : [ 1749.5, 513.0, 1887.0, 513.0, 1887.0, 444.0, 1935.0, 444.0, 1935.0, 294.0, 2385.0, 294.0, 2385.0, 27.0, 3709.5, 27.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-239", 0 ],
					"midpoints" : [ 1774.166666666666742, 513.0, 1887.0, 513.0, 1887.0, 444.0, 1935.0, 444.0, 1935.0, 294.0, 2385.0, 294.0, 2385.0, 27.0, 4229.5, 27.0 ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-281", 0 ],
					"midpoints" : [ 1798.833333333333258, 513.0, 1887.0, 513.0, 1887.0, 444.0, 1935.0, 444.0, 1935.0, 294.0, 2385.0, 294.0, 2385.0, 27.0, 4749.5, 27.0 ],
					"source" : [ "obj-17", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-355", 0 ],
					"midpoints" : [ 3109.5, 384.0, 3306.0, 384.0, 3306.0, 159.0, 3687.0, 159.0, 3687.0, 27.0, 7179.5, 27.0 ],
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-355", 1 ],
					"midpoints" : [ 3174.5, 384.0, 3306.0, 384.0, 3306.0, 159.0, 3687.0, 159.0, 3687.0, 27.0, 7310.5, 27.0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 1 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"midpoints" : [ 3109.5, 534.0, 3219.0, 534.0, 3219.0, 234.0, 3087.0, 234.0, 3087.0, 156.0, 3184.5, 156.0 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"order" : 0,
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
					"order" : 1,
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"midpoints" : [ 3489.5, 513.0, 3219.0, 513.0, 3219.0, 234.0, 3087.0, 234.0, 3087.0, 195.0, 3109.5, 195.0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-186", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-187", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"midpoints" : [ 3549.5, 513.0, 3219.0, 513.0, 3219.0, 234.0, 3087.0, 234.0, 3087.0, 195.0, 3109.5, 195.0 ],
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-198", 1 ],
					"midpoints" : [ 3709.5, 126.0, 3748.5, 126.0 ],
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 3809.5, 75.0, 3839.5, 75.0 ],
					"source" : [ "obj-197", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 0 ],
					"midpoints" : [ 3859.5, 63.0, 4089.5, 63.0 ],
					"source" : [ "obj-197", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-219", 0 ],
					"midpoints" : [ 3759.5, 126.0, 3687.0, 126.0, 3687.0, 387.0, 3789.0, 387.0, 3789.0, 396.0, 3909.5, 396.0 ],
					"order" : 1,
					"source" : [ "obj-197", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-220", 0 ],
					"midpoints" : [ 3759.5, 126.0, 3870.0, 126.0, 3870.0, 315.0, 4039.5, 315.0 ],
					"order" : 0,
					"source" : [ "obj-197", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"midpoints" : [ 3709.5, 165.0, 3709.5, 165.0 ],
					"source" : [ "obj-198", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-201", 0 ],
					"midpoints" : [ 3709.5, 195.0, 3709.5, 195.0 ],
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 1 ],
					"midpoints" : [ 3769.5, 165.0, 3734.5, 165.0 ],
					"source" : [ "obj-200", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-202", 0 ],
					"midpoints" : [ 3709.5, 225.0, 3709.5, 225.0 ],
					"source" : [ "obj-201", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 0 ],
					"midpoints" : [ 3709.5, 255.0, 3709.5, 255.0 ],
					"source" : [ "obj-202", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 0 ],
					"midpoints" : [ 3720.0, 285.0, 3809.5, 285.0 ],
					"source" : [ "obj-203", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-217", 0 ],
					"midpoints" : [ 3709.5, 285.0, 3709.5, 285.0 ],
					"source" : [ "obj-203", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-198", 0 ],
					"midpoints" : [ 3839.5, 126.0, 3709.5, 126.0 ],
					"source" : [ "obj-204", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 3885.5, 105.0, 3969.5, 105.0 ],
					"order" : 1,
					"source" : [ "obj-204", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-206", 0 ],
					"midpoints" : [ 3885.5, 105.0, 4019.5, 105.0 ],
					"order" : 0,
					"source" : [ "obj-204", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-207", 0 ],
					"midpoints" : [ 3862.5, 105.0, 3889.5, 105.0 ],
					"source" : [ "obj-204", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 0 ],
					"midpoints" : [ 3969.5, 264.0, 3741.0, 264.0, 3741.0, 255.0, 3709.5, 255.0 ],
					"source" : [ "obj-205", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"midpoints" : [ 4019.5, 285.0, 3726.0, 285.0, 3726.0, 387.0, 3687.0, 387.0, 3687.0, 426.0, 3709.5, 426.0 ],
					"source" : [ "obj-206", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 0 ],
					"midpoints" : [ 3889.5, 264.0, 3741.0, 264.0, 3741.0, 255.0, 3709.5, 255.0 ],
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 0 ],
					"midpoints" : [ 4089.5, 264.0, 3741.0, 264.0, 3741.0, 255.0, 3709.5, 255.0 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 0 ],
					"midpoints" : [ 3841.5, 324.0, 3889.5, 324.0 ],
					"source" : [ "obj-209", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 0 ],
					"midpoints" : [ 3809.5, 324.0, 3809.5, 324.0 ],
					"source" : [ "obj-209", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 1609.5, 746.0, 2039.5, 746.0, 2039.5, 690.0, 2469.5, 690.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-211", 0 ],
					"midpoints" : [ 3889.5, 354.0, 3889.5, 354.0 ],
					"source" : [ "obj-210", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 1 ],
					"midpoints" : [ 3809.5, 354.0, 3862.5, 354.0 ],
					"source" : [ "obj-212", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 0 ],
					"midpoints" : [ 3749.5, 354.0, 3809.5, 354.0 ],
					"source" : [ "obj-213", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 0 ],
					"midpoints" : [ 3749.5, 324.0, 3749.5, 324.0 ],
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-198", 0 ],
					"midpoints" : [ 3809.5, 384.0, 3687.0, 384.0, 3687.0, 135.0, 3709.5, 135.0 ],
					"source" : [ "obj-216", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"midpoints" : [ 3709.5, 423.0, 3709.5, 423.0 ],
					"source" : [ "obj-217", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-229", 0 ],
					"midpoints" : [ 3709.5, 453.0, 3709.5, 453.0 ],
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"midpoints" : [ 3909.5, 423.0, 3840.0, 423.0, 3840.0, 417.0, 3780.0, 417.0, 3780.0, 423.0, 3709.5, 423.0 ],
					"source" : [ "obj-219", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-224", 0 ],
					"source" : [ "obj-222", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-222", 0 ],
					"midpoints" : [ 3909.5, 453.0, 3909.5, 453.0 ],
					"source" : [ "obj-223", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"midpoints" : [ 3909.5, 522.0, 3894.0, 522.0, 3894.0, 486.0, 3699.0, 486.0, 3699.0, 462.0, 3687.0, 462.0, 3687.0, 426.0, 3709.5, 426.0 ],
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-227", 0 ],
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"midpoints" : [ 4029.5, 564.0, 3837.0, 564.0, 3837.0, 462.0, 3687.0, 462.0, 3687.0, 426.0, 3709.5, 426.0 ],
					"source" : [ "obj-227", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 3969.5, 105.0, 3969.5, 105.0 ],
					"order" : 1,
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-206", 0 ],
					"midpoints" : [ 3969.5, 105.0, 4019.5, 105.0 ],
					"order" : 0,
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-356", 1 ],
					"midpoints" : [ 3724.642857142857338, 592.0, 5602.571428571428442, 592.0, 5602.571428571428442, 30.0, 7480.5, 30.0 ],
					"source" : [ "obj-229", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-356", 0 ],
					"midpoints" : [ 3709.5, 592.0, 5529.5, 592.0, 5529.5, 30.0, 7349.5, 30.0 ],
					"source" : [ "obj-229", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"midpoints" : [ 1643.0, 765.0, 1686.0, 765.0, 1686.0, 687.0, 2457.0, 687.0, 2457.0, 666.0, 2469.5, 666.0 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-234", 0 ],
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-235", 0 ],
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-229", 0 ],
					"source" : [ "obj-234", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-229", 0 ],
					"source" : [ "obj-235", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 1 ],
					"midpoints" : [ 4229.5, 126.0, 4268.5, 126.0 ],
					"source" : [ "obj-239", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-246", 0 ],
					"source" : [ "obj-239", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 0 ],
					"midpoints" : [ 4379.5, 63.0, 4609.5, 63.0 ],
					"source" : [ "obj-239", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"midpoints" : [ 4279.5, 126.0, 4206.0, 126.0, 4206.0, 387.0, 4311.0, 387.0, 4311.0, 396.0, 4429.5, 396.0 ],
					"order" : 1,
					"source" : [ "obj-239", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-262", 0 ],
					"midpoints" : [ 4279.5, 126.0, 4392.0, 126.0, 4392.0, 315.0, 4559.5, 315.0 ],
					"order" : 0,
					"source" : [ "obj-239", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 1709.5, 774.0, 1587.0, 774.0, 1587.0, 735.0, 1609.5, 735.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 0 ],
					"midpoints" : [ 4229.5, 165.0, 4229.5, 165.0 ],
					"source" : [ "obj-240", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-243", 0 ],
					"midpoints" : [ 4229.5, 195.0, 4229.5, 195.0 ],
					"source" : [ "obj-241", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 1 ],
					"midpoints" : [ 4289.5, 165.0, 4254.5, 165.0 ],
					"source" : [ "obj-242", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-244", 0 ],
					"midpoints" : [ 4229.5, 225.0, 4229.5, 225.0 ],
					"source" : [ "obj-243", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 0 ],
					"midpoints" : [ 4229.5, 255.0, 4229.5, 255.0 ],
					"source" : [ "obj-244", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-251", 0 ],
					"midpoints" : [ 4240.0, 285.0, 4329.5, 285.0 ],
					"source" : [ "obj-245", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 4229.5, 285.0, 4229.5, 285.0 ],
					"source" : [ "obj-245", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"midpoints" : [ 4359.5, 126.0, 4229.5, 126.0 ],
					"source" : [ "obj-246", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-247", 0 ],
					"midpoints" : [ 4405.5, 105.0, 4489.5, 105.0 ],
					"order" : 1,
					"source" : [ "obj-246", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-248", 0 ],
					"midpoints" : [ 4405.5, 105.0, 4539.5, 105.0 ],
					"order" : 0,
					"source" : [ "obj-246", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-249", 0 ],
					"midpoints" : [ 4382.5, 105.0, 4409.5, 105.0 ],
					"source" : [ "obj-246", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 0 ],
					"midpoints" : [ 4489.5, 264.0, 4260.0, 264.0, 4260.0, 255.0, 4229.5, 255.0 ],
					"source" : [ "obj-247", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-260", 0 ],
					"midpoints" : [ 4539.5, 285.0, 4245.0, 285.0, 4245.0, 387.0, 4206.0, 387.0, 4206.0, 426.0, 4229.5, 426.0 ],
					"source" : [ "obj-248", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 0 ],
					"midpoints" : [ 4409.5, 264.0, 4260.0, 264.0, 4260.0, 255.0, 4229.5, 255.0 ],
					"source" : [ "obj-249", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 1609.5, 816.0, 1647.0, 816.0, 1647.0, 774.0, 2187.0, 774.0, 2187.0, 696.0, 2209.5, 696.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 0 ],
					"midpoints" : [ 4609.5, 264.0, 4260.0, 264.0, 4260.0, 255.0, 4229.5, 255.0 ],
					"source" : [ "obj-250", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-252", 0 ],
					"midpoints" : [ 4361.5, 324.0, 4409.5, 324.0 ],
					"source" : [ "obj-251", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-254", 0 ],
					"midpoints" : [ 4329.5, 324.0, 4329.5, 324.0 ],
					"source" : [ "obj-251", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-253", 0 ],
					"midpoints" : [ 4409.5, 354.0, 4409.5, 354.0 ],
					"source" : [ "obj-252", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 1 ],
					"midpoints" : [ 4329.5, 354.0, 4382.5, 354.0 ],
					"source" : [ "obj-254", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 0 ],
					"midpoints" : [ 4269.5, 354.0, 4329.5, 354.0 ],
					"source" : [ "obj-255", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-255", 0 ],
					"midpoints" : [ 4269.5, 324.0, 4269.5, 324.0 ],
					"source" : [ "obj-256", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"midpoints" : [ 4329.5, 384.0, 4206.0, 384.0, 4206.0, 135.0, 4229.5, 135.0 ],
					"source" : [ "obj-258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-260", 0 ],
					"midpoints" : [ 4229.5, 423.0, 4229.5, 423.0 ],
					"source" : [ "obj-259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 0 ],
					"midpoints" : [ 4229.5, 453.0, 4229.5, 453.0 ],
					"source" : [ "obj-260", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-260", 0 ],
					"midpoints" : [ 4429.5, 423.0, 4362.0, 423.0, 4362.0, 417.0, 4299.0, 417.0, 4299.0, 423.0, 4229.5, 423.0 ],
					"source" : [ "obj-261", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-266", 0 ],
					"source" : [ "obj-264", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 0 ],
					"midpoints" : [ 4429.5, 453.0, 4429.5, 453.0 ],
					"source" : [ "obj-265", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-260", 0 ],
					"midpoints" : [ 4429.5, 522.0, 4416.0, 522.0, 4416.0, 486.0, 4206.0, 486.0, 4206.0, 426.0, 4229.5, 426.0 ],
					"source" : [ "obj-266", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-269", 0 ],
					"source" : [ "obj-268", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-260", 0 ],
					"midpoints" : [ 4549.5, 564.0, 4356.0, 564.0, 4356.0, 462.0, 4206.0, 462.0, 4206.0, 426.0, 4229.5, 426.0 ],
					"source" : [ "obj-269", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"midpoints" : [ 1609.5, 870.0, 1587.0, 870.0, 1587.0, 687.0, 2266.5, 687.0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 1 ],
					"midpoints" : [ 1609.5, 870.0, 1587.0, 870.0, 1587.0, 687.0, 2457.0, 687.0, 2457.0, 660.0, 2526.0, 660.0, 2526.0, 654.0, 2586.0, 654.0, 2586.0, 717.0, 2526.5, 717.0 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-247", 0 ],
					"midpoints" : [ 4489.5, 105.0, 4489.5, 105.0 ],
					"order" : 1,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-248", 0 ],
					"midpoints" : [ 4489.5, 105.0, 4539.5, 105.0 ],
					"order" : 0,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-357", 1 ],
					"midpoints" : [ 4244.642857142856883, 592.0, 5947.571428571428442, 592.0, 5947.571428571428442, 30.0, 7650.5, 30.0 ],
					"source" : [ "obj-271", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-357", 0 ],
					"midpoints" : [ 4229.5, 592.0, 5874.5, 592.0, 5874.5, 30.0, 7519.5, 30.0 ],
					"source" : [ "obj-271", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-276", 0 ],
					"source" : [ "obj-272", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-277", 0 ],
					"source" : [ "obj-274", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 0 ],
					"source" : [ "obj-276", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 0 ],
					"source" : [ "obj-277", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 2 ],
					"midpoints" : [ 1669.5, 837.0, 1647.0, 837.0, 1647.0, 774.0, 2187.0, 774.0, 2187.0, 687.0, 2323.5, 687.0 ],
					"order" : 3,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 1 ],
					"midpoints" : [ 1669.5, 837.0, 1647.0, 837.0, 1647.0, 774.0, 2187.0, 774.0, 2187.0, 687.0, 2434.5, 687.0 ],
					"order" : 2,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 2 ],
					"midpoints" : [ 1669.5, 864.0, 2646.0, 864.0, 2646.0, 753.0, 2652.0, 753.0, 2652.0, 717.0, 2583.5, 717.0 ],
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"midpoints" : [ 1669.5, 864.0, 2715.0, 864.0, 2715.0, 696.0, 2694.5, 696.0 ],
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 1 ],
					"source" : [ "obj-281", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-288", 0 ],
					"source" : [ "obj-281", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-292", 0 ],
					"source" : [ "obj-281", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-303", 0 ],
					"order" : 1,
					"source" : [ "obj-281", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-304", 0 ],
					"order" : 0,
					"source" : [ "obj-281", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-283", 0 ],
					"source" : [ "obj-282", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 0 ],
					"source" : [ "obj-283", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-283", 1 ],
					"source" : [ "obj-284", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-286", 0 ],
					"source" : [ "obj-285", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 0 ],
					"source" : [ "obj-286", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-293", 0 ],
					"source" : [ "obj-287", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-301", 0 ],
					"source" : [ "obj-287", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 0 ],
					"source" : [ "obj-288", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-289", 0 ],
					"order" : 1,
					"source" : [ "obj-288", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-290", 0 ],
					"order" : 0,
					"source" : [ "obj-288", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-291", 0 ],
					"source" : [ "obj-288", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 0 ],
					"source" : [ "obj-289", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 1669.5, 813.0, 1669.5, 813.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-302", 0 ],
					"source" : [ "obj-290", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 0 ],
					"source" : [ "obj-291", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 0 ],
					"source" : [ "obj-292", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-294", 0 ],
					"source" : [ "obj-293", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-296", 0 ],
					"source" : [ "obj-293", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-295", 0 ],
					"source" : [ "obj-294", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-300", 1 ],
					"source" : [ "obj-296", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-300", 0 ],
					"source" : [ "obj-297", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-297", 0 ],
					"source" : [ "obj-298", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 0 ],
					"source" : [ "obj-300", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-302", 0 ],
					"source" : [ "obj-301", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-313", 0 ],
					"source" : [ "obj-302", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-302", 0 ],
					"source" : [ "obj-303", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-308", 0 ],
					"source" : [ "obj-306", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-306", 0 ],
					"source" : [ "obj-307", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-302", 0 ],
					"source" : [ "obj-308", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-311", 0 ],
					"source" : [ "obj-310", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-302", 0 ],
					"source" : [ "obj-311", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-289", 0 ],
					"order" : 1,
					"source" : [ "obj-312", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-290", 0 ],
					"order" : 0,
					"source" : [ "obj-312", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-358", 1 ],
					"midpoints" : [ 4764.642857142856883, 592.0, 6292.571428571428442, 592.0, 6292.571428571428442, 30.0, 7820.5, 30.0 ],
					"source" : [ "obj-313", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-358", 0 ],
					"midpoints" : [ 4749.5, 592.0, 6219.5, 592.0, 6219.5, 30.0, 7689.5, 30.0 ],
					"source" : [ "obj-313", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-318", 0 ],
					"source" : [ "obj-314", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"source" : [ "obj-316", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-313", 0 ],
					"source" : [ "obj-318", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-313", 0 ],
					"source" : [ "obj-319", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 1609.5, 894.0, 1609.5, 894.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 0 ],
					"source" : [ "obj-320", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-323", 0 ],
					"order" : 1,
					"source" : [ "obj-320", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-328", 0 ],
					"order" : 0,
					"source" : [ "obj-320", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-322", 0 ],
					"source" : [ "obj-321", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-326", 0 ],
					"source" : [ "obj-323", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-326", 0 ],
					"source" : [ "obj-324", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-324", 0 ],
					"source" : [ "obj-325", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-359", 1 ],
					"midpoints" : [ 5409.5, 162.0, 6987.0, 162.0, 6987.0, 27.0, 7990.5, 27.0 ],
					"order" : 0,
					"source" : [ "obj-326", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-359", 0 ],
					"midpoints" : [ 5409.5, 162.0, 6987.0, 162.0, 6987.0, 27.0, 7859.5, 27.0 ],
					"order" : 1,
					"source" : [ "obj-326", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-326", 0 ],
					"source" : [ "obj-327", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 5509.5, 251.0, 1609.5, 251.0 ],
					"source" : [ "obj-328", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-360", 1 ],
					"midpoints" : [ 5824.642857142856883, 333.0, 6987.0, 333.0, 6987.0, 27.0, 8160.5, 27.0 ],
					"source" : [ "obj-332", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-360", 0 ],
					"midpoints" : [ 5809.5, 333.0, 6987.0, 333.0, 6987.0, 27.0, 8029.5, 27.0 ],
					"source" : [ "obj-332", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-337", 0 ],
					"midpoints" : [ 5809.5, 285.0, 5787.0, 285.0, 5787.0, 225.0, 5809.5, 225.0 ],
					"source" : [ "obj-333", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-338", 0 ],
					"midpoints" : [ 5849.5, 285.0, 5835.0, 285.0, 5835.0, 252.0, 5847.0, 252.0, 5847.0, 225.0, 5859.5, 225.0 ],
					"source" : [ "obj-335", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 0 ],
					"midpoints" : [ 5809.5, 255.0, 5787.0, 255.0, 5787.0, 297.0, 5809.5, 297.0 ],
					"source" : [ "obj-337", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 0 ],
					"midpoints" : [ 5859.5, 255.0, 5823.0, 255.0, 5823.0, 297.0, 5809.5, 297.0 ],
					"source" : [ "obj-338", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 1649.5, 894.0, 1587.0, 894.0, 1587.0, 933.0, 1635.0, 933.0, 1635.0, 927.0, 1649.5, 927.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-361", 1 ],
					"midpoints" : [ 6124.642857142856883, 333.0, 6987.0, 333.0, 6987.0, 27.0, 8330.5, 27.0 ],
					"source" : [ "obj-340", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-361", 0 ],
					"midpoints" : [ 6109.5, 333.0, 6987.0, 333.0, 6987.0, 27.0, 8199.5, 27.0 ],
					"source" : [ "obj-340", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-346", 0 ],
					"midpoints" : [ 6109.5, 285.0, 6087.0, 285.0, 6087.0, 225.0, 6109.5, 225.0 ],
					"source" : [ "obj-341", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-347", 0 ],
					"midpoints" : [ 6149.5, 285.0, 6135.0, 285.0, 6135.0, 252.0, 6147.0, 252.0, 6147.0, 225.0, 6159.5, 225.0 ],
					"source" : [ "obj-343", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 0 ],
					"midpoints" : [ 6109.5, 255.0, 6087.0, 255.0, 6087.0, 297.0, 6109.5, 297.0 ],
					"source" : [ "obj-346", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 0 ],
					"midpoints" : [ 6159.5, 255.0, 6123.0, 255.0, 6123.0, 297.0, 6109.5, 297.0 ],
					"source" : [ "obj-347", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-362", 1 ],
					"order" : 1,
					"source" : [ "obj-348", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-363", 1 ],
					"order" : 0,
					"source" : [ "obj-348", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-352", 0 ],
					"source" : [ "obj-349", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 1649.5, 864.0, 1649.5, 864.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-353", 0 ],
					"source" : [ "obj-350", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 1 ],
					"midpoints" : [ 7088.100000000000364, 420.0, 5937.0, 420.0, 5937.0, 297.0, 5915.5, 297.0 ],
					"source" : [ "obj-354", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 0 ],
					"midpoints" : [ 7061.899999999999636, 420.0, 5787.0, 420.0, 5787.0, 297.0, 5809.5, 297.0 ],
					"source" : [ "obj-354", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 1 ],
					"midpoints" : [ 7140.5, 420.0, 6237.0, 420.0, 6237.0, 297.0, 6215.5, 297.0 ],
					"source" : [ "obj-354", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 0 ],
					"midpoints" : [ 7114.300000000000182, 420.0, 6087.0, 420.0, 6087.0, 297.0, 6109.5, 297.0 ],
					"source" : [ "obj-354", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 1 ],
					"midpoints" : [ 7035.699999999999818, 507.0, 8538.5, 507.0 ],
					"source" : [ "obj-354", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 0 ],
					"midpoints" : [ 7009.5, 507.0, 8509.5, 507.0 ],
					"source" : [ "obj-354", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 1 ],
					"midpoints" : [ 7258.100000000000364, 420.0, 5937.0, 420.0, 5937.0, 297.0, 5915.5, 297.0 ],
					"source" : [ "obj-355", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 0 ],
					"midpoints" : [ 7231.899999999999636, 420.0, 5787.0, 420.0, 5787.0, 297.0, 5809.5, 297.0 ],
					"source" : [ "obj-355", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 1 ],
					"midpoints" : [ 7310.5, 420.0, 6237.0, 420.0, 6237.0, 297.0, 6215.5, 297.0 ],
					"source" : [ "obj-355", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 0 ],
					"midpoints" : [ 7284.300000000000182, 420.0, 6087.0, 420.0, 6087.0, 297.0, 6109.5, 297.0 ],
					"source" : [ "obj-355", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 1 ],
					"midpoints" : [ 7205.699999999999818, 507.0, 8538.5, 507.0 ],
					"source" : [ "obj-355", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 0 ],
					"midpoints" : [ 7179.5, 507.0, 8509.5, 507.0 ],
					"source" : [ "obj-355", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 1 ],
					"midpoints" : [ 7428.100000000000364, 420.0, 5937.0, 420.0, 5937.0, 297.0, 5915.5, 297.0 ],
					"source" : [ "obj-356", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 0 ],
					"midpoints" : [ 7401.899999999999636, 420.0, 5787.0, 420.0, 5787.0, 297.0, 5809.5, 297.0 ],
					"source" : [ "obj-356", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 1 ],
					"midpoints" : [ 7480.5, 420.0, 6237.0, 420.0, 6237.0, 297.0, 6215.5, 297.0 ],
					"source" : [ "obj-356", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 0 ],
					"midpoints" : [ 7454.300000000000182, 420.0, 6087.0, 420.0, 6087.0, 297.0, 6109.5, 297.0 ],
					"source" : [ "obj-356", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 1 ],
					"midpoints" : [ 7375.699999999999818, 507.0, 8538.5, 507.0 ],
					"source" : [ "obj-356", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 0 ],
					"midpoints" : [ 7349.5, 507.0, 8509.5, 507.0 ],
					"source" : [ "obj-356", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 1 ],
					"midpoints" : [ 7598.100000000000364, 420.0, 5937.0, 420.0, 5937.0, 297.0, 5915.5, 297.0 ],
					"source" : [ "obj-357", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 0 ],
					"midpoints" : [ 7571.899999999999636, 420.0, 5787.0, 420.0, 5787.0, 297.0, 5809.5, 297.0 ],
					"source" : [ "obj-357", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 1 ],
					"midpoints" : [ 7650.5, 420.0, 6237.0, 420.0, 6237.0, 297.0, 6215.5, 297.0 ],
					"source" : [ "obj-357", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 0 ],
					"midpoints" : [ 7624.300000000000182, 420.0, 6087.0, 420.0, 6087.0, 297.0, 6109.5, 297.0 ],
					"source" : [ "obj-357", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 1 ],
					"midpoints" : [ 7545.699999999999818, 507.0, 8538.5, 507.0 ],
					"source" : [ "obj-357", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 0 ],
					"midpoints" : [ 7519.5, 507.0, 8509.5, 507.0 ],
					"source" : [ "obj-357", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 1 ],
					"midpoints" : [ 7768.100000000000364, 420.0, 5937.0, 420.0, 5937.0, 297.0, 5915.5, 297.0 ],
					"source" : [ "obj-358", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 0 ],
					"midpoints" : [ 7741.899999999999636, 420.0, 5787.0, 420.0, 5787.0, 297.0, 5809.5, 297.0 ],
					"source" : [ "obj-358", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 1 ],
					"midpoints" : [ 7820.5, 420.0, 6237.0, 420.0, 6237.0, 297.0, 6215.5, 297.0 ],
					"source" : [ "obj-358", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 0 ],
					"midpoints" : [ 7794.300000000000182, 420.0, 6087.0, 420.0, 6087.0, 297.0, 6109.5, 297.0 ],
					"source" : [ "obj-358", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 1 ],
					"midpoints" : [ 7715.699999999999818, 507.0, 8538.5, 507.0 ],
					"source" : [ "obj-358", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 0 ],
					"midpoints" : [ 7689.5, 507.0, 8509.5, 507.0 ],
					"source" : [ "obj-358", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 1 ],
					"midpoints" : [ 7938.100000000000364, 420.0, 5937.0, 420.0, 5937.0, 297.0, 5915.5, 297.0 ],
					"source" : [ "obj-359", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 0 ],
					"midpoints" : [ 7911.899999999999636, 420.0, 5787.0, 420.0, 5787.0, 297.0, 5809.5, 297.0 ],
					"source" : [ "obj-359", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 1 ],
					"midpoints" : [ 7990.5, 420.0, 6237.0, 420.0, 6237.0, 297.0, 6215.5, 297.0 ],
					"source" : [ "obj-359", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 0 ],
					"midpoints" : [ 7964.300000000000182, 420.0, 6087.0, 420.0, 6087.0, 297.0, 6109.5, 297.0 ],
					"source" : [ "obj-359", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 1 ],
					"midpoints" : [ 7885.699999999999818, 507.0, 8538.5, 507.0 ],
					"source" : [ "obj-359", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 0 ],
					"midpoints" : [ 7859.5, 507.0, 8509.5, 507.0 ],
					"source" : [ "obj-359", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 1 ],
					"midpoints" : [ 8160.5, 507.0, 8538.5, 507.0 ],
					"source" : [ "obj-360", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 0 ],
					"midpoints" : [ 8029.5, 507.0, 8509.5, 507.0 ],
					"source" : [ "obj-360", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-362", 0 ],
					"midpoints" : [ 8199.5, 420.0, 6597.0, 420.0, 6597.0, 297.0, 6609.5, 297.0 ],
					"order" : 1,
					"source" : [ "obj-361", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-363", 0 ],
					"midpoints" : [ 8330.5, 432.0, 6729.0, 432.0, 6729.0, 297.0, 6669.5, 297.0 ],
					"order" : 1,
					"source" : [ "obj-361", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 1 ],
					"midpoints" : [ 8330.5, 411.0, 8340.0, 411.0, 8340.0, 396.0, 8538.5, 396.0 ],
					"order" : 0,
					"source" : [ "obj-361", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 0 ],
					"midpoints" : [ 8199.5, 507.0, 8509.5, 507.0 ],
					"order" : 0,
					"source" : [ "obj-361", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 0 ],
					"midpoints" : [ 6609.5, 333.0, 5787.0, 333.0, 5787.0, 297.0, 5809.5, 297.0 ],
					"source" : [ "obj-362", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-332", 1 ],
					"midpoints" : [ 6669.5, 333.0, 5937.0, 333.0, 5937.0, 297.0, 5915.5, 297.0 ],
					"source" : [ "obj-363", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-375", 0 ],
					"source" : [ "obj-367", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-377", 0 ],
					"source" : [ "obj-367", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-368", 0 ],
					"source" : [ "obj-369", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-372", 0 ],
					"source" : [ "obj-370", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-374", 0 ],
					"source" : [ "obj-371", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-374", 2 ],
					"source" : [ "obj-371", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-374", 0 ],
					"source" : [ "obj-371", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-371", 0 ],
					"source" : [ "obj-372", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-371", 0 ],
					"source" : [ "obj-373", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-375", 5 ],
					"midpoints" : [ 8720.5, 546.0, 8555.5, 546.0 ],
					"order" : 1,
					"source" : [ "obj-374", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-375", 4 ],
					"midpoints" : [ 8692.75, 546.0, 8550.0, 546.0, 8550.0, 555.0, 8546.299999999999272, 555.0 ],
					"order" : 1,
					"source" : [ "obj-374", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-375", 3 ],
					"midpoints" : [ 8665.0, 546.0, 8550.0, 546.0, 8550.0, 555.0, 8537.100000000000364, 555.0 ],
					"order" : 1,
					"source" : [ "obj-374", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-375", 2 ],
					"midpoints" : [ 8637.25, 546.0, 8550.0, 546.0, 8550.0, 555.0, 8527.899999999999636, 555.0 ],
					"order" : 1,
					"source" : [ "obj-374", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-375", 1 ],
					"midpoints" : [ 8609.5, 525.0, 8559.0, 525.0, 8559.0, 507.0, 8487.0, 507.0, 8487.0, 555.0, 8518.700000000000728, 555.0 ],
					"order" : 1,
					"source" : [ "obj-374", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-377", 5 ],
					"midpoints" : [ 8720.5, 546.0, 8635.5, 546.0 ],
					"order" : 0,
					"source" : [ "obj-374", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-377", 4 ],
					"midpoints" : [ 8692.75, 546.0, 8626.299999999999272, 546.0 ],
					"order" : 0,
					"source" : [ "obj-374", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-377", 3 ],
					"midpoints" : [ 8665.0, 546.0, 8617.100000000000364, 546.0 ],
					"order" : 0,
					"source" : [ "obj-374", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-377", 2 ],
					"midpoints" : [ 8637.25, 546.0, 8607.899999999999636, 546.0 ],
					"order" : 0,
					"source" : [ "obj-374", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-377", 1 ],
					"midpoints" : [ 8609.5, 546.0, 8598.700000000000728, 546.0 ],
					"order" : 0,
					"source" : [ "obj-374", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-376", 0 ],
					"source" : [ "obj-375", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-388", 0 ],
					"source" : [ "obj-376", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-378", 0 ],
					"source" : [ "obj-377", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-389", 0 ],
					"source" : [ "obj-378", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-384", 0 ],
					"source" : [ "obj-379", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 1609.5, 924.0, 1587.0, 924.0, 1587.0, 696.0, 1609.5, 696.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-379", 0 ],
					"source" : [ "obj-381", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-383", 0 ],
					"source" : [ "obj-382", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-379", 0 ],
					"source" : [ "obj-383", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-385", 0 ],
					"source" : [ "obj-384", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-387", 0 ],
					"source" : [ "obj-385", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-385", 0 ],
					"source" : [ "obj-386", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-388", 1 ],
					"order" : 1,
					"source" : [ "obj-387", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-389", 1 ],
					"order" : 0,
					"source" : [ "obj-387", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-390", 0 ],
					"order" : 1,
					"source" : [ "obj-388", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-392", 0 ],
					"order" : 0,
					"source" : [ "obj-388", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-390", 1 ],
					"order" : 1,
					"source" : [ "obj-389", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-392", 1 ],
					"order" : 0,
					"source" : [ "obj-389", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"midpoints" : [ 1649.5, 963.0, 1710.0, 963.0, 1710.0, 897.0, 1683.5, 897.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-395", 0 ],
					"source" : [ "obj-393", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-392", 0 ],
					"source" : [ "obj-395", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-392", 0 ],
					"source" : [ "obj-396", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-400", 0 ],
					"source" : [ "obj-398", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"midpoints" : [ 2248.5, 924.0, 2808.0, 924.0, 2808.0, 513.0, 2787.0, 513.0, 2787.0, 102.0, 3087.0, 102.0, 3087.0, 36.0, 3109.5, 36.0 ],
					"order" : 0,
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 2248.5, 933.0, 1797.0, 933.0, 1797.0, 513.0, 1587.0, 513.0, 1587.0, 255.0, 1609.5, 255.0 ],
					"order" : 1,
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 2209.5, 924.0, 1887.0, 924.0, 1887.0, 444.0, 1935.0, 444.0, 1935.0, 294.0, 2385.0, 294.0, 2385.0, 36.0, 2409.5, 36.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-368", 0 ],
					"source" : [ "obj-400", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"midpoints" : [ 8809.5, 432.0, 5709.5, 432.0, 5709.5, 410.0, 2609.5, 410.0 ],
					"order" : 9,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"midpoints" : [ 8809.5, 432.0, 5959.5, 432.0, 5959.5, 410.0, 3109.5, 410.0 ],
					"order" : 8,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"midpoints" : [ 8809.5, 432.0, 5989.5, 432.0, 5989.5, 410.0, 3169.5, 410.0 ],
					"order" : 7,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-226", 0 ],
					"midpoints" : [ 8809.5, 441.0, 4029.5, 441.0 ],
					"order" : 6,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-268", 0 ],
					"midpoints" : [ 8809.5, 441.0, 4549.5, 441.0 ],
					"order" : 5,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 8809.5, 621.0, 1609.5, 621.0 ],
					"order" : 13,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-310", 0 ],
					"midpoints" : [ 8809.5, 423.0, 8733.0, 423.0, 8733.0, 387.0, 8430.0, 387.0, 8430.0, 474.0, 5115.0, 474.0, 5115.0, 447.0, 5069.5, 447.0 ],
					"order" : 4,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-348", 0 ],
					"midpoints" : [ 8809.5, 423.0, 8787.0, 423.0, 8787.0, 387.0, 8430.0, 387.0, 8430.0, 474.0, 6831.0, 474.0, 6831.0, 186.0, 6609.5, 186.0 ],
					"order" : 3,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-349", 0 ],
					"midpoints" : [ 8809.5, 423.0, 8787.0, 423.0, 8787.0, 387.0, 8430.0, 387.0, 8430.0, 474.0, 6831.0, 474.0, 6831.0, 186.0, 6669.5, 186.0 ],
					"order" : 2,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-350", 0 ],
					"midpoints" : [ 8809.5, 423.0, 8787.0, 423.0, 8787.0, 387.0, 8430.0, 387.0, 8430.0, 474.0, 6831.0, 474.0, 6831.0, 186.0, 6729.5, 186.0 ],
					"order" : 1,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-370", 0 ],
					"order" : 0,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 8809.5, 471.0, 1909.5, 471.0 ],
					"order" : 12,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 8809.5, 471.0, 1969.5, 471.0 ],
					"order" : 11,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"midpoints" : [ 8809.5, 471.0, 2029.5, 471.0 ],
					"order" : 10,
					"source" : [ "obj-402", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 2209.5, 723.0, 2209.5, 723.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 2255.5, 723.0, 2397.0, 723.0, 2397.0, 756.0, 2409.5, 756.0 ],
					"source" : [ "obj-41", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 2232.5, 723.0, 2277.0, 723.0, 2277.0, 696.0, 2409.5, 696.0 ],
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 2209.5, 753.0, 2209.5, 753.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 2209.5, 783.0, 2209.5, 783.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 2409.5, 783.0, 2382.0, 783.0, 2382.0, 885.0, 2209.5, 885.0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"midpoints" : [ 2409.5, 723.0, 2434.5, 723.0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 2409.5, 753.0, 2397.0, 753.0, 2397.0, 687.0, 2457.0, 687.0, 2457.0, 660.0, 2469.0, 660.0, 2469.0, 642.0, 2532.0, 642.0, 2532.0, 573.0, 2487.0, 573.0, 2487.0, 513.0, 2673.0, 513.0, 2673.0, 348.0, 2607.0, 348.0, 2607.0, 120.0, 2541.0, 120.0, 2541.0, 84.0, 2484.5, 84.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 2469.5, 723.0, 2469.5, 723.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 2515.5, 723.0, 2655.0, 723.0, 2655.0, 753.0, 2669.5, 753.0 ],
					"source" : [ "obj-48", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"midpoints" : [ 2492.5, 723.0, 2535.0, 723.0, 2535.0, 702.0, 2646.0, 702.0, 2646.0, 696.0, 2669.5, 696.0 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 2469.5, 753.0, 2469.5, 753.0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 2469.5, 783.0, 2469.5, 783.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 2669.5, 885.0, 2209.5, 885.0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 1 ],
					"midpoints" : [ 2669.5, 723.0, 2694.5, 723.0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"midpoints" : [ 2669.5, 753.0, 2808.0, 753.0, 2808.0, 513.0, 2787.0, 513.0, 2787.0, 102.0, 3171.0, 102.0, 3171.0, 93.0, 3184.5, 93.0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 3 ],
					"midpoints" : [ 2469.5, 693.0, 2457.0, 693.0, 2457.0, 666.0, 2640.5, 666.0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 1909.5, 570.0, 1909.5, 570.0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"midpoints" : [ 1969.5, 570.0, 1969.5, 570.0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"midpoints" : [ 2029.5, 570.0, 2029.5, 570.0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 2089.5, 543.0, 2089.5, 543.0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 2089.5, 513.0, 2089.5, 513.0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"midpoints" : [ 2129.5, 543.0, 2129.5, 543.0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"midpoints" : [ 2169.5, 543.0, 2169.5, 543.0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"midpoints" : [ 2209.5, 546.0, 2211.0, 546.0, 2211.0, 576.0, 2209.5, 576.0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"midpoints" : [ 2209.5, 513.0, 2209.5, 513.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 1909.5, 603.0, 1845.0, 603.0, 1845.0, 444.0, 1740.0, 444.0, 1740.0, 426.0, 1609.5, 426.0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 1969.5, 612.0, 1845.0, 612.0, 1845.0, 444.0, 1740.0, 444.0, 1740.0, 426.0, 1609.5, 426.0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 2089.5, 603.0, 1845.0, 603.0, 1845.0, 444.0, 1740.0, 444.0, 1740.0, 426.0, 1609.5, 426.0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 2209.5, 603.0, 2196.0, 603.0, 2196.0, 573.0, 2211.0, 573.0, 2211.0, 543.0, 2187.0, 543.0, 2187.0, 444.0, 1740.0, 444.0, 1740.0, 426.0, 1609.5, 426.0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 2129.5, 573.0, 2106.0, 573.0, 2106.0, 552.0, 2067.0, 552.0, 2067.0, 444.0, 1740.0, 444.0, 1740.0, 426.0, 1609.5, 426.0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 1609.5, 63.0, 1609.5, 63.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 2169.5, 573.0, 2106.0, 573.0, 2106.0, 552.0, 2067.0, 552.0, 2067.0, 444.0, 1740.0, 444.0, 1740.0, 426.0, 1609.5, 426.0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"midpoints" : [ 2029.5, 603.0, 2029.5, 603.0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"midpoints" : [ 2009.5, 225.0, 1956.0, 225.0, 1956.0, 186.0, 1609.5, 186.0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 1609.5, 285.0, 1609.5, 285.0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 1739.5, 426.0, 1609.5, 426.0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 1859.5, 396.0, 1609.5, 396.0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"midpoints" : [ 2432.5, 396.0, 2409.5, 396.0 ],
					"order" : 1,
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"midpoints" : [ 2455.5, 63.0, 2559.5, 63.0 ],
					"source" : [ "obj-94", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"midpoints" : [ 2432.5, 63.0, 2535.0, 63.0, 2535.0, 57.0, 2699.5, 57.0 ],
					"order" : 0,
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"midpoints" : [ 2409.5, 63.0, 2409.5, 63.0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 2559.5, 93.0, 2559.5, 93.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 2699.5, 93.0, 2559.5, 93.0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"midpoints" : [ 2409.5, 93.0, 2409.5, 93.0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 2484.5, 123.0, 2484.5, 123.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-122" : [ "bed_threshold", "hit level", 0 ],
			"obj-172" : [ "slice_pos", "position", 0 ],
			"obj-173" : [ "slice_ms", "slice", 0 ],
			"obj-226" : [ "v1_keep", "keep %", 0 ],
			"obj-229" : [ "vst~", "vst~", 0 ],
			"obj-268" : [ "v2_keep", "keep %", 0 ],
			"obj-27" : [ "truncation", "wildness", 0 ],
			"obj-271" : [ "vst~[1]", "vst~[1]", 0 ],
			"obj-310" : [ "v3_keep", "keep %", 0 ],
			"obj-313" : [ "vst~[2]", "vst~[2]", 0 ],
			"obj-332" : [ "vst~[3]", "vst~[3]", 0 ],
			"obj-340" : [ "vst~[4]", "vst~[4]", 0 ],
			"obj-348" : [ "delay_to_reverb", "dly→rev", 0 ],
			"obj-349" : [ "wash", "WASH", 0 ],
			"obj-350" : [ "echo", "ECHO", 0 ],
			"obj-354::obj-10" : [ "level[7]", "level", 0 ],
			"obj-354::obj-20" : [ "drive[7]", "drive", 0 ],
			"obj-354::obj-22" : [ "crush[7]", "crush", 0 ],
			"obj-354::obj-24" : [ "shift[7]", "shift", 0 ],
			"obj-354::obj-26" : [ "filter[7]", "LP·filter·HP", 0 ],
			"obj-354::obj-28" : [ "reso[7]", "reso", 0 ],
			"obj-354::obj-30" : [ "evolve[7]", "evolve", 0 ],
			"obj-354::obj-32" : [ "rev[5]", "reverb", 0 ],
			"obj-354::obj-34" : [ "dly[5]", "delay", 0 ],
			"obj-355::obj-10" : [ "level[6]", "level", 0 ],
			"obj-355::obj-20" : [ "drive[6]", "drive", 0 ],
			"obj-355::obj-22" : [ "crush[6]", "crush", 0 ],
			"obj-355::obj-24" : [ "shift[6]", "shift", 0 ],
			"obj-355::obj-26" : [ "filter[6]", "LP·filter·HP", 0 ],
			"obj-355::obj-28" : [ "reso[6]", "reso", 0 ],
			"obj-355::obj-30" : [ "evolve[6]", "evolve", 0 ],
			"obj-355::obj-32" : [ "rev[4]", "reverb", 0 ],
			"obj-355::obj-34" : [ "dly[4]", "delay", 0 ],
			"obj-356::obj-10" : [ "level[5]", "level", 0 ],
			"obj-356::obj-20" : [ "drive[5]", "drive", 0 ],
			"obj-356::obj-22" : [ "crush[5]", "crush", 0 ],
			"obj-356::obj-24" : [ "shift[5]", "shift", 0 ],
			"obj-356::obj-26" : [ "filter[5]", "LP·filter·HP", 0 ],
			"obj-356::obj-28" : [ "reso[5]", "reso", 0 ],
			"obj-356::obj-30" : [ "evolve[5]", "evolve", 0 ],
			"obj-356::obj-32" : [ "rev[3]", "reverb", 0 ],
			"obj-356::obj-34" : [ "dly[3]", "delay", 0 ],
			"obj-357::obj-10" : [ "level[4]", "level", 0 ],
			"obj-357::obj-20" : [ "drive[4]", "drive", 0 ],
			"obj-357::obj-22" : [ "crush[4]", "crush", 0 ],
			"obj-357::obj-24" : [ "shift[4]", "shift", 0 ],
			"obj-357::obj-26" : [ "filter[4]", "LP·filter·HP", 0 ],
			"obj-357::obj-28" : [ "reso[4]", "reso", 0 ],
			"obj-357::obj-30" : [ "evolve[4]", "evolve", 0 ],
			"obj-357::obj-32" : [ "rev[2]", "reverb", 0 ],
			"obj-357::obj-34" : [ "dly[2]", "delay", 0 ],
			"obj-358::obj-10" : [ "level[3]", "level", 0 ],
			"obj-358::obj-20" : [ "drive[3]", "drive", 0 ],
			"obj-358::obj-22" : [ "crush[3]", "crush", 0 ],
			"obj-358::obj-24" : [ "shift[3]", "shift", 0 ],
			"obj-358::obj-26" : [ "filter[3]", "LP·filter·HP", 0 ],
			"obj-358::obj-28" : [ "reso[3]", "reso", 0 ],
			"obj-358::obj-30" : [ "evolve[3]", "evolve", 0 ],
			"obj-358::obj-32" : [ "rev[1]", "reverb", 0 ],
			"obj-358::obj-34" : [ "dly[1]", "delay", 0 ],
			"obj-359::obj-10" : [ "level[2]", "level", 0 ],
			"obj-359::obj-20" : [ "drive[2]", "drive", 0 ],
			"obj-359::obj-22" : [ "crush[2]", "crush", 0 ],
			"obj-359::obj-24" : [ "shift[2]", "shift", 0 ],
			"obj-359::obj-26" : [ "filter[2]", "LP·filter·HP", 0 ],
			"obj-359::obj-28" : [ "reso[2]", "reso", 0 ],
			"obj-359::obj-30" : [ "evolve[2]", "evolve", 0 ],
			"obj-359::obj-32" : [ "rev", "reverb", 0 ],
			"obj-359::obj-34" : [ "dly", "delay", 0 ],
			"obj-360::obj-10" : [ "level[1]", "level", 0 ],
			"obj-360::obj-20" : [ "drive[1]", "drive", 0 ],
			"obj-360::obj-22" : [ "crush[1]", "crush", 0 ],
			"obj-360::obj-24" : [ "shift[1]", "shift", 0 ],
			"obj-360::obj-26" : [ "filter[1]", "LP·filter·HP", 0 ],
			"obj-360::obj-28" : [ "reso[1]", "reso", 0 ],
			"obj-360::obj-30" : [ "evolve[1]", "evolve", 0 ],
			"obj-361::obj-10" : [ "level", "level", 0 ],
			"obj-361::obj-20" : [ "drive", "drive", 0 ],
			"obj-361::obj-22" : [ "crush", "crush", 0 ],
			"obj-361::obj-24" : [ "shift", "shift", 0 ],
			"obj-361::obj-26" : [ "filter", "LP·filter·HP", 0 ],
			"obj-361::obj-28" : [ "reso", "reso", 0 ],
			"obj-361::obj-30" : [ "evolve", "evolve", 0 ],
			"obj-367" : [ "master", "master", 0 ],
			"obj-370" : [ "master_tone", "LP·tone·HP", 0 ],
			"obj-59" : [ "chaos", "chaos", 0 ],
			"obj-60" : [ "density", "density", 0 ],
			"obj-61" : [ "pace", "pace", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-354::obj-10" : 				{
					"parameter_longname" : "level[7]"
				}
,
				"obj-354::obj-20" : 				{
					"parameter_longname" : "drive[7]"
				}
,
				"obj-354::obj-22" : 				{
					"parameter_longname" : "crush[7]"
				}
,
				"obj-354::obj-24" : 				{
					"parameter_longname" : "shift[7]"
				}
,
				"obj-354::obj-26" : 				{
					"parameter_longname" : "filter[7]"
				}
,
				"obj-354::obj-28" : 				{
					"parameter_longname" : "reso[7]"
				}
,
				"obj-354::obj-30" : 				{
					"parameter_longname" : "evolve[7]"
				}
,
				"obj-354::obj-32" : 				{
					"parameter_longname" : "rev[5]"
				}
,
				"obj-354::obj-34" : 				{
					"parameter_longname" : "dly[5]"
				}
,
				"obj-355::obj-10" : 				{
					"parameter_longname" : "level[6]"
				}
,
				"obj-355::obj-20" : 				{
					"parameter_longname" : "drive[6]"
				}
,
				"obj-355::obj-22" : 				{
					"parameter_longname" : "crush[6]"
				}
,
				"obj-355::obj-24" : 				{
					"parameter_longname" : "shift[6]"
				}
,
				"obj-355::obj-26" : 				{
					"parameter_longname" : "filter[6]"
				}
,
				"obj-355::obj-28" : 				{
					"parameter_longname" : "reso[6]"
				}
,
				"obj-355::obj-30" : 				{
					"parameter_longname" : "evolve[6]"
				}
,
				"obj-355::obj-32" : 				{
					"parameter_longname" : "rev[4]"
				}
,
				"obj-355::obj-34" : 				{
					"parameter_longname" : "dly[4]"
				}
,
				"obj-356::obj-10" : 				{
					"parameter_longname" : "level[5]"
				}
,
				"obj-356::obj-20" : 				{
					"parameter_longname" : "drive[5]"
				}
,
				"obj-356::obj-22" : 				{
					"parameter_longname" : "crush[5]"
				}
,
				"obj-356::obj-24" : 				{
					"parameter_longname" : "shift[5]"
				}
,
				"obj-356::obj-26" : 				{
					"parameter_longname" : "filter[5]"
				}
,
				"obj-356::obj-28" : 				{
					"parameter_longname" : "reso[5]"
				}
,
				"obj-356::obj-30" : 				{
					"parameter_longname" : "evolve[5]"
				}
,
				"obj-356::obj-32" : 				{
					"parameter_longname" : "rev[3]"
				}
,
				"obj-356::obj-34" : 				{
					"parameter_longname" : "dly[3]"
				}
,
				"obj-357::obj-10" : 				{
					"parameter_longname" : "level[4]"
				}
,
				"obj-357::obj-20" : 				{
					"parameter_longname" : "drive[4]"
				}
,
				"obj-357::obj-22" : 				{
					"parameter_longname" : "crush[4]"
				}
,
				"obj-357::obj-24" : 				{
					"parameter_longname" : "shift[4]"
				}
,
				"obj-357::obj-26" : 				{
					"parameter_longname" : "filter[4]"
				}
,
				"obj-357::obj-28" : 				{
					"parameter_longname" : "reso[4]"
				}
,
				"obj-357::obj-30" : 				{
					"parameter_longname" : "evolve[4]"
				}
,
				"obj-357::obj-32" : 				{
					"parameter_longname" : "rev[2]"
				}
,
				"obj-357::obj-34" : 				{
					"parameter_longname" : "dly[2]"
				}
,
				"obj-358::obj-10" : 				{
					"parameter_longname" : "level[3]"
				}
,
				"obj-358::obj-20" : 				{
					"parameter_longname" : "drive[3]"
				}
,
				"obj-358::obj-22" : 				{
					"parameter_longname" : "crush[3]"
				}
,
				"obj-358::obj-24" : 				{
					"parameter_longname" : "shift[3]"
				}
,
				"obj-358::obj-26" : 				{
					"parameter_longname" : "filter[3]"
				}
,
				"obj-358::obj-28" : 				{
					"parameter_longname" : "reso[3]"
				}
,
				"obj-358::obj-30" : 				{
					"parameter_longname" : "evolve[3]"
				}
,
				"obj-358::obj-32" : 				{
					"parameter_longname" : "rev[1]"
				}
,
				"obj-358::obj-34" : 				{
					"parameter_longname" : "dly[1]"
				}
,
				"obj-359::obj-10" : 				{
					"parameter_longname" : "level[2]"
				}
,
				"obj-359::obj-20" : 				{
					"parameter_longname" : "drive[2]"
				}
,
				"obj-359::obj-22" : 				{
					"parameter_longname" : "crush[2]"
				}
,
				"obj-359::obj-24" : 				{
					"parameter_longname" : "shift[2]"
				}
,
				"obj-359::obj-26" : 				{
					"parameter_longname" : "filter[2]"
				}
,
				"obj-359::obj-28" : 				{
					"parameter_longname" : "reso[2]"
				}
,
				"obj-359::obj-30" : 				{
					"parameter_longname" : "evolve[2]"
				}
,
				"obj-360::obj-10" : 				{
					"parameter_longname" : "level[1]"
				}
,
				"obj-360::obj-20" : 				{
					"parameter_longname" : "drive[1]"
				}
,
				"obj-360::obj-22" : 				{
					"parameter_longname" : "crush[1]"
				}
,
				"obj-360::obj-24" : 				{
					"parameter_longname" : "shift[1]"
				}
,
				"obj-360::obj-26" : 				{
					"parameter_longname" : "filter[1]"
				}
,
				"obj-360::obj-28" : 				{
					"parameter_longname" : "reso[1]"
				}
,
				"obj-360::obj-30" : 				{
					"parameter_longname" : "evolve[1]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "ChowMatrix.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "FM8.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "FM8_20260930.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "ValhallaSupermassive.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "chain_engine.js",
				"bootpath" : "~/repos/aimat/resources/examples/max",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "chain_loop.js",
				"bootpath" : "~/repos/aimat/resources/examples/max",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "chain_return.maxpat",
				"bootpath" : "~/repos/aimat/resources/examples/max",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "chain_shaper.js",
				"bootpath" : "~/repos/aimat/resources/examples/max",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "chain_solo.js",
				"bootpath" : "~/repos/aimat/resources/examples/max",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "chain_strip.js",
				"bootpath" : "~/repos/aimat/resources/examples/max",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "chain_strip.maxpat",
				"bootpath" : "~/repos/aimat/resources/examples/max",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
