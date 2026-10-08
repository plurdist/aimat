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
		"rect" : [ 30.0, 60.0, 1500.0, 950.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 22.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 15.0, 520.0, 31.0 ],
					"text" : "AIMAT CHAINING  v2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 50.0, 470.0, 60.0 ],
					"text" : "Close other AIMAT patches first (they share port 7400).\nTerminal:  .venv/bin/aimat start   and   .venv/bin/aimat logs\nClick each [plug( to load a synth, then a speaker icon for audio.\nOne GENERATE at a time: wait for the result before the next."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 150.0, 300.0, 24.0 ],
					"text" : "1. GENERATE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 185.0, 93.0, 22.0 ],
					"text" : "loadmess 1."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-5",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 213.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 213.0, 200.0, 20.0 ],
					"text" : "truncation (higher = wilder)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 245.0, 93.0, 22.0 ],
					"text" : "loadmess 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 273.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 273.0, 100.0, 20.0 ],
					"text" : "seconds"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 310.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.0, 318.0, 250.0, 20.0 ],
					"text" : "BED  (techno, never transcribed)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 30.0, 360.0, 65.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 390.0, 180.0, 22.0 ],
					"text" : "pack musika 1. 20 techno"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 418.0, 170.0, 22.0 ],
					"text" : "prepend /trigger_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 446.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 290.0, 310.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 338.0, 318.0, 200.0, 20.0 ],
					"text" : "MELODY  (feeds the chain)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 290.0, 360.0, 65.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 390.0, 180.0, 22.0 ],
					"text" : "pack musika 1. 20 pipes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 418.0, 170.0, 22.0 ],
					"text" : "prepend /trigger_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.0, 446.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 476.0, 100.0, 22.0 ],
					"text" : "symbol pipes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 385.0, 476.0, 93.0, 22.0 ],
					"text" : "symbol misc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 480.0, 476.0, 107.0, 22.0 ],
					"text" : "symbol techno"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.0, 504.0, 280.0, 20.0 ],
					"text" : "melody model (pipes transcribes best)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 540.0, 58.0, 22.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 510.0, 40.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 510.0, 40.0, 22.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 170.0, 510.0, 44.0, 22.0 ],
					"text" : "f 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 170.0, 540.0, 44.0, 22.0 ],
					"text" : "f 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 230.0, 510.0, 44.0, 22.0 ],
					"text" : "f 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 230.0, 540.0, 44.0, 22.0 ],
					"text" : "f 20"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 590.0, 300.0, 22.0 ],
					"text" : "AUTO-REGENERATE MELODY"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 615.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 643.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 643.0, 60.0, 20.0 ],
					"text" : "on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 615.0, 93.0, 22.0 ],
					"text" : "loadmess 30"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 150.0, 643.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 643.0, 190.0, 20.0 ],
					"text" : "every (seconds, keep > 25)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 150.0, 675.0, 58.0, 22.0 ],
					"text" : "* 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 675.0, 93.0, 22.0 ],
					"text" : "metro 30000"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 715.0, 300.0, 22.0 ],
					"text" : "KEY (for the scale snap)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 740.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 768.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 768.0, 240.0, 20.0 ],
					"text" : "root: 0 = C, 2 = D, 7 = G, 9 = A"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 768.0, 100.0, 22.0 ],
					"text" : "s chain_key"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 810.0, 360.0, 22.0 ],
					"text" : "PANIC  (stop MIDI, silence stuck notes)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 835.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 843.0, 114.0, 22.0 ],
					"text" : "s chain_panic"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 900.0, 200.0, 22.0 ],
					"text" : "AIMAT connection"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 925.0, 100.0, 22.0 ],
					"text" : "r aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 953.0, 170.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 5005"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 990.0, 121.0, 22.0 ],
					"text" : "udpreceive 7400"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 990.0, 93.0, 22.0 ],
					"text" : "print aimat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"patching_rect" : [ 30.0, 1020.0, 520.0, 22.0 ],
					"text" : "route /musika_done /basic_pitch_done /midi_ddsp_done /status /continuator_done"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 1050.0, 93.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 1078.0, 360.0, 22.0 ],
					"text" : "\"continuator generation complete!\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 1106.0, 260.0, 20.0 ],
					"text" : "status (the logs window is the truth)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-59",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 150.0, 460.0, 24.0 ],
					"text" : "2. BED  (techno, snap loop)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 600.0, 190.0, 65.0, 22.0 ],
					"text" : "t b b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 750.0, 220.0, 121.0, 22.0 ],
					"text" : "prepend replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 750.0, 248.0, 142.0, 22.0 ],
					"text" : "buffer~ chain_bed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 890.0, 220.0, 107.0, 22.0 ],
					"text" : "normalize 0.9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 220.0, 79.0, 22.0 ],
					"text" : "startloop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 675.0, 248.0, 65.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 675.0, 276.0, 128.0, 22.0 ],
					"text" : "prepend duration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 890.0, 276.0, 72.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 890.0, 304.0, 58.0, 22.0 ],
					"text" : "loop 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 980.0, 248.0, 93.0, 22.0 ],
					"text" : "loadmess 1."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-70",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 980.0, 276.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1040.0, 276.0, 140.0, 20.0 ],
					"text" : "speed (−1 = reverse)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 980.0, 304.0, 44.0, 22.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 675.0, 340.0, 130.0, 22.0 ],
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
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 600.0, 380.0, 180.0, 22.0 ],
					"text" : "groove~ chain_bed 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 820.0, 380.0, 200.0, 22.0 ],
					"text" : "\"looping 16 hits (3895 ms)\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 820.0, 412.0, 65.0, 22.0 ],
					"text" : "*~ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 900.0, 412.0, 58.0, 22.0 ],
					"text" : "!-~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 900.0, 440.0, 65.0, 22.0 ],
					"text" : "*~ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 820.0, 468.0, 72.0, 22.0 ],
					"text" : "minimum~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 820.0, 496.0, 93.0, 22.0 ],
					"text" : "clip~ 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 600.0, 530.0, 40.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 665.0, 530.0, 40.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 570.0, 360.0, 33.0 ],
					"text" : "SNAP LOOP: click arm, it catches the next drum hit\nand loops exactly N hits later"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 615.0, 40.0, 22.0 ],
					"text" : "arm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 645.0, 615.0, 65.0, 22.0 ],
					"text" : "release"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 720.0, 615.0, 58.0, 22.0 ],
					"text" : "hits 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 775.0, 615.0, 58.0, 22.0 ],
					"text" : "hits 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 830.0, 615.0, 58.0, 22.0 ],
					"text" : "hits 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 885.0, 615.0, 65.0, 22.0 ],
					"text" : "hits 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 950.0, 615.0, 121.0, 22.0 ],
					"text" : "loadmess hits 4"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-91",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 650.0, 200.0, 20.0 ],
					"text" : "hit detection"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 600.0, 675.0, 44.0, 22.0 ],
					"text" : "abs~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 600.0, 703.0, 121.0, 22.0 ],
					"text" : "slide~ 1. 2000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 600.0, 731.0, 58.0, 22.0 ],
					"text" : ">~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 600.0, 759.0, 51.0, 22.0 ],
					"text" : "edge~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 787.0, 100.0, 22.0 ],
					"text" : "speedlim 120"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 600.0, 815.0, 51.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 720.0, 815.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 750.0, 815.0, 150.0, 20.0 ],
					"text" : "flashes on each hit"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 600.0, 845.0, 79.0, 22.0 ],
					"text" : "snapshot~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 873.0, 107.0, 22.0 ],
					"text" : "prepend onset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 750.0, 720.0, 100.0, 22.0 ],
					"text" : "loadmess 0.5"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-103",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 750.0, 748.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 810.0, 748.0, 220.0, 20.0 ],
					"text" : "hit threshold (lower = more hits)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 730.0, 910.0, 100.0, 22.0 ],
					"text" : "loadmess 0.8"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-106",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 730.0, 938.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 790.0, 938.0, 60.0, 20.0 ],
					"text" : "volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 600.0, 938.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 665.0, 938.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 970.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-111",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1100.0, 150.0, 460.0, 24.0 ],
					"text" : "3. MELODY TEXTURE  (the chain's source)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 1100.0, 190.0, 65.0, 22.0 ],
					"text" : "t b b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1250.0, 220.0, 121.0, 22.0 ],
					"text" : "prepend replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 1250.0, 248.0, 163.0, 22.0 ],
					"text" : "buffer~ chain_melody"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1390.0, 220.0, 107.0, 22.0 ],
					"text" : "normalize 0.9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1100.0, 220.0, 79.0, 22.0 ],
					"text" : "startloop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1175.0, 248.0, 65.0, 22.0 ],
					"text" : "* 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1175.0, 276.0, 128.0, 22.0 ],
					"text" : "prepend duration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1390.0, 276.0, 72.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1390.0, 304.0, 58.0, 22.0 ],
					"text" : "loop 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1480.0, 248.0, 93.0, 22.0 ],
					"text" : "loadmess 1."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-122",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1480.0, 276.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1540.0, 276.0, 140.0, 20.0 ],
					"text" : "speed (−1 = reverse)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1480.0, 304.0, 44.0, 22.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1175.0, 340.0, 130.0, 22.0 ],
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
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 1100.0, 380.0, 180.0, 22.0 ],
					"text" : "groove~ chain_melody 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1320.0, 380.0, 200.0, 22.0 ],
					"text" : "\"full loop\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1320.0, 412.0, 65.0, 22.0 ],
					"text" : "*~ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1400.0, 412.0, 58.0, 22.0 ],
					"text" : "!-~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1400.0, 440.0, 65.0, 22.0 ],
					"text" : "*~ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1320.0, 468.0, 72.0, 22.0 ],
					"text" : "minimum~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1320.0, 496.0, 93.0, 22.0 ],
					"text" : "clip~ 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1100.0, 530.0, 40.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1165.0, 530.0, 40.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1100.0, 570.0, 360.0, 20.0 ],
					"text" : "SLICE: loop a small window (stutter / grain)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1100.0, 595.0, 93.0, 22.0 ],
					"text" : "loadmess 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-137",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1100.0, 623.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1160.0, 623.0, 110.0, 20.0 ],
					"text" : "position (0–1)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 595.0, 93.0, 22.0 ],
					"text" : "loadmess 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-140",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1300.0, 623.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1360.0, 623.0, 130.0, 20.0 ],
					"text" : "size ms (0 = off)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1100.0, 660.0, 79.0, 22.0 ],
					"text" : "pak 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1100.0, 688.0, 107.0, 22.0 ],
					"text" : "prepend slice"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 660.0, 40.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1335.0, 660.0, 90.0, 20.0 ],
					"text" : "← slice off"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1230.0, 740.0, 100.0, 22.0 ],
					"text" : "loadmess 0.5"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-147",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1230.0, 768.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1290.0, 768.0, 60.0, 20.0 ],
					"text" : "volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1100.0, 768.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1165.0, 768.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1100.0, 800.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-152",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1100.0, 850.0, 300.0, 22.0 ],
					"text" : "CHAIN SWITCHES"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1100.0, 875.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1100.0, 903.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1130.0, 903.0, 260.0, 20.0 ],
					"text" : "auto-transcribe (melody → Basic Pitch)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1100.0, 931.0, 72.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1100.0, 959.0, 149.0, 22.0 ],
					"text" : "prepend basic_pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1100.0, 987.0, 170.0, 22.0 ],
					"text" : "prepend /trigger_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1100.0, 1015.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1370.0, 875.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1370.0, 903.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1400.0, 903.0, 220.0, 20.0 ],
					"text" : "auto-continue (→ Continuator)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1370.0, 931.0, 72.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1370.0, 959.0, 149.0, 22.0 ],
					"text" : "prepend continuator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1370.0, 987.0, 170.0, 22.0 ],
					"text" : "prepend /trigger_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1370.0, 1015.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-167",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1100.0, 1060.0, 440.0, 22.0 ],
					"text" : "SLOW CUE: MIDI-DDSP violin (~55 s) of the latest transcription"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1160.0, 1090.0, 58.0, 22.0 ],
					"text" : "zl reg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1100.0, 1090.0, 32.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1100.0, 1130.0, 135.0, 22.0 ],
					"text" : "prepend midi_ddsp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1100.0, 1158.0, 107.0, 22.0 ],
					"text" : "append violin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1100.0, 1186.0, 170.0, 22.0 ],
					"text" : "prepend /trigger_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1100.0, 1214.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1360.0, 1090.0, 51.0, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1420.0, 1118.0, 121.0, 22.0 ],
					"text" : "prepend replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 1420.0, 1146.0, 149.0, 22.0 ],
					"text" : "buffer~ chain_ddsp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1360.0, 1118.0, 79.0, 22.0 ],
					"text" : "startloop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1570.0, 1090.0, 72.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1570.0, 1118.0, 58.0, 22.0 ],
					"text" : "loop 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1360.0, 1180.0, 150.0, 22.0 ],
					"text" : "groove~ chain_ddsp 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1530.0, 1150.0, 65.0, 22.0 ],
					"text" : "sig~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1490.0, 1212.0, 100.0, 22.0 ],
					"text" : "loadmess 0.8"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-183",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1490.0, 1240.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1550.0, 1240.0, 60.0, 20.0 ],
					"text" : "volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1360.0, 1240.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-186",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1425.0, 1240.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1360.0, 1272.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-188",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1650.0, 150.0, 440.0, 24.0 ],
					"text" : "4. TRANSCRIPTION  (Basic Pitch MIDI)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "bang" ],
					"patching_rect" : [ 1650.0, 190.0, 65.0, 22.0 ],
					"text" : "t b s b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1720.0, 190.0, 260.0, 20.0 ],
					"text" : "right to left: stop + clear, load, play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1810.0, 222.0, 44.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1860.0, 222.0, 51.0, 22.0 ],
					"text" : "panic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1720.0, 222.0, 100.0, 22.0 ],
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1940.0, 250.0, 100.0, 22.0 ],
					"text" : "loadmess 512"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1940.0, 278.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2000.0, 278.0, 220.0, 20.0 ],
					"text" : "tempo (1024 = normal, 512 = half)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1650.0, 250.0, 51.0, 22.0 ],
					"text" : "f 512"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1650.0, 278.0, 107.0, 22.0 ],
					"text" : "prepend start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "" ],
					"patching_rect" : [ 1650.0, 308.0, 40.0, 22.0 ],
					"text" : "seq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1940.0, 308.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-201",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1940.0, 336.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1970.0, 336.0, 140.0, 20.0 ],
					"text" : "loop this layer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1940.0, 364.0, 72.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-204",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 1650.0, 340.0, 79.0, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-205",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1650.0, 400.0, 140.0, 22.0 ],
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
					"fontsize" : 13.0,
					"id" : "obj-206",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1810.0, 430.0, 200.0, 21.0 ],
					"text" : "MIDI SHAPER"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-207",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1810.0, 455.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1810.0, 483.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-209",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1870.0, 483.0, 120.0, 20.0 ],
					"text" : "octave shift"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-210",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2000.0, 483.0, 114.0, 22.0 ],
					"text" : "prepend octave"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-211",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1810.0, 515.0, 79.0, 22.0 ],
					"text" : "scale off"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1880.0, 515.0, 107.0, 22.0 ],
					"text" : "scale minpent"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-213",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1970.0, 515.0, 100.0, 22.0 ],
					"text" : "scale dorian"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-214",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2050.0, 515.0, 121.0, 22.0 ],
					"text" : "scale wholetone"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-215",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2150.0, 515.0, 93.0, 22.0 ],
					"text" : "scale major"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-216",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2000.0, 487.0, 170.0, 22.0 ],
					"text" : "loadmess scale minpent"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-217",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1810.0, 545.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-218",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1810.0, 573.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-219",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1840.0, 573.0, 220.0, 20.0 ],
					"text" : "fold into one octave from base"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-220",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2070.0, 573.0, 100.0, 22.0 ],
					"text" : "prepend fold"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-221",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1810.0, 605.0, 93.0, 22.0 ],
					"text" : "loadmess 60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1810.0, 633.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1870.0, 633.0, 180.0, 20.0 ],
					"text" : "base note (60 = middle C)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-224",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2070.0, 633.0, 100.0, 22.0 ],
					"text" : "prepend base"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-225",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1810.0, 669.0, 100.0, 22.0 ],
					"text" : "loadmess 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-226",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1810.0, 693.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-227",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1870.0, 693.0, 180.0, 20.0 ],
					"text" : "keep % (thin out notes)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-228",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2070.0, 693.0, 100.0, 22.0 ],
					"text" : "prepend keep"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-229",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1810.0, 730.0, 100.0, 22.0 ],
					"text" : "r chain_key"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-230",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1910.0, 730.0, 93.0, 22.0 ],
					"text" : "prepend key"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-231",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2010.0, 730.0, 114.0, 22.0 ],
					"text" : "r chain_panic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-232",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1692.0, 600.0, 44.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-233",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1715.0, 633.0, 44.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-234",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1900.0, 670.0, 200.0, 20.0 ],
					"text" : "soft pad, long release"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-235",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 1650.0, 702.0, 120.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, 2, ";" ],
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
							"blob" : "11849.VMjLg.jK...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fyM2PiKFkjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3hKn8VTz.iPIQFM5gFbncjQI4Db1.SVI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKtnWQB4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKrYUXxgzanEzSxo2ZOkiXxbzQEIGUvXjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtfjKt3hKD4hKt3hYB4hKt3xctX1RtfzPtPmKtvjKyHjK24hKL4BQC4hct.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKtfkbt3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hKDUTNz4xMIozcwLEMVMWbEkGc0HjYsslPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3hKB4hKt3BRAAEVtfzQtnVPtLlKDYjKxEjcZ4hct3hKt.ETtLiQtnVPlIlKTYjKl4BTQ4BTG4hdAAUVtnmQtbVPlQjKt3hKNEDTX4BTG4xaAY1XtPkQtXlKPIkKyXjK4EjKi4BRG4BLAAUXtPkQtPWPtLlKLcjKt3hKt3hKt3hKtX2JqrxJq3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKP4hKt3hKA4hKt3BRt3hKtXmKt3hKtXTPPMkKlMjKQ4hKt3BTE4BdAAEVtLiQtjWPPokKTYjKzEjKi4hKB4RPA4xXt.0QtbVP1gkKxYjK4EDTB4hKt3xRt3hKtPDQtfWPtHlKTYjKsEjcY4hZF4xYA4xXtPkQtnVPtDjKt3hKBEDTX4BSG4RdA4xPt3hKtPTPPokKhYjKuEjKi4BQF4hbA4BRtfDQtbVP1IlKLcjKN4hKt3BTD4xaAYWVtnlQtnWPPgkK1YjKl4hcQ4BUG4xaA4xXtPjQtfWP14hKt3hKDEjYh4hZG4hQt3hKtHFQt.SPPokKPcjKmEjYh4hat3hKt.0TtbiQtPWP1ElKtbjKtEjcg4xLF4xaAYGVtnlKt3hK1QkKpcjKzEjKi4hYF4xZA4xXtnlQtjVPtLjKt3hKTEDTY4hdF4hcAYWXtnmPtjWPPQlKyXjKoEDTY4BTF4hKt3hKtHlKt3hK1EjKt3hKhEjKP4BSF4RcA4RXtbiQtfWPP4hKt3hK14BTD4hKt3hXA4BTt.kQtrVPlMlKpYjKoEDTY4BTG4BMA4hXtPkQtvVPtDlKDYjKsEjch4BQt3hKt.EStHmKt3hKtbkKtPjK4Ejcg4BUG4BcA4RVt.0QtPSPtHlKTYjKA4hKt3hKC4xQt3hKtXWQt3RPtLlKTYjKyEjKh4xMF4RPt3hKt3xPtXjKt3hK1UjKtDjYi4BUF4BdA4RXtfkKt3hKPwjKyHjKx3hYK4BQC4hdtXVPt3hKtHVPt.kKXcjKqEjYh4hdF4hQt3hKtPzPtPmK10jKyHjK24hKM4hXt3hKt3xUt3BQtDSPPokKLcjKuEjYX4BQt3hKt3BStPjKt3hKt3hKt3hKB4hKt3BT5QURzPEYt3hKt.kXA4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hK4UzYyLGZ4rjUBolaSsFcBUmVPgyLBQWQt3hKt3hKt3BQMUkTNs1Qt3hKP4hKt3hKX4hKt3hKt3hKt3RTSslZSEjKt3hKD4hKt3BTt3hKt3RPt3hKtPjKt3hKPYjKt3hKA4hKt3BVt3hKtXVPt3hKtPUPPokK5YjKnEjYh4BUF4RPt3hKtXlKt3hKtHkKDYjK3EDTg4xMF4BcAAkVtvjQt3hKt3hKt3hKtjSZt3hKt3RPt3hKtPjKt3hKlEjKt3hKDEDTY4BTG4BLAYVXtPkQt3hKt3hKt3hKtjSdt3hKt3hPt3hKtPjKt3hKlIjKt3hKBEjYh4hZF4RaA4hVt.0QtPWPPkkKLcjK4EjKt3hKt3hKt3hYqPjKt3hK14hKt3hKA4hKt3hXt3hKt.UTtLiQtDSPtfjKDQjKyEjKi4hKt3hKt3hKt3xLOQjKt3hKP4hKt3BTt3hKt3BRt3hKtfUQtrVPtDlK2XjKoEDTZ4BTG4BMA4hKt3hKt3hKtX1JT4hKt3BTA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJF4hKt3BQt3hKtXlKt3hKtHjKt3hKXQjKXEDTt3hKt3hQt3hKtPDQtLWP1ElKTcjKzEjKi4hKt3hKt3hKt3xLOokKt3hKD4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJ04hKt3hKA4hKt3BTt3hKt3hPt3hKtPUPPokK5YjKnEjKH4BUD4BcAY1XtPjKt3hKlEjKt3hKAEjKi4BTG4xYAYGVtHmQt3hKt3hKt3hKtjSZA4hKt3RPt3hKtPjKt3hKPEjKt3hKDEDTY4BSF4xYAAEYt3hKt3hKt3hKtLySG4hKt3BRt3hKt.kKt3hKtbjKt3hKLUjKvDjch4BTG4xYAAkVtLiQt3hKt3hKt3hKtjyPB4hKt3xPt3hKtPjKt3hK1EjKt3hKREDTY4hcF4xZAAEVtvzQtrVPt3hKt3hKt3hKlshZt3hKt3RPt3hKtDjKt3hKP4hKt3hcA4hKt3RPAAUXt3xQtXlKPEkKyXjKwDDTt3hKt3xQt3hKtPDQtnWPtLlKDYjKoEjcZ4hKB4hKt3hKt3hKt3RNSQjKt3hKA4hKt3BQt3hKt.UPt3hKtPTPPkkKLYjKmEDTj4hKt3hKt3hKt3xLOIkKt3hKH4hKt3BTt3hKt3xQt3hKtvTQt.SP1IlKPcjKmEDTZ4xLF4hKt3hKt3hKt3RN4QjKt3hKC4hKt3BQt3hKtXWPt3hKtHUPPkkK1YjKqEDTX4BSG4xZA4hKt3hKt3hKtX1JPEjKt3hKA4hKt3RPt3hKt.kKt3hKlEjKt3hKOEDTi4BTG4hcAA0Xt.0QtDjKt3hKX4hKt3hYU4xMF4hbAA0XtnmQtrVPt3hKt3hKt3hKlsxLt3hKt.kKt3hKtDjKt3hKl4hKt3hYU4BUF4hbAYWXtvjQt7VPtLlKpcjKt3hKt3hKt3hK4LDQt3hKtHjKt3hKD4hKt3BTB4hKt3xTA4xXtfzQtXlK1UkKpYjKpEjKi4hYF4hKt3hKt3hKt3RN4MjKt3hKC4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJS4hKt3BTt3hKt3BQt3hKtvjKt3hKtLkKXQjKOEDTt3hKt3BQt3hKtfTQtbVPtLlKTYjKt3hKt3hKt3hK4jlPt3hKtDjKt3hKD4hKt3hcA4hKt3hUAAkVtfjQtfWPPgkKPcjK0EjKt3hKt3hKt3hYqHmKt3hKl4hKt3hKA4hKt3BVt3hKt3RUtnlQtLWPlgkKHcjKqEjKt3hKt3hKt3hYqXmKt3hK14hKt3hKA4hKt3hXt3hKt3RUtfzQtrVPPElK2XjKxEjcg4hKt3hKt3hKt3xLO0jKt3hKP4hKt3BTt3hKt3BQt3hKtvjKt3hKPAkKHcjK1EDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOgjPt3hKD4hKt3BTt3hKt3BQt3hKtvTQtnWPPkkKtbjKt3hKt3hKt3hK4L0Zt3hKtHjKt3hKD4hKt3hKA4hKt3xQAAEVt.0QtrVPt3hKt3hKt3hKlshZH4hKtXmKt3hKtDjKt3hKh4hKt3hcT4hYF4BLAYVVtfkQtHWPPkkKt3hKt3hKt3hKy7TSB4hKt.kKt3hKP4hKt3hKD4hKt3BUt3hKt.0TtbiQtfWPtHlKlYjKA4hKt3BQt3hKt3hUt3hKt3hKt3hKtLySU4hKt3BQt3hKt.kKt3hKtDjKt3hKpUjKt3hKt3hKt3hK4jVQt3hKtHjKt3hKD4hKt3BTA4hKt3hTAYVXt.kQtXlKtXkKt3hKt3hKt3hKy7zUt3hKtvjKt3hKP4hKt3hKE4hKt3BRE4BcA4RVt3hPtjUPt3hKt3hKt3hKlshYA4hKt3RPt3hKtDjKt3hKH4hKt3hYA4hKt3RSAAEVtvzQtnWPPkkKHcjKA4hKt3BVt3hKtX2TtP0QtnWPtHlKTcjK5EjKt3hKt3hKt3hYq.0Qt3hKP4hKt3hKA4hKt3BUt3hKt.kTtLiQtXWPPMlKPcjKt3hKt3hKt3hK4L0Xt3hKtHjKt3hKD4hKt3hYt3hKt3RQt3hKt3RQt7VPtLlKLYjKtEDTt3hKt3BQt3hKt.UQt.SPlElKTYjKt3hKt3hKt3hK4j1Xt3hKtDjKt3hKD4hKt3BTB4hKt3BUAYlXtPjQtPWP1IlKtbjK0Ejch4BUF4hKt3hKt3hKt3RN4MlKt3hKB4hKt3BQt3hKt.kKt3hKtXjKt3hKTUjKzEDTZ4BSG4RcAYVXtPjKt3hKlEjKt3hKDEDTY4BTG4BLAYVXtPkQt3hKt3hKt3hKtjyTj4hKt3RPt3hKtPjKt3hKP4hKt3hKE4hKt3hXD4hbAAkVt.kQtrVPP4hKt3hKD4hKt3BTE4xaAAUXtPkQt3hKt3hKt3hKtjSdk4hKt3RPt3hKtPjKt3hKl4hKt3hKG4hKt3BQE4BLAAEVtXmQt7VPtLlKpcjKA4hKt3BVt3hKt.ETtLiQtbVPtDlK2XjKsEjKt3hKt3hKt3hYq3BRt3hKP4hKt3hKA4hKt3hXt3hKt3RTtnlQtzVPPokKPcjKmEjKg4hKt3hKt3hKt3xLOQjPt3hKH4hKt3BTt3hKt3BRt3hKtPkKt3hKtDkKHcjKuEjYi4BUF4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JyDjKt3BTt3hKt3RPt3hKtPkKt3hKtDkKHcjKuEjYi4BUF4hKt3hKt3hKt3RN4cjKt3hKB4hKt3BQt3hKt3RPt3hKtPUP1ElKyXjKqEjKt3hKt3hKt3hYq3hPt3hK14hKt3hKA4hKt3BTt3hKtXFTtPjQtjWP1IlKt3hKt3hKt3hKy7zYt3hKt.kKt3hKP4hKt3hKG4hKt3BVE4RcA4RXtP0QtLWPPkkKtHjKt3hKt3hKt3hK4jFRt3hKtTjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqDlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqrRPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrBRt3hKtPjKt3hKtHjKt3hKD4hKt3BTE4BLAYFVtPkQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlsBSB4hKt.kKt3hKtDjKt3hKX4hKt3hYU4xMF4hbAA0XtnmQtrVPt3hKt3hKt3hKlsBUB4hKtXlKt3hKtDjKt3hKT4hKt3hKQ4BRG4xaAY1XtPkQt3hKt3hKt3hKtjyPI4hKt3xPt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrxTt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrRYA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJF4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJk4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJOIjKt3hKA4hKt3hYt3hKtXWPt3hKtLTPPgkKHYjKuEjYg4BUF4hdAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySr4hKt3BQt3hKt.kKt3hKtPjKt3hKPUjKzDjKh4BUF4hKt3hKt3hKt3RN4kjKt3hKB4hKt3BQt3hKt3RPt3hKtLUPPokKtcjKqEjKt3hKt3hKt3hYqXlPt3hK14hKt3hKA4hKt3BSt3hKt.ETtnlQtfWPt3hKt3hKt3hKlshZB4hKt3RPt3hKtDjKt3hKP4hKt3hYP4BQF4RdAYmXt3hKt3hKt3hKtLySv4hKt3BUt3hKt.kKt3hKtXjKt3hKPUjK3EDTY4BRF4hbAAUVt3hKt3hKt3hKtLySw4hKt3BVt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxJA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJH4hKt3BQt3hKt3hPt3hKtfjKt3hKLUjKtEDTY4hcF4BaA4BRtPEQtDUPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7jbt3hKtPjKt3hKP4hKt3hKD4hKt3hcD4BTA4BRtXVQt3hKt3hKt3hKtjyTK4hKt3hPt3hKtPjKt3hKtDjKt3hKLEjKT4hKB4RVA4hKt3hKt3hKtX1JyHjKt3hct3hKt3RPt3hKt.kKt3hKtHkKtTjKl4hKV4hKt3hKt3hKt3xLOUmKt3hKP4hKt3BTt3hKt3BQt3hKtXFQt.UPtfjKlUjKt3hKt3hKt3hK4LDSt3hKtTjKt3hKD4hKt3hYA4hKt3hUAYWXtXmQt.SPPElKTYjKt3hKt3hKt3hK4LESt3hKtXjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqTlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJq7jPt3hKtDjKt3hKl4hKt3hcA4hKt3BTAAUVtPjQtDWPtfjKTQjKQEDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOgmKt3hKD4hKt3BTt3hKt3BRt3hKt3RQtrVPPgkKxYjKl4BTL4hKB4BVA4hKt3hKt3hKtX1JLMjKt3hYt3hKt3RPt3hKtXlKt3hKtPkKTYjKmEjcZ4hKB4xct3BRtnVQt3hKt3hKt3hKtjyPM4hKt3xPt3hKtPjKt3hKtHjKt3hKPEDTY4BQF4RbA4BRtfzPtXlKtXkKt3hKt3hKt3hKy7TLt3hKt.kKt3hKP4hKt3hKI4hKt3hKE4xZAAEVtHmQtXlKlwjKtHjKYEjKH4hKt3hKt3hKt3xLOIiKt3hKT4hKt3BTt3hKt3hPt3hKtPTQtbmKt3hKt3hKt3hKlsBUC4hKtXVPt3hKtDjKt3hKH4hKt3BTT4BRC4hKt3hKt3hKt3RNC4jKt3hKG4hKt3BQt3hKtXVPt3hKtXUP1ElK1YjKvDDTg4BUF4hKt3hKt3hKt3RNS4jKt3hKH4hKt3BQt3hKt3hPt3hKtfjKt3hKPUjKmEjKg4hbF4hYtXWUtPjQt3VPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7TMt3hKtPjKt3hKP4hKt3hKE4hKt3hdD4RcAA0Xt.0Qt3VPt3hKt3hKt3hKlshbC4hKtXlKt3hKtDjKt3hKl4hKt3BTS4xMF4hZAY2XtXlQtrVPPkkK1YjKt3hKt3hKt3hK4LzSt3hKtLjKt3hKD4hKt3hKA4hKt3xTAAkVt31QtrVPt3hKt3hKt3hKlshdC4hKt3RPt3hKtDjKt3hKX4hKt3hYP4BRG4xaAYWVtXlQtnWPt3hKt3hKt3hKlsxLC4hKt.UPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrhQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRYt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxSB4hKt3RPt3hKtXlKt3hKlEjKt3hKPEjKZ4BQF4RdAAUVtfzQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlsxMC4hKt.kKt3hKtDjKt3hKP4hKt3hYT4BQF4hdAAUVt3hKt3hKt3hKtLyStDjKt3BRt3hKt.kKt3hKtbjKt3hKyPjK0EjKi4BSF4haAAUVtvzQt3hKt3hKt3hKtjyPR4hKt3xPt3hKtPjKt3hKPEjKt3hKCEjcg4hcF4RcAYlXt3hKt3hKt3hKtLySAEjKt3BTt3hKt.kKt3hKtjjKt3hKLUjKxDDTY4BUF4hcA4BRtnGQt7VPlElKt3hKt3hKt3hKy7zPA4hKtPkKt3hKP4hKt3hKI4hKt3BSE4hLAAUVtPkQtXWPtfjK5QjKmEjKj4hKt3hKt3hKt3xLOQTPt3hKX4hKt3BTt3hKt3hQt3hKtfTQtTWPtLlKDYjK5EDTY4hKt3hKt3hKt3xLOITPt3hKh4hKt3BTt3hKt3xQt3hKt.EQtfWPPQlK2HjKWEDTY4BTG4hKt3hKt3hKt3RNoEkKt3hKH4hKt3BQt3hKt3hPt3hKtbjKt3hKXQjKxEDTX4xLF4RaAAUVtfzQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlshZD4hKt.kKt3hKtDjKt3hKP4hKt3hYT4BQF4hdAAUVt3hKt3hKt3hKtLySJEjKt3BRt3hKt.kKt3hKtPjKt3hKLUjKzDjYg4BSF4hKt3hKt3hKt3RN4MkKt3hKC4hKt3BQt3hKtXVPt3hKtLUPtLlKDYjK5EDTZ4BSF4hKt3hKt3hKt3RN4IkKt3hKD4hKt3BQt3hKt.UPt3hKtPTPPkkKtbjK5EjKZ4hKt3hKt3hKt3xLOwTPt3hKT4hKt3BTt3hKt3RQt3hKtvDQtTWPtDlK2XjK3EjKt3hKt3hKt3hYqnGQt3hKlEjKt3hKA4hKt3BVt3hKtXFUtbiQtnWPPgkKPcjKqEjKt3hKt3hKt3hYqLCQt3hK1EjKt3hKA4hKt3hXt3hKt3RTtfzQtPSP1sjKhUjKqEjKi4hKt3hKt3hKt3xLOEUPt3hKl4hKt3BTt3hKt3BRt3hKtHlKt3hKtTkKHcjKqEDTg4xMF4hbAYWXtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjSZT4hKt3RPt3hKtPjKt3hKtDjKt3hKREDTX4BTG4xZA4hKt3hKt3hKtX1JLUjKt3hYt3hKt3RPt3hKt.kKt3hK1QkKpcjKzEjcX4hKt3hKt3hKt3xLOUUPt3hKL4hKt3BTt3hKt3RRt3hKtnFQtPWPtLlKTYjKzEjch4hZF4hdAAEYt3hKt3hKt3hKtLySTEjKt3BTt3hKt.kKt3hKtXjKt3hKLUjK5EDTY4BRG4xZAYWXt3hKt3hKt3hKtLySVEjKt3BUt3hKt.kKt3hKtTjKt3hKhUjKuEjKY4BTG4haA4hKt3hKt3hKtX1JhUjKt3hYA4hKt3RPt3hKtfkKt3hKPAkKPcjK5EDTX4BSF4RbA4hKt3hKt3hKtX1JlUjKt3hcA4hKt3RPt3hKtPkKt3hKtDkKTYjKoEDTX4hZG4hKt3hKt3hKt3RNSYkKt3hKH4hKt3BQt3hKt3hPt3hKtXjKt3hKHUjKqEjYi4BUF4BdAYFVtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjSZV4hKt3RPt3hKtPjKt3hKtDjKt3hKTEDTZ4hdF4xZA4hKt3hKt3hKtX1J5UjKt3hYt3hKt3RPt3hKtfkKt3hKlAkKHcjKuEjcY4hYF4hdA4hKt3hKt3hKtX1J1UjKt3hct3hKt3RPt3hKtfkKt3hKtTkKHcjKqEjYX4hcF4xZA4hKt3hKt3hKtX1JyTjKt3hKA4hKt3RPt3hKtHlKt3hKtDkKHcjKzDjcK4hXE4xZA4xXt3hKt3hKt3hKtLySgEjKt3BUt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrRcA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJG4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJo4hKt3BTt3hKt3BRt3hKtnlKt3hKtPkKLcjKzDjKH4BTD4xZA4RXtPjQtPSPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7TYA4hKtPjKt3hKP4hKt3hKD4hKt3BTE4xaAAUXtPkQt3hKt3hKt3hKtjyTX4hKt3hPt3hKtPjKt3hKtHjKt3hKFEDTY4BUF4hZAYFVtPjQtjVP1okKt3hKt3hKt3hKy7jZA4hKtvjKt3hKP4hKt3hKG4hKt3BRE4xZAY1XtPkQtfWP1IlKTYjKt3hKt3hKt3hK4jFVt3hKtPjKt3hKD4hKt3hYA4hKt3xTA4xXtPkQtfWPPkkK2XjKt3hKt3hKt3hK4jWVt3hKtTjKt3hKD4hKt3hYA4hKt3BQAAUVt.0Qt.SPlElKTYjKt3hKt3hKt3hK4jGVt3hKtXjKt3hKD4hKt3BTA4hKt3BTAAkVt.0QtjVPtnkKt3hKt3hKt3hKy7zZA4hKtHlKt3hKP4hKt3hKG4hKt3BTD4BdAAEYtbiPtbUPPkkKPcjKt3hKt3hKt3hK4LDVt3hKtfjKt3hKD4hKt3hKB4hKt3RRt3hKtvDQt3VPlIlKtHjKDEDTY4hcF4xYAAEYtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjSdg4hKt3RPt3hKtPjKt3hKtDjKt3hKTEDTZ4hdF4xZA4hKt3hKt3hKtX1JlYjKt3hYt3hKt3RPt3hKtfkKt3hKtLkK2XjKl4hcP4BUG4hdA4hKt3hKt3hKtX1J5YjKt3hct3hKt3RPt3hKtfkKt3hKtHkKpYjKl4hcP4BUG4hdA4hKt3hKt3hKtX1J1YjKt3hKA4hKt3RPt3hKtXlKt3hKlEkKTYjKqEjKY4BRF4xYAYGVtHmQt3hKt3hKt3hKtjSdZ4hKt3RQt3hKtPjKt3hKtHjKt3hKMEjcg4BTF4hYtXFUtPjQtnWPPkkKt3hKt3hKt3hKy7zcA4hKtfkKt3hKP4hKt3hKI4hKt3hdD4RcA4RVt3hPtPTPPkkKtbjK5EjKZ4hKt3hKt3hKt3xLOAWPt3hKh4hKt3BTt3hKt3xQt3hKt.EQtfWPPQlK2HjKWEDTY4BTG4hKt3hKt3hKt3RNCIlKt3hKH4hKt3BQt3hKt3hKt3hKtDjKt3hKPoGUIQCQi4hKt3xXg4hKt3hKt3hKP4hKt3hKt0zUZQWQt3hKt3hKt3hKtHDbvA2YYgScOUFUsM1TwgESrMTPxDCbA4hKt3hKt3hKD0TUR4TTG4hKt.kKt3hKtPkVt3hKt3hKt3hKQM0ZpMUdA4hKtPjKt3hKtXjKt3hKt3hKt3BT5QURzPkKt3hKtDjKt3hKD4hKt3BTt3hKt3RPXkDQt3hcVYjKt3hPXkDQt3hQt3BQtfTQL4hV4sFag4xXt.kKtbVR4TTL4M1c4LDQzfTU0HTZ3PCdkEFVtPTQl4hctPTSUIkSAoGRlUlct3RPt.UXt.UXlYFTtHTPAgDQtHjKtzjPyLDSEQzUWICchcTaHkDLpAGdU8DSzYVSZkWRA4VatbSStfiPybkXFAUZDYFdO4hPWYlKt3RQtfmKAY2TCYFTtfjKl4xX4kzQhUzYSMkQ3vDRKAkK0klKt3RRtfWPIciZisVRGkEdqw1XqkkKHwDU1EEdU0VXss1QPkDVlE0YQczXqkzQBYFSmQDREwlXpE0UXI2bF4hKtLySt3hK0DTPt3hcCgmKt3hKHMDRtXlKA4xLt3hKPElKD4hPtPkct3hQt3hYHAUYtf2RtzjKP4hKtfjY43BTt3xMDQjYpAkKt3BTlwjKyvjKtfTXAo2QlUmKtfjKy7TVH4Da431SWMmK3ckKt3hcC4hQtHDRAUTYtf2PtfSQt3xP38jKMojct3hK4X1MWEjKt.UdLkmbOYFV14xJtkEaY4BdI4RcCEjK4jFS4L2RXckKt3hYLclKnY0YMYlXtHjY2LTQqfkbOMzTrgmKiEDTt3BdDYVPtX2QtPjKlImKPEWPF4hYx4BVC4BQt3xbt.kKtnmYtDjK18jK5EjKM4xLC4hK18jK5EjKM4hct3hdB4xSt.kKtbiPtTlKP4hK43xRtPjKtfiKyLjKtfzSDECblIjKt3RQ34hKlIFR0EjYnYFSt.kKtnGctX1RHMEQ5kkKy4BTC4RNE4hYtX1JtEEVzfSZp4VVGgTXAwjKl8jcM4BNEA0Pt3xLlQ2SPsjKtPkYLYDTG4hdn4hKN41Rt3RSl4DRtnkP3EjKXkDRC4hdK4BNIAkKtXlblciKP4hK5wjKM4BTg4BQt3xbtLyRyQjKt3BdgYVc2slK3bDTt3hdA4RStLiMhkDRtHFTtDDS14BQTAkKAwjTyMDR14BQH4BRQYlYtHDVtDjQpYlKBgjKHQkKB4hYDEjQpgCUOgCR54BMlMjKZ4BTHMictPkRT4hK5Mjc4XzLlcyRLolLtHjKPMiKF4hKy7DVE4hRt3hdI41QtP2Qt3hYyXVZ1kjKtszLHQTPyTiKlEzJCAkKqrRYtrxPREiYH4BVt3BZzXlPtLiPt4xLE4hYt3hKtDjYuITPt3hcF0jKy.kUJolYB4BUvjDSrkkP2jVX54RLCYVZt3xPt7lcvj2PHMDTtT2a1ASZ33BdA4hcCMyPtHjckEDYqj0Zm4hUY8jZtrFNHk0SDQjYvLUTBoFV0jmSTAGMt4RTxfmXqMTVBQDRtLySB4hY5Mzbt3hYNgWcEgjdP4hKX41PMMiKU4lbPQzLlcDMBQjKtHjRQ4jKtTkPv3hKYwjZC4hYBY1cH4hKtLSPlsFQt.0PAIzQDMSdPgjKPokY33hKI4hZSMETMgUTkoVctPWXQYSZ0fiQQ0zMzfEQxYGLnEkKKslKH4hYlY1YngjTW4hYqLCNQczXDAEQnYlKRUDYjITT4QTMOQDVL4BUFIjKt3RMCgVRloFMAUzRTE1J1wTcLQmPPMjKVYzPTY2RsY2PPwjblEzMMMyRqHWS0kFLCkFZkwDVP4BQE4xSlgTSA4hYlMjYM4xT24hQpIlR0DjQEMDT0.2b5MjcT4xMAMjZtfCNScDRvDDUjY1U14hRTgVPAESZOojXi8jLzXSalE0PXQjPDkjKqMDVLgEUjY1PtLjKqEjKt3hPtrDRlkSNuA2SYIESXsBTHYGbEg2UnQkbt3TdLMkYMY2QFYFb2sTMSg0ZCAyS5wTd2jiZxMVN1jWckAGLOMESH4xJPoGZLcyPA0DRtLTb0jFTlUULO4VckozJxIlaE4BaOcEV1MzbHU2S0kzcPsBTj8VX2j1ZCMmdOQGYT4xJpE2QE4BQZ0zMSITMPsDZ4.URFQDNoIiZXg2SlYVMDkCS1oTa3jlM2fScOMFNt4xJHQDVEcyTxg2Ytfkat3TPDIDYBwjKtjmYyjDTC4BUFYlKtDDUIQjKtLSYPslPD4hK1czLCYmKlkkK14hKiEjKtPULx4BRHMSR5EjaDEjSAkkKtHlYYgGRPIDQtXFRn4RaYwVVtEDLtzTdLMVPCEyRGIWXVQlPL4hKt.mclMDTF4RPt3Vaz3hKt3VVrE0QxwVVwnlcBwTdLkWNKgzStHjKA4hS1Y1XCAkKLYFaY4TZ1Y1PtLjKA4BRsEjKLg1Mh4hcDQDTUwjcO8jdnQ0YGYmKGIlM2LFNoEiSk01SlMETF4xXFgEZXYVMrQDLOgiTxPjYWA0Ql8lPHYUPj4RVtPzPtzjKH0VPHIjYh4xLH4BTtnVTFMCRHEzLP4BTtnVTVgTYtPWQtvjKYo1YBojYgcFRlMkKt3BTFgjKt3TPP4BcE4BStjEdDMESlE1YHYVPt.EUAYGSlolKt.UPJ4hYt4xLl4hKtfmKB4hYqDzRl4lPyXlbBMSaA4hKqLTNE4BT3Y1Pt.kKHAEaHgUQtLUTAglPBY2TtfDVBs1Pt3hK1sjdY4TY3IjYPcFTWEDdAIDQt3xPtnkPlgkKHIjKBQjPm8jYI4BTtXlYDYVRxQzMtvlYtDDVP4hKrYlKA4hcA4xSAAkKtf0QtPyPtkjKnEjYH4BTP4BdmYFatLiR2PjKtfEZAYVLAMiV4PzLKEjKtDkKJU0PxwVXmkjUHAmKN4hKD4hYt3hPt3hZQAUXtHjKCwjQiQ2ZVMkZEAEQs4hPCYlKtjjYAQjKt3RMHQiQt3lPIkCQOQjKi4BRj4hc5QTcl8zcJYlLO4hYsojKt3hTHk1PD4xPLckVvLFaPolKtTCZKYVTt3lPHgkKPYjYLYGRuETLtjFRHgkKhYWV1EkLXkUTUMUQAQzPKomYXsVUX4hKt3hKt3hKt3BQt3hKt3hKA4hKt3hKt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4CLtvyKIUDYoQ2Pu4Fcx8FarUlb9vyKVMEUy.Ea0cVZtMEcgQWY9.."
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
										"blob" : "11849.VMjLg.jK...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fyM2PiKFkjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3hKn8VTz.iPIQFM5gFbncjQI4Db1.SVI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKtnWQB4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKrYUXxgzanEzSxo2ZOkiXxbzQEIGUvXjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtfjKt3hKD4hKt3hYB4hKt3xctX1RtfzPtPmKtvjKyHjK24hKL4BQC4hct.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKtfkbt3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hKDUTNz4xMIozcwLEMVMWbEkGc0HjYsslPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3hKB4hKt3BRAAEVtfzQtnVPtLlKDYjKxEjcZ4hct3hKt.ETtLiQtnVPlIlKTYjKl4BTQ4BTG4hdAAUVtnmQtbVPlQjKt3hKNEDTX4BTG4xaAY1XtPkQtXlKPIkKyXjK4EjKi4BRG4BLAAUXtPkQtPWPtLlKLcjKt3hKt3hKt3hKtX2JqrxJq3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKP4hKt3hKA4hKt3BRt3hKtXmKt3hKtXTPPMkKlMjKQ4hKt3BTE4BdAAEVtLiQtjWPPokKTYjKzEjKi4hKB4RPA4xXt.0QtbVP1gkKxYjK4EDTB4hKt3xRt3hKtPDQtfWPtHlKTYjKsEjcY4hZF4xYA4xXtPkQtnVPtDjKt3hKBEDTX4BSG4RdA4xPt3hKtPTPPokKhYjKuEjKi4BQF4hbA4BRtfDQtbVP1IlKLcjKN4hKt3BTD4xaAYWVtnlQtnWPPgkK1YjKl4hcQ4BUG4xaA4xXtPjQtfWP14hKt3hKDEjYh4hZG4hQt3hKtHFQt.SPPokKPcjKmEjYh4hat3hKt.0TtbiQtPWP1ElKtbjKtEjcg4xLF4xaAYGVtnlKt3hK1QkKpcjKzEjKi4hYF4xZA4xXtnlQtjVPtLjKt3hKTEDTY4hdF4hcAYWXtnmPtjWPPQlKyXjKoEDTY4BTF4hKt3hKtHlKt3hK1EjKt3hKhEjKP4BSF4RcA4RXtbiQtfWPP4hKt3hK14BTD4hKt3hXA4BTt.kQtrVPlMlKpYjKoEDTY4BTG4BMA4hXtPkQtvVPtDlKDYjKsEjch4BQt3hKt.EStHmKt3hKtbkKtPjK4Ejcg4BUG4BcA4RVt.0QtPSPtHlKTYjKA4hKt3hKC4xQt3hKtXWQt3RPtLlKTYjKyEjKh4xMF4RPt3hKt3xPtXjKt3hK1UjKtDjYi4BUF4BdA4RXtfkKt3hKPwjKyHjKx3hYK4BQC4hdtXVPt3hKtHVPt.kKXcjKqEjYh4hdF4hQt3hKtPzPtPmK10jKyHjK24hKM4hXt3hKt3xUt3BQtDSPPokKLcjKuEjYX4BQt3hKt3BStPjKt3hKt3hKt3hKB4hKt3BT5QURzPEYt3hKt.kXA4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hK4UzYyLGZ4rjUBolaSsFcBUmVPgyLBQWQt3hKt3hKt3BQMUkTNs1Qt3hKP4hKt3hKX4hKt3hKt3hKt3RTSslZSEjKt3hKD4hKt3BTt3hKt3RPt3hKtPjKt3hKPYjKt3hKA4hKt3BVt3hKtXVPt3hKtPUPPokK5YjKnEjYh4BUF4RPt3hKtXlKt3hKtHkKDYjK3EDTg4xMF4BcAAkVtvjQt3hKt3hKt3hKtjSZt3hKt3RPt3hKtPjKt3hKlEjKt3hKDEDTY4BTG4BLAYVXtPkQt3hKt3hKt3hKtjSdt3hKt3hPt3hKtPjKt3hKlIjKt3hKBEjYh4hZF4RaA4hVt.0QtPWPPkkKLcjK4EjKt3hKt3hKt3hYqPjKt3hK14hKt3hKA4hKt3hXt3hKt.UTtLiQtDSPtfjKDQjKyEjKi4hKt3hKt3hKt3xLOQjKt3hKP4hKt3BTt3hKt3BRt3hKtfUQtrVPtDlK2XjKoEDTZ4BTG4BMA4hKt3hKt3hKtX1JT4hKt3BTA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJF4hKt3BQt3hKtXlKt3hKtHjKt3hKXQjKXEDTt3hKt3hQt3hKtPDQtLWP1ElKTcjKzEjKi4hKt3hKt3hKt3xLOokKt3hKD4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJ04hKt3hKA4hKt3BTt3hKt3hPt3hKtPUPPokK5YjKnEjKH4BUD4BcAY1XtPjKt3hKlEjKt3hKAEjKi4BTG4xYAYGVtHmQt3hKt3hKt3hKtjSZA4hKt3RPt3hKtPjKt3hKPEjKt3hKDEDTY4BSF4xYAAEYt3hKt3hKt3hKtLySG4hKt3BRt3hKt.kKt3hKtbjKt3hKLUjKvDjch4BTG4xYAAkVtLiQt3hKt3hKt3hKtjyPB4hKt3xPt3hKtPjKt3hK1EjKt3hKREDTY4hcF4xZAAEVtvzQtrVPt3hKt3hKt3hKlshZt3hKt3RPt3hKtDjKt3hKP4hKt3hcA4hKt3RPAAUXt3xQtXlKPEkKyXjKwDDTt3hKt3xQt3hKtPDQtnWPtLlKDYjKoEjcZ4hKB4hKt3hKt3hKt3RNSQjKt3hKA4hKt3BQt3hKt.UPt3hKtPTPPkkKLYjKmEDTj4hKt3hKt3hKt3xLOIkKt3hKH4hKt3BTt3hKt3xQt3hKtvTQt.SP1IlKPcjKmEDTZ4xLF4hKt3hKt3hKt3RN4QjKt3hKC4hKt3BQt3hKtXWPt3hKtHUPPkkK1YjKqEDTX4BSG4xZA4hKt3hKt3hKtX1JPEjKt3hKA4hKt3RPt3hKt.kKt3hKlEjKt3hKOEDTi4BTG4hcAA0Xt.0QtDjKt3hKX4hKt3hYU4xMF4hbAA0XtnmQtrVPt3hKt3hKt3hKlsxLt3hKt.kKt3hKtDjKt3hKl4hKt3hYU4BUF4hbAYWXtvjQt7VPtLlKpcjKt3hKt3hKt3hK4LDQt3hKtHjKt3hKD4hKt3BTB4hKt3xTA4xXtfzQtXlK1UkKpYjKpEjKi4hYF4hKt3hKt3hKt3RN4MjKt3hKC4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJS4hKt3BTt3hKt3BQt3hKtvjKt3hKtLkKXQjKOEDTt3hKt3BQt3hKtfTQtbVPtLlKTYjKt3hKt3hKt3hK4jlPt3hKtDjKt3hKD4hKt3hcA4hKt3hUAAkVtfjQtfWPPgkKPcjK0EjKt3hKt3hKt3hYqHmKt3hKl4hKt3hKA4hKt3BVt3hKt3RUtnlQtLWPlgkKHcjKqEjKt3hKt3hKt3hYqXmKt3hK14hKt3hKA4hKt3hXt3hKt3RUtfzQtrVPPElK2XjKxEjcg4hKt3hKt3hKt3xLO0jKt3hKP4hKt3BTt3hKt3BQt3hKtvjKt3hKPAkKHcjK1EDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOgjPt3hKD4hKt3BTt3hKt3BQt3hKtvTQtnWPPkkKtbjKt3hKt3hKt3hK4L0Zt3hKtHjKt3hKD4hKt3hKA4hKt3xQAAEVt.0QtrVPt3hKt3hKt3hKlshZH4hKtXmKt3hKtDjKt3hKh4hKt3hcT4hYF4BLAYVVtfkQtHWPPkkKt3hKt3hKt3hKy7TSB4hKt.kKt3hKP4hKt3hKD4hKt3BUt3hKt.0TtbiQtfWPtHlKlYjKA4hKt3BQt3hKt3hUt3hKt3hKt3hKtLySU4hKt3BQt3hKt.kKt3hKtDjKt3hKpUjKt3hKt3hKt3hK4jVQt3hKtHjKt3hKD4hKt3BTA4hKt3hTAYVXt.kQtXlKtXkKt3hKt3hKt3hKy7zUt3hKtvjKt3hKP4hKt3hKE4hKt3BRE4BcA4RVt3hPtjUPt3hKt3hKt3hKlshYA4hKt3RPt3hKtDjKt3hKH4hKt3hYA4hKt3RSAAEVtvzQtnWPPkkKHcjKA4hKt3BVt3hKtX2TtP0QtnWPtHlKTcjK5EjKt3hKt3hKt3hYq.0Qt3hKP4hKt3hKA4hKt3BUt3hKt.kTtLiQtXWPPMlKPcjKt3hKt3hKt3hK4L0Xt3hKtHjKt3hKD4hKt3hYt3hKt3RQt3hKt3RQt7VPtLlKLYjKtEDTt3hKt3BQt3hKt.UQt.SPlElKTYjKt3hKt3hKt3hK4j1Xt3hKtDjKt3hKD4hKt3BTB4hKt3BUAYlXtPjQtPWP1IlKtbjK0Ejch4BUF4hKt3hKt3hKt3RN4MlKt3hKB4hKt3BQt3hKt.kKt3hKtXjKt3hKTUjKzEDTZ4BSG4RcAYVXtPjKt3hKlEjKt3hKDEDTY4BTG4BLAYVXtPkQt3hKt3hKt3hKtjyTj4hKt3RPt3hKtPjKt3hKP4hKt3hKE4hKt3hXD4hbAAkVt.kQtrVPP4hKt3hKD4hKt3BTE4xaAAUXtPkQt3hKt3hKt3hKtjSdk4hKt3RPt3hKtPjKt3hKl4hKt3hKG4hKt3BQE4BLAAEVtXmQt7VPtLlKpcjKA4hKt3BVt3hKt.ETtLiQtbVPtDlK2XjKsEjKt3hKt3hKt3hYq3BRt3hKP4hKt3hKA4hKt3hXt3hKt3RTtnlQtzVPPokKPcjKmEjKg4hKt3hKt3hKt3xLOQjPt3hKH4hKt3BTt3hKt3BRt3hKtPkKt3hKtDkKHcjKuEjYi4BUF4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JyDjKt3BTt3hKt3RPt3hKtPkKt3hKtDkKHcjKuEjYi4BUF4hKt3hKt3hKt3RN4cjKt3hKB4hKt3BQt3hKt3RPt3hKtPUP1ElKyXjKqEjKt3hKt3hKt3hYq3hPt3hK14hKt3hKA4hKt3BTt3hKtXFTtPjQtjWP1IlKt3hKt3hKt3hKy7zYt3hKt.kKt3hKP4hKt3hKG4hKt3BVE4RcA4RXtP0QtLWPPkkKtHjKt3hKt3hKt3hK4jFRt3hKtTjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqDlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqrRPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrBRt3hKtPjKt3hKtHjKt3hKD4hKt3BTE4BLAYFVtPkQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlsBSB4hKt.kKt3hKtDjKt3hKX4hKt3hYU4xMF4hbAA0XtnmQtrVPt3hKt3hKt3hKlsBUB4hKtXlKt3hKtDjKt3hKT4hKt3hKQ4BRG4xaAY1XtPkQt3hKt3hKt3hKtjyPI4hKt3xPt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrxTt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrRYA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJF4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJk4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJOIjKt3hKA4hKt3hYt3hKtXWPt3hKtLTPPgkKHYjKuEjYg4BUF4hdAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySr4hKt3BQt3hKt.kKt3hKtPjKt3hKPUjKzDjKh4BUF4hKt3hKt3hKt3RN4kjKt3hKB4hKt3BQt3hKt3RPt3hKtLUPPokKtcjKqEjKt3hKt3hKt3hYqXlPt3hK14hKt3hKA4hKt3BSt3hKt.ETtnlQtfWPt3hKt3hKt3hKlshZB4hKt3RPt3hKtDjKt3hKP4hKt3hYP4BQF4RdAYmXt3hKt3hKt3hKtLySv4hKt3BUt3hKt.kKt3hKtXjKt3hKPUjK3EDTY4BRF4hbAAUVt3hKt3hKt3hKtLySw4hKt3BVt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxJA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJH4hKt3BQt3hKt3hPt3hKtfjKt3hKLUjKtEDTY4hcF4BaA4BRtPEQtDUPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7jbt3hKtPjKt3hKP4hKt3hKD4hKt3hcD4BTA4BRtXVQt3hKt3hKt3hKtjyTK4hKt3hPt3hKtPjKt3hKtDjKt3hKLEjKT4hKB4RVA4hKt3hKt3hKtX1JyHjKt3hct3hKt3RPt3hKt.kKt3hKtHkKtTjKl4hKV4hKt3hKt3hKt3xLOUmKt3hKP4hKt3BTt3hKt3BQt3hKtXFQt.UPtfjKlUjKt3hKt3hKt3hK4LDSt3hKtTjKt3hKD4hKt3hYA4hKt3hUAYWXtXmQt.SPPElKTYjKt3hKt3hKt3hK4LESt3hKtXjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqTlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJq7jPt3hKtDjKt3hKl4hKt3hcA4hKt3BTAAUVtPjQtDWPtfjKTQjKQEDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOgmKt3hKD4hKt3BTt3hKt3BRt3hKt3RQtrVPPgkKxYjKl4BTL4hKB4BVA4hKt3hKt3hKtX1JLMjKt3hYt3hKt3RPt3hKtXlKt3hKtPkKTYjKmEjcZ4hKB4xct3BRtnVQt3hKt3hKt3hKtjyPM4hKt3xPt3hKtPjKt3hKtHjKt3hKPEDTY4BQF4RbA4BRtfzPtXlKtXkKt3hKt3hKt3hKy7TLt3hKt.kKt3hKP4hKt3hKI4hKt3hKE4xZAAEVtHmQtXlKlwjKtHjKYEjKH4hKt3hKt3hKt3xLOIiKt3hKT4hKt3BTt3hKt3hPt3hKtPTQtbmKt3hKt3hKt3hKlsBUC4hKtXVPt3hKtDjKt3hKH4hKt3BTT4BRC4hKt3hKt3hKt3RNC4jKt3hKG4hKt3BQt3hKtXVPt3hKtXUP1ElK1YjKvDDTg4BUF4hKt3hKt3hKt3RNS4jKt3hKH4hKt3BQt3hKt3hPt3hKtfjKt3hKPUjKmEjKg4hbF4hYtXWUtPjQt3VPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7TMt3hKtPjKt3hKP4hKt3hKE4hKt3hdD4RcAA0Xt.0Qt3VPt3hKt3hKt3hKlshbC4hKtXlKt3hKtDjKt3hKl4hKt3BTS4xMF4hZAY2XtXlQtrVPPkkK1YjKt3hKt3hKt3hK4LzSt3hKtLjKt3hKD4hKt3hKA4hKt3xTAAkVt31QtrVPt3hKt3hKt3hKlshdC4hKt3RPt3hKtDjKt3hKX4hKt3hYP4BRG4xaAYWVtXlQtnWPt3hKt3hKt3hKlsxLC4hKt.UPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjSdqrxJqrhQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRYt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxSB4hKt3RPt3hKtXlKt3hKlEjKt3hKPEjKZ4BQF4RdAAUVtfzQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlsxMC4hKt.kKt3hKtDjKt3hKP4hKt3hYT4BQF4hdAAUVt3hKt3hKt3hKtLyStDjKt3BRt3hKt.kKt3hKtbjKt3hKyPjK0EjKi4BSF4haAAUVtvzQt3hKt3hKt3hKtjyPR4hKt3xPt3hKtPjKt3hKPEjKt3hKCEjcg4hcF4RcAYlXt3hKt3hKt3hKtLySAEjKt3BTt3hKt.kKt3hKtjjKt3hKLUjKxDDTY4BUF4hcA4BRtnGQt7VPlElKt3hKt3hKt3hKy7zPA4hKtPkKt3hKP4hKt3hKI4hKt3BSE4hLAAUVtPkQtXWPtfjK5QjKmEjKj4hKt3hKt3hKt3xLOQTPt3hKX4hKt3BTt3hKt3hQt3hKtfTQtTWPtLlKDYjK5EDTY4hKt3hKt3hKt3xLOITPt3hKh4hKt3BTt3hKt3xQt3hKt.EQtfWPPQlK2HjKWEDTY4BTG4hKt3hKt3hKt3RNoEkKt3hKH4hKt3BQt3hKt3hPt3hKtbjKt3hKXQjKxEDTX4xLF4RaAAUVtfzQtDjKt3hKX4hKt3hcS4xLF4RctX2TtfkQtvVPt3hKt3hKt3hKlshZD4hKt.kKt3hKtDjKt3hKP4hKt3hYT4BQF4hdAAUVt3hKt3hKt3hKtLySJEjKt3BRt3hKt.kKt3hKtPjKt3hKLUjKzDjYg4BSF4hKt3hKt3hKt3RN4MkKt3hKC4hKt3BQt3hKtXVPt3hKtLUPtLlKDYjK5EDTZ4BSF4hKt3hKt3hKt3RN4IkKt3hKD4hKt3BQt3hKt.UPt3hKtPTPPkkKtbjK5EjKZ4hKt3hKt3hKt3xLOwTPt3hKT4hKt3BTt3hKt3RQt3hKtvDQtTWPtDlK2XjK3EjKt3hKt3hKt3hYqnGQt3hKlEjKt3hKA4hKt3BVt3hKtXFUtbiQtnWPPgkKPcjKqEjKt3hKt3hKt3hYqLCQt3hK1EjKt3hKA4hKt3hXt3hKt3RTtfzQtPSP1sjKhUjKqEjKi4hKt3hKt3hKt3xLOEUPt3hKl4hKt3BTt3hKt3BRt3hKtHlKt3hKtTkKHcjKqEDTg4xMF4hbAYWXtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjSZT4hKt3RPt3hKtPjKt3hKtDjKt3hKREDTX4BTG4xZA4hKt3hKt3hKtX1JLUjKt3hYt3hKt3RPt3hKt.kKt3hK1QkKpcjKzEjcX4hKt3hKt3hKt3xLOUUPt3hKL4hKt3BTt3hKt3RRt3hKtnFQtPWPtLlKTYjKzEjch4hZF4hdAAEYt3hKt3hKt3hKtLySTEjKt3BTt3hKt.kKt3hKtXjKt3hKLUjK5EDTY4BRG4xZAYWXt3hKt3hKt3hKtLySVEjKt3BUt3hKt.kKt3hKtTjKt3hKhUjKuEjKY4BTG4haA4hKt3hKt3hKtX1JhUjKt3hYA4hKt3RPt3hKtfkKt3hKPAkKPcjK5EDTX4BSF4RbA4hKt3hKt3hKtX1JlUjKt3hcA4hKt3RPt3hKtPkKt3hKtDkKTYjKoEDTX4hZG4hKt3hKt3hKt3RNSYkKt3hKH4hKt3BQt3hKt3hPt3hKtXjKt3hKHUjKqEjYi4BUF4BdAYFVtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjSZV4hKt3RPt3hKtPjKt3hKtDjKt3hKTEDTZ4hdF4xZA4hKt3hKt3hKtX1J5UjKt3hYt3hKt3RPt3hKtfkKt3hKlAkKHcjKuEjcY4hYF4hdA4hKt3hKt3hKtX1J1UjKt3hct3hKt3RPt3hKtfkKt3hKtTkKHcjKqEjYX4hcF4xZA4hKt3hKt3hKtX1JyTjKt3hKA4hKt3RPt3hKtHlKt3hKtDkKHcjKzDjcK4hXE4xZA4xXt3hKt3hKt3hKtLySgEjKt3BUt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrRcA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJG4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJo4hKt3BTt3hKt3BRt3hKtnlKt3hKtPkKLcjKzDjKH4BTD4xZA4RXtPjQtPSPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7TYA4hKtPjKt3hKP4hKt3hKD4hKt3BTE4xaAAUXtPkQt3hKt3hKt3hKtjyTX4hKt3hPt3hKtPjKt3hKtHjKt3hKFEDTY4BUF4hZAYFVtPjQtjVP1okKt3hKt3hKt3hKy7jZA4hKtvjKt3hKP4hKt3hKG4hKt3BRE4xZAY1XtPkQtfWP1IlKTYjKt3hKt3hKt3hK4jFVt3hKtPjKt3hKD4hKt3hYA4hKt3xTA4xXtPkQtfWPPkkK2XjKt3hKt3hKt3hK4jWVt3hKtTjKt3hKD4hKt3hYA4hKt3BQAAUVt.0Qt.SPlElKTYjKt3hKt3hKt3hK4jGVt3hKtXjKt3hKD4hKt3BTA4hKt3BTAAkVt.0QtjVPtnkKt3hKt3hKt3hKy7zZA4hKtHlKt3hKP4hKt3hKG4hKt3BTD4BdAAEYtbiPtbUPPkkKPcjKt3hKt3hKt3hK4LDVt3hKtfjKt3hKD4hKt3hKB4hKt3RRt3hKtvDQt3VPlIlKtHjKDEDTY4hcF4xYAAEYtPjKt3hKlEjKt3hKOEjYg4xMB4xSAYVVtfkQt3hKt3hKt3hKtjSdg4hKt3RPt3hKtPjKt3hKtDjKt3hKTEDTZ4hdF4xZA4hKt3hKt3hKtX1JlYjKt3hYt3hKt3RPt3hKtfkKt3hKtLkK2XjKl4hcP4BUG4hdA4hKt3hKt3hKtX1J5YjKt3hct3hKt3RPt3hKtfkKt3hKtHkKpYjKl4hcP4BUG4hdA4hKt3hKt3hKtX1J1YjKt3hKA4hKt3RPt3hKtXlKt3hKlEkKTYjKqEjKY4BRF4xYAYGVtHmQt3hKt3hKt3hKtjSdZ4hKt3RQt3hKtPjKt3hKtHjKt3hKMEjcg4BTF4hYtXFUtPjQtnWPPkkKt3hKt3hKt3hKy7zcA4hKtfkKt3hKP4hKt3hKI4hKt3hdD4RcA4RVt3hPtPTPPkkKtbjK5EjKZ4hKt3hKt3hKt3xLOAWPt3hKh4hKt3BTt3hKt3xQt3hKt.EQtfWPPQlK2HjKWEDTY4BTG4hKt3hKt3hKt3RNCIlKt3hKH4hKt3BQt3hKt3hKt3hKtDjKt3hKPoGUIQCQi4hKt3xXg4hKt3hKt3hKP4hKt3hKt0zUZQWQt3hKt3hKt3hKtHDbvA2YYgScOUFUsM1TwgESrMTPxDCbA4hKt3hKt3hKD0TUR4TTG4hKt.kKt3hKtPkVt3hKt3hKt3hKQM0ZpMUdA4hKtPjKt3hKtXjKt3hKt3hKt3BT5QURzPkKt3hKtDjKt3hKD4hKt3BTt3hKt3RPXkDQt3hcVYjKt3hPXkDQt3hQt3BQtfTQL4hV4sFag4xXt.kKtbVR4TTL4M1c4LDQzfTU0HTZ3PCdkEFVtPTQl4hctPTSUIkSAoGRlUlct3RPt.UXt.UXlYFTtHTPAgDQtHjKtzjPyLDSEQzUWICchcTaHkDLpAGdU8DSzYVSZkWRA4VatbSStfiPybkXFAUZDYFdO4hPWYlKt3RQtfmKAY2TCYFTtfjKl4xX4kzQhUzYSMkQ3vDRKAkK0klKt3RRtfWPIciZisVRGkEdqw1XqkkKHwDU1EEdU0VXss1QPkDVlE0YQczXqkzQBYFSmQDREwlXpE0UXI2bF4hKtLySt3hK0DTPt3hcCgmKt3hKHMDRtXlKA4xLt3hKPElKD4hPtPkct3hQt3hYHAUYtf2RtzjKP4hKtfjY43BTt3xMDQjYpAkKt3BTlwjKyvjKtfTXAo2QlUmKtfjKy7TVH4Da431SWMmK3ckKt3hcC4hQtHDRAUTYtf2PtfSQt3xP38jKMojct3hK4X1MWEjKt.UdLkmbOYFV14xJtkEaY4BdI4RcCEjK4jFS4L2RXckKt3hYLclKnY0YMYlXtHjY2LTQqfkbOMzTrgmKiEDTt3BdDYVPtX2QtPjKlImKPEWPF4hYx4BVC4BQt3xbt.kKtnmYtDjK18jK5EjKM4xLC4hK18jK5EjKM4hct3hdB4xSt.kKtbiPtTlKP4hK43xRtPjKtfiKyLjKtfzSDECblIjKt3RQ34hKlIFR0EjYnYFSt.kKtnGctX1RHMEQ5kkKy4BTC4RNE4hYtX1JtEEVzfSZp4VVGgTXAwjKl8jcM4BNEA0Pt3xLlQ2SPsjKtPkYLYDTG4hdn4hKN41Rt3RSl4DRtnkP3EjKXkDRC4hdK4BNIAkKtXlblciKP4hK5wjKM4BTg4BQt3xbtLyRyQjKt3BdgYVc2slK3bDTt3hdA4RStLiMhkDRtHFTtDDS14BQTAkKAwjTyMDR14BQH4BRQYlYtHDVtDjQpYlKBgjKHQkKB4hYDEjQpgCUOgCR54BMlMjKZ4BTHMictPkRT4hK5Mjc4XzLlcyRLolLtHjKPMiKF4hKy7DVE4hRt3hdI41QtP2Qt3hYyXVZ1kjKtszLHQTPyTiKlEzJCAkKqrRYtrxPREiYH4BVt3BZzXlPtLiPt4xLE4hYt3hKtDjYuITPt3hcF0jKy.kUJolYB4BUvjDSrkkP2jVX54RLCYVZt3xPt7lcvj2PHMDTtT2a1ASZ33BdA4hcCMyPtHjckEDYqj0Zm4hUY8jZtrFNHk0SDQjYvLUTBoFV0jmSTAGMt4RTxfmXqMTVBQDRtLySB4hY5Mzbt3hYNgWcEgjdP4hKX41PMMiKU4lbPQzLlcDMBQjKtHjRQ4jKtTkPv3hKYwjZC4hYBY1cH4hKtLSPlsFQt.0PAIzQDMSdPgjKPokY33hKI4hZSMETMgUTkoVctPWXQYSZ0fiQQ0zMzfEQxYGLnEkKKslKH4hYlY1YngjTW4hYqLCNQczXDAEQnYlKRUDYjITT4QTMOQDVL4BUFIjKt3RMCgVRloFMAUzRTE1J1wTcLQmPPMjKVYzPTY2RsY2PPwjblEzMMMyRqHWS0kFLCkFZkwDVP4BQE4xSlgTSA4hYlMjYM4xT24hQpIlR0DjQEMDT0.2b5MjcT4xMAMjZtfCNScDRvDDUjY1U14hRTgVPAESZOojXi8jLzXSalE0PXQjPDkjKqMDVLgEUjY1PtLjKqEjKt3hPtrDRlkSNuA2SYIESXsBTHYGbEg2UnQkbt3TdLMkYMY2QFYFb2sTMSg0ZCAyS5wTd2jiZxMVN1jWckAGLOMESH4xJPoGZLcyPA0DRtLTb0jFTlUULO4VckozJxIlaE4BaOcEV1MzbHU2S0kzcPsBTj8VX2j1ZCMmdOQGYT4xJpE2QE4BQZ0zMSITMPsDZ4.URFQDNoIiZXg2SlYVMDkCS1oTa3jlM2fScOMFNt4xJHQDVEcyTxg2Ytfkat3TPDIDYBwjKtjmYyjDTC4BUFYlKtDDUIQjKtLSYPslPD4hK1czLCYmKlkkK14hKiEjKtPULx4BRHMSR5EjaDEjSAkkKtHlYYgGRPIDQtXFRn4RaYwVVtEDLtzTdLMVPCEyRGIWXVQlPL4hKt.mclMDTF4RPt3Vaz3hKt3VVrE0QxwVVwnlcBwTdLkWNKgzStHjKA4hS1Y1XCAkKLYFaY4TZ1Y1PtLjKA4BRsEjKLg1Mh4hcDQDTUwjcO8jdnQ0YGYmKGIlM2LFNoEiSk01SlMETF4xXFgEZXYVMrQDLOgiTxPjYWA0Ql8lPHYUPj4RVtPzPtzjKH0VPHIjYh4xLH4BTtnVTFMCRHEzLP4BTtnVTVgTYtPWQtvjKYo1YBojYgcFRlMkKt3BTFgjKt3TPP4BcE4BStjEdDMESlE1YHYVPt.EUAYGSlolKt.UPJ4hYt4xLl4hKtfmKB4hYqDzRl4lPyXlbBMSaA4hKqLTNE4BT3Y1Pt.kKHAEaHgUQtLUTAglPBY2TtfDVBs1Pt3hK1sjdY4TY3IjYPcFTWEDdAIDQt3xPtnkPlgkKHIjKBQjPm8jYI4BTtXlYDYVRxQzMtvlYtDDVP4hKrYlKA4hcA4xSAAkKtf0QtPyPtkjKnEjYH4BTP4BdmYFatLiR2PjKtfEZAYVLAMiV4PzLKEjKtDkKJU0PxwVXmkjUHAmKN4hKD4hYt3hPt3hZQAUXtHjKCwjQiQ2ZVMkZEAEQs4hPCYlKtjjYAQjKt3RMHQiQt3lPIkCQOQjKi4BRj4hc5QTcl8zcJYlLO4hYsojKt3hTHk1PD4xPLckVvLFaPolKtTCZKYVTt3lPHgkKPYjYLYGRuETLtjFRHgkKhYWV1EkLXkUTUMUQAQzPKomYXsVUX4hKt3hKt3hKt3BQt3hKt3hKA4hKt3hKt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4CLtvyKIUDYoQ2Pu4Fcx8FarUlb9vyKVMEUy.Ea0cVZtMEcgQWY9.."
									}
,
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
					"text" : "vst~ 2 2",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-236",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1780.0, 734.0, 100.0, 22.0 ],
					"text" : "loadmess 0.8"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-237",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1780.0, 762.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-238",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1840.0, 762.0, 60.0, 20.0 ],
					"text" : "volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-239",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1650.0, 762.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-240",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1715.0, 762.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-241",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1650.0, 794.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-242",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2200.0, 150.0, 440.0, 24.0 ],
					"text" : "5. ANSWERS  (Continuator MIDI)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-243",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "bang" ],
					"patching_rect" : [ 2200.0, 190.0, 65.0, 22.0 ],
					"text" : "t b s b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-244",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2270.0, 190.0, 260.0, 20.0 ],
					"text" : "right to left: stop + clear, load, play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-245",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2360.0, 222.0, 44.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-246",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2410.0, 222.0, 51.0, 22.0 ],
					"text" : "panic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-247",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2270.0, 222.0, 100.0, 22.0 ],
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-248",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2490.0, 250.0, 107.0, 22.0 ],
					"text" : "loadmess 1024"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-249",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2490.0, 278.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-250",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2550.0, 278.0, 220.0, 20.0 ],
					"text" : "tempo (1024 = normal, 512 = half)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-251",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 2200.0, 250.0, 58.0, 22.0 ],
					"text" : "f 1024"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-252",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2200.0, 278.0, 107.0, 22.0 ],
					"text" : "prepend start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-253",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "" ],
					"patching_rect" : [ 2200.0, 308.0, 40.0, 22.0 ],
					"text" : "seq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-254",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2490.0, 308.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
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
					"patching_rect" : [ 2490.0, 336.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-256",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2520.0, 336.0, 140.0, 20.0 ],
					"text" : "loop this layer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-257",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2490.0, 364.0, 72.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-258",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 2200.0, 340.0, 79.0, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-259",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2200.0, 400.0, 140.0, 22.0 ],
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
					"fontsize" : 13.0,
					"id" : "obj-260",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2360.0, 430.0, 200.0, 21.0 ],
					"text" : "MIDI SHAPER"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-261",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2360.0, 455.0, 86.0, 22.0 ],
					"text" : "loadmess 2"
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
					"patching_rect" : [ 2360.0, 483.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-263",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2420.0, 483.0, 120.0, 20.0 ],
					"text" : "octave shift"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-264",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2550.0, 483.0, 114.0, 22.0 ],
					"text" : "prepend octave"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-265",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2360.0, 515.0, 79.0, 22.0 ],
					"text" : "scale off"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-266",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2430.0, 515.0, 107.0, 22.0 ],
					"text" : "scale minpent"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-267",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2520.0, 515.0, 100.0, 22.0 ],
					"text" : "scale dorian"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-268",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2600.0, 515.0, 121.0, 22.0 ],
					"text" : "scale wholetone"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-269",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2700.0, 515.0, 93.0, 22.0 ],
					"text" : "scale major"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-270",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2550.0, 487.0, 170.0, 22.0 ],
					"text" : "loadmess scale minpent"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-271",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2360.0, 545.0, 86.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-272",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2360.0, 573.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-273",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2390.0, 573.0, 220.0, 20.0 ],
					"text" : "fold into one octave from base"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-274",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2620.0, 573.0, 100.0, 22.0 ],
					"text" : "prepend fold"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-275",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2360.0, 605.0, 93.0, 22.0 ],
					"text" : "loadmess 60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-276",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2360.0, 633.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-277",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2420.0, 633.0, 180.0, 20.0 ],
					"text" : "base note (60 = middle C)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-278",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2620.0, 633.0, 100.0, 22.0 ],
					"text" : "prepend base"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-279",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2360.0, 660.0, 100.0, 22.0 ],
					"text" : "loadmess 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-280",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2360.0, 693.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-281",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2420.0, 693.0, 180.0, 20.0 ],
					"text" : "keep % (thin out notes)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-282",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2620.0, 693.0, 100.0, 22.0 ],
					"text" : "prepend keep"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-283",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2360.0, 730.0, 100.0, 22.0 ],
					"text" : "r chain_key"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-284",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2460.0, 730.0, 93.0, 22.0 ],
					"text" : "prepend key"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-285",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2560.0, 730.0, 114.0, 22.0 ],
					"text" : "r chain_panic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-286",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2265.0, 622.0, 44.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-287",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2276.0, 649.0, 44.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-288",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2450.0, 670.0, 200.0, 20.0 ],
					"text" : "piano, bells or mallets"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-289",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 2200.0, 702.0, 120.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, 2, ";" ],
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
							"pluginname" : "Massive.vst3",
							"plugindisplayname" : "Massive",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "11297.VMjLgfAK...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fyL1.iKtIjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3BaLkiUHcGQxgDMDQmR5QCMzMkd0vVXI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKtX0JA4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKw3jZKIUbRQTQ1PEcMUDVpoUbss1YwXjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtbjKt3hKD4hKt3hYB4hKt3xctX1RtvzPtPmKtvjKyHjK34hKL4BTC4hdt.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKtXmat3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hK54xU3TSXSgTNxEkcRQzc1QCUhQkPOckPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3hcB4hKt3RPAYlXt3xQtXlKtTkKhcjKqEDTX4hbF4xZAYlXtLiKt3hKlIkKDYjKyEDTY4BSG4hYt3RUtXlQtTWPPElKtbjK4Ejcg4xLF4hTt3hKtLCQtbVPtLlKpYjKwDDTY4hKB4RRAYVXtvzQtnWPlIlKTcjKyEDTY4xLF4hdAYmXt3hKt3hKt3hKt3hKqrxJqrxPt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3RPt3hKtPjKt3hKl4hKt3hKG4hKt3hdD4xYAYmXtvzQt7VPlMlKTYjKN4hKt3hdD4xYAYmXtvzQt7VPlMlKTYjKl4BTQ4hYG4hcAY1Rt3hPtbmKPEjKt3hKJ4hKt3hKE4xZAYlXtvjQt.SP1IlKLcjKuEjYi4BUF4BTt3hKt3RQtrVPlIlKLYjKvDjch4BSG4xaAY1XtPkQtXlK1QkKpcjKzEjKi4hYF4RRt3hKt3RQtfWP1ElKLYjKqEjch4BSG4xZA4RVt3lKt3hK1QkKpcjKzEjKi4hYF4hYt.0TtnlQtjWP1gkKp4hKt3hcT4hZG4BcA4xXtXlQtrVPtLlKpYjKoEjKt3hKt3xQt3hKtHlKt3hKtbkKtPjKoEjcg4hcF4RcAYlXtPjKt3hKtvjKDEjKt3hKW4hKD4hZAAUVtf0Qt7VP1gkKTYjK5EDTj4hKG4xZAYVVtXmQtbVP1kkKLcjKA4hKt3BQC4xRt3hKtXWQt3RP1IlK2XjKvDjYg4BTF4hdAAEYt3xQtrVPP4hKt3hK14hcA4hKt3hXA4BTt.0QtrVPPElKtbjK0EDTt3hKt3hctXVPt3hKtHVPt.kKXcjKqEjYh4hcF4hQt3hKtPzPtPmK10jKyHjK24hKM4BVt3hKt3xUt3BQtDSPPkkKHcjKyEjYA4hKt3xctX1RtH1PtPmKPwjKPMjKG4hKt3hcE4hKAY1XtnlQtjWPPokKHYjKA4hKt3hKC4RPt3hKt3hKt3hKl4hKt3hKD0TUR4zZG4hKtX1ZS4hKt3hKt3hKD4hKt3hKZk2ZrEVPt3hKt3hKt3hKlkEbqcTQEgiP34TT0b1Mr41UNkzR3wVSA4hKt3hKt3hKQM0ZpMEMA4hKtPjKt3hKtXjKt3hKt3hKt3BT5QURzPkKt3hKtDjKt3hKD4hKt3BTt3hKt3RPt3hKtHWPt3hKP4hKt3hKH4hKt3BVt3hKt.0TtPjQtjVPlIlK2XjK4EDTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYq3hKt3hKP4hKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4LkKt3hKtHjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7jPt3hKtvjKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsBSt3hKt3RPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjyPA4hKt3RQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySE4hKt3BVt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1JX4hKt3hcA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4EjKt3hKH4hKt3BQt3hKt3RPt3hKtHjKt3hKTQjKQEDTt3hKt3BRt3hKtXGQtTWPtfjKLUjKtEDTY4hcF4BaA4hKt3hKt3hKtX1JPgjKt3BTA4hKt3RPt3hKtPkKt3hKlAkK2XjK0Ejch4BTG4hKt3hKt3hKt3RNSclKt3hKF4hKt3BQt3hKt3RPt3hKtXTPlIlKTYjK2EjKt3hKt3hKt3hYqfERt3hK1EjKt3hKA4hKt3hYt3hKt3hTtnlQtXlK1QkKlYjKqEjKg4BVF4hKt3hKt3hKt3RN4clKt3hKH4hKt3BQt3hKtXmKt3hKtXjKt3hK5QjKmEjch4BTG4xZAYlXtPjKt3hKlEjKt3hKVEjcg4hcF4BLAAUXtPkQt3hKt3hKt3hKtjyTN4hKt3RPt3hKtPjKt3hK14hKt3hKPEDTX4xLF4hKt3hKt3hKt3RNC4jKt3hKB4hKt3BQt3hKtXVPt3hKtHTPPQlKtbjKmEjch4BSG4hKt3hKt3hKt3RN40jKt3hKC4hKt3BQt3hKt3RPt3hKtPjKt3hKXQjKXEjKH4BQC4RPt3hKtHlKt3hKtDkKHcjKzDjcK4hXE4xZA4xXt3hKt3hKt3hKtLySx4hKt3BQt3hKt.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYtXFSt3hKt3hKt3hKtLySy4hKt3BRt3hKt.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYtXGSt3hKt3hKt3hKtLySz4hKt3BSt3hKt.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYt3RSt3hKt3hKt3hKtLyS04hKt3BTt3hKt.kKt3hKtPjKt3hKP4hKt3hYQ4hYE4hYtXFStPjKt3hK1EjKt3hKDEjYh4hZG4RctXWUtPkQtnWPt3hKt3hKt3hKlshKC4hKt.UPt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtfmKt3hKt3hKt3hKlsBQC4hKtXVPt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtjmKt3hKt3hKt3hKlsBRC4hKtXWPt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtnmKt3hKt3hKt3hKlsBSC4hKt3hPt3hKtDjKt3hKT4hKt3BTA4hKt3xSAYmXtvjQtXlKPwjKD4hKt3BTA4hKt3BTAAkVt.0QtjVPtnkKt3hKt3hKt3hKy7DRt3hKtPjKt3hKP4hKt3hKF4hKt3hbD4BcAYWXtfjQtXlKPwjKt3hKt3hKt3hKy7TRt3hKtfjKt3hKP4hKt3hKF4hKt3hbD4BcAYWXtfjQtXlKlwjKt3hKt3hKt3hKy7jRt3hKtvjKt3hKP4hKt3hKC4hKt3BQD4xbA4hXt3hKt3hKt3hKtLySK4hKt3BTt3hKt.kKt3hKtbjKt3hKXQjKxEjKi4hKB4RSAAkVtX1Qt3hKt3hKt3hKtjyPC4hKt3RQt3hKtPjKt3hKPEjKt3hKE4hKt3xMD4RdAYGVt3hPtfmKP4hKt3hKE4hKt3hKE4xaA4xXtvjQt3VPt3hKt3hKt3hKlshdt3hKt.kKt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtbmKt3hKt3hKt3hKlsxLt3hKtXlKt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtfmKt3hKt3hKt3hKlsxMt3hKtXmKt3hKtDjKt3hKL4hKt3BTP4hdF4hcA4hKt3hKt3hKtX1JtDjKt3hKA4hKt3RPt3hKtHlKt3hKlEkK1YjK5EjKH4hdD4xaA4BYt3hKt3hKt3hKtLySQ4hKt3BUt3hKt.kKt3hKtTjKt3hKT4hKt3hcS4BSG4RZA4BRtvzPtDjKt3hKT4hKt3hKT4hZF4hdAYGVtXlQt3hKt3hKt3hKtjSZD4hKt3RPt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtPzPt3hKt3hKt3hKtjSdD4hKt3hPt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtfzPt3hKt3hKt3hKtjyPE4hKt3xPt3hKtPjKt3hK14hKt3hKAEDTg4hKG4hKt3hKt3hKt3RNSUjKt3hKD4hKt3BQt3hKtXWPt3hKtXTPtDlKPcjKl4BTS4hZF4xLA4hKt3hKt3hKtX1JXEjKt3BTA4hKt3RPt3hKtPkKt3hK1EjKt3hKMEjcg4BTF4hYtX2TtvzQtjVPP4hKt3hKE4hKt3hKE4xaA4xXtvjQt3VPt3hKt3hKt3hKlshcA4hKt.kKt3hKtDjKt3hKl4hKt3hYT4hZF4BcAYWVt3hPtzTP1ElKPYjKt3hKt3hKt3hK4L0Qt3hKtHjKt3hKD4hKt3BTA4hKt3BTA4hVtPjQtjWPPkkKt3hKt3hKt3hKy7DYt3hKtvjKt3hKP4hKt3hKH4hKt3hKE4RcAYmXtnlQtnWPPokK2XjKzEjKt3hKt3hKt3hYqbSPt3hKtDjKt3hKA4hKt3BVt3hKtXVTtXmQtnWPtfjKXQjKMEjKt3hKt3hKt3hYq3hPt3hKPEjKt3hKA4hKt3BSt3hKt.UPt3hKt3TP1ElKpYjK4EDTY4BQt3hKt.UPt3hKtLTP1ElK1YjK0EjYh4hKt3hKt3hKt3xLOckKt3hKX4hKt3BTt3hKt3xPt3hKtPDQtLWPtHlKt3hKt3hKt3hKy7DVt3hKtHlKt3hKP4hKt3hKG4hKt3BVD4hbA4xXt3hPtzTPPokKlcjKt3hKt3hKt3hK4LkQt3hKtfjKt3hKD4hKt3hKA4hKt3BRt3hKtfEQt7VPtDlKPcjKqEjYh4hKB4xct.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYt.ESt3hKt3hKt3hKtLySm4hKt3BQt3hKt.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYtXFSt3hKt3hKt3hKtLySn4hKt3BRt3hKt.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYtXGSt3hKt3hKt3hKtLySo4hKt3BSt3hKt.kKt3hKtPjKt3hKhQjKmEDTZ4xLF4hKt3hKt3hKt3RNC0jKt3hKD4hKt3BQt3hKt3RPt3hKtfjKt3hKXQjKuEjKg4BTG4xZAYlXt3hPtfmKP4hKt3hKF4hKt3hbD4BcAYWXtfjQtXlKPwjKt3hKt3hKt3hKy7jZt3hKtPkKt3hKP4hKt3hKF4hKt3hbD4BcAYWXtfjQtXlKlwjKt3hKt3hKt3hKy7zZt3hKtfkKt3hKP4hKt3hKF4hKt3hbD4BcAYWXtfjQtXlK1wjKt3hKt3hKt3hKy7Dat3hKtHlKt3hKP4hKt3hKD4hKt3hXD4xYAAkVtLiQt3hKt3hKt3hKtjyTM4hKt3BRt3hKtPjKt3hKl4hKt3hKG4hKt3BVD4hbA4xXt3hPtzTPPokKlcjKA4hKt3hXt3hKtXGUtPkQtfWP1sjKtTjKmEjYh4hKt3hKt3hKt3xLO0lKt3hKD4hKt3BTt3hKt3xQt3hKtnGQt7VPtPlKtHjK24hcK4BRC4hKt3hKt3hKt3RNo0jKt3hKB4hKt3BQt3hKtXlKt3hKtfjKt3hKXQjKqEDTY4BTF4BZAAEVtvjQtDWPP4hKt3hKC4hKt3BQD4xbA4hXt3hKt3hKt3hKtLySZ4hKt3BSt3hKt.kKt3hKtbjKt3hKXQjKxEjKi4hKB4RSAAkVtX1Qt3hKt3hKt3hKtjSdF4hKt3BQt3hKtPjKt3hKl4hKt3hKH4hKt3hZD4BcAYmXtPkQtfWPtLlKtHjK24BTt3hKt3hQt3hKtHGQtPWP1ElKHYjKl4BTL4hKt3hKt3hKt3xLO4lKt3hKT4hKt3BTt3hKt3hQt3hKtHGQtPWP1ElKHYjKl4hYL4hKt3hKt3hKt3xLO8lKt3hKX4hKt3BTt3hKt3hPt3hKtXlKt3hKPIkKyXjK4EDTY4BRG4hdA4BRtfzPtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtbmKt3hKt3hKt3hKlshaB4hKtXWPt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtfmKt3hKt3hKt3hKlshbB4hKt3hPt3hKtDjKt3hKL4hKt3hYA4hKt3RUAYVXtnlQtjWP1ElKyXjKA4hKt3hZt3hKt3BUtnlQtnWP1gkKlYjKl4BTS4hZF4xLA4hKt3hKt3hKtX1JDgjKt3BTA4hKt3RPt3hKtXlKt3hK1UkKDYjKwDDTY4hKB4BTAYWXtvzQt3hKt3hKt3hKtjSZl4hKt3hQt3hKtPjKt3hK14hKt3hKPEDTX4xLF4hKt3hKt3hKt3RN4YlKt3hKG4hKt3BQt3hKt.kKt3hKtTjKt3hKhQjKxEDTZ4BTF4xZAAkKt3hKtPjKt3hKPUjKuEDTg4BUF4hKt3hKt3hKt3RNoUlKt3hKA4hKt3BQt3hKtXlKt3hKtbjKt3hKXUjKuEjYX4BRG4xYA4xXtbiQtDjKt3hKP4hKt3hYT4BQF4hdAAUVt3hKt3hKt3hKtLySqDjKt3BRt3hKt.kKt3hKtTjKt3hKPQjKqEjKh4BTG4haA4hKt3hKt3hKtX1JtfjKt3hct3hKt3RPt3hKtXlKt3hKPEjKt3hKEEjYg4BVG4hYt.EStPjKt3hKlEjKt3hKAEjKi4BTG4xYAYGVtHmQt3hKt3hKt3hKtjSZW4hKt3RPt3hKtPjKt3hKPEjKt3hKDEDTY4BSF4xYAAEYt3hKt3hKt3hKtLySrEjKt3BRt3hKt.kKt3hKtbjKt3hKLUjKvDjch4BTG4xYAAkVtLiQt3hKt3hKt3hKtjSZg4hKt3xPt3hKtPjKt3hK1EjKt3hKREDTY4hcF4xZAAEVtvzQtrVPt3hKt3hKt3hKlshaG4hKt3RPt3hKtDjKt3hKh4hKt3BTP4BTG4hdA4BRtXGQtDSPtDlKt3hKt3hKt3hKy7DZA4hKtPkKt3hKP4hKt3hKG4hKt3BTD4xZAYGVt3hPtvTPlMlK1YjKt3hKt3hKt3hK4jlVt3hKtXjKt3hKD4hKt3hcA4hKt3xTAA0XtvzQtXlKtLkKXcjKxEjKt3hKt3hKt3hYqfzQt3hK1EjKt3hKA4hKt3hYt3hKtXGUtP0QtjWPPMkK2XjK3EjKh4hYF4hKt3hKt3hKt3RNoMlKt3hKH4hKt3BQt3hKt3hPt3hKtTjKt3hKTQjKzEjYi4hKB4Bdt.kKt3hKtXjKt3hKDQjK5EjKi4BQF4RZAYmVt3hKt3hKt3hKtLySkEjKt3BQt3hKt.kKt3hKtTjKt3hKPQjKqEjcX4BQF4BMA4hKt3hKt3hKtX1JhYjKt3hYt3hKt3RPt3hKtHlKt3hK1QkKTcjK4EjKi4BQF4xaAYVXt3hKt3hKt3hKtLyS0EjKt3BSt3hKt.kKt3hKtbjKt3hKHUjKqEjKg4BUF4xYAYmXtPkQt3hKt3hKt3hKtjSdj4hKt3BQt3hKtPjKt3hK1EjKt3hKAEjKi4BTG4hYt3xTtf0QtHWPt3hKt3hKt3hKlsBSF4hKt.UPt3hKtDjKt3hKh4hKt3hKQ4BUF4RZA4BRtXGQtDSPtDlKt3hKt3hKt3hKy7TbA4hKtfkKt3hKP4hKt3hKG4hKt3BSE4BLAYmXt3hPtvTPlMlK1YjKt3hKt3hKt3hK4jmXt3hKtbjKt3hKD4hKt3hKB4hKt3xTAA0XtvzQtzTP1ElKHcjK1EjKZ4hKt3hKt3hKt3xLOISPt3hKl4hKt3BTt3hKt3BRt3hKtPkKt3hKPEkKyXjKwDjKH4BSC4RPt3hKtfkKt3hKPAkKPcjK5EDTX4BSF4RbA4hKt3hKt3hKtX1JtXjKt3BTt3hKt3RPt3hKtPkKt3hKtDkKTYjKoEDTX4hZG4hKt3hKt3hKt3RNCokKt3hKB4hKt3BQt3hKtXWPt3hKtLUPPMlKLcjK5EDTX4hZF4BcA4hKt3hKt3hKtX1JtbjKt3hct3hKt3RPt3hKtHlKt3hKlQkKTYjKxEDTY4BQF4RdAAUVt3hKt3hKt3hKtLyS2DjKt3BTt3hKt.kKt3hKtbjKt3hKDQjK5EjKi4hKB4BSAY1XtXmQt3hKt3hKt3hKtjyPY4hKt3RQt3hKtPjKt3hK1EjKt3hKDEDTY4BSF4hYt3xTtf0QtHWPt3hKt3hKt3hKlshcF4hKtXVPt3hKtDjKt3hKh4hKt3hcT4BUG4RdA4BRtXGQtDSPtDlKt3hKt3hKt3hKy7jdA4hKtHlKt3hKP4hKt3hKH4hKt3BSE4BLAYmXtnGQtTWPlIlKtbjKtEjKt3hKt3hKt3hYqX1Qt3hKtHjKt3hKA4hKt3hYt3hKt.UPt3hKtTTPlElKXcjKl4hKM4BQt3hKtXVPt3hKtDTPtLlKPcjKmEjcX4hbF4hKt3hKt3hKt3RNSgkKt3hKA4hKt3BQt3hKt.UPt3hKtPTPPkkKLYjKmEDTj4hKt3hKt3hKt3xLO8VPt3hKH4hKt3BTt3hKt3xQt3hKtvTQt.SP1IlKPcjKmEDTZ4xLF4hKt3hKt3hKt3RNSIlKt3hKC4hKt3BQt3hKtXWPt3hKtHUPPkkK1YjKqEDTX4BSG4xZA4hKt3hKt3hKtX1J5cjKt3hKA4hKt3RPt3hKtHlKt3hKPAkKPcjK5EjKH4hcD4RLA4RXt3hKt3hKt3hKtLySqEjKt3BUt3hKt.kKt3hKtbjKt3hKPQjKqEjcX4hKB4BSAY1XtXmQt3hKt3hKt3hKtjyTg4hKt3hQt3hKtPjKt3hK1EjKt3hKSEDTi4BSG4hYt3xTtf0QtHWPt3hKt3hKt3hKlsBUG4hKtXWPt3hKtDjKt3hKl4hKt3hcT4BUG4RdAA0TtbiQtfWPtHlKlYjKt3hKt3hKt3hK4LEYt3hKtfjKt3hKD4hKt3hKA4hKt3RQt3hKtnGQtTWPtjkKtHjK24BTt3hKt3xPt3hKtPDQtLWPtHlKt3hKt3hKt3hKy7TNt3hKtPjKt3hKP4hKt3hKD4hKt3BRE4xYA4xXtPkQt3hKt3hKt3hKtjSZN4hKt3hPt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtPzPt3hKt3hKt3hKtjSZQ4hKt3xPt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtfzPt3hKt3hKt3hKtjSZP4hKt3BQt3hKtPjKt3hKtDjKt3hKE4hKt3hdD4RcA4RVt3hPtfmKP4hKt3hKC4hKt3BQD4xbA4hXt3hKt3hKt3hKtLySq3hKt3BUt3hKt.kKt3hKtPjKt3hKHUjKmEjKi4BUF4hKt3hKt3hKt3RN44jKt3hKF4hKt3BQt3hKtXVPt3hKtrTPlElK2XjKnEjKH4BQC4hKt3hKt3hKt3RN4EkKt3hKG4hKt3BQt3hKtXVPt3hKtrTPlElK2XjKnEjKH4BRC4hKt3hKt3hKt3RN4AkKt3hKH4hKt3BQt3hKt3RPt3hKtTjKt3hK5QjK0EjKY4hKB4Rdt.kKt3hKtLjKt3hKDQjKyEjKh4hKt3hKt3hKt3xLO4RPt3hKD4hKt3BTt3hKt3BQt3hKtfTQtbVPtLlKTYjKt3hKt3hKt3hK4LzSt3hKtHjKt3hKD4hKt3hYA4hKt3xRAYVXtbiQtfVPtfjKDMjKt3hKt3hKt3hK4LjTt3hKtLjKt3hKD4hKt3hYA4hKt3xRAYVXtbiQtfVPtfjKHMjKt3hKt3hKt3hK4LTTt3hKtPjKt3hKD4hKt3hKA4hKt3RQt3hKtnGQtTWPtjkKtHjK54BTt3hKt3xPt3hKtPDQtLWPtHlKt3hKt3hKt3hKy7TPA4hKtPkKt3hKP4hKt3hKD4hKt3BRE4xYA4xXtPkQt3hKt3hKt3hKtjyTO4hKt3hQt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtPzPt3hKt3hKt3hKtjyTR4hKt3xQt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtfzPt3hKt3hKt3hKtjyTQ4hKt3BRt3hKtPjKt3hKt3hKt3hKA4hKt3BT5QURzPzXt3hKtjWZt3hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKrUVYLkFRLsBVzPUaCUlPjgEaogFcMwjPt3hKt3hKt3BQMUkTNE0Qt3hKP4hKt3hKvglKt3hKt3hKt3RTSslZSkWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtDDRsUjKt.kXH4hKtHDRsUjKtXjKtPjKHUDStnUdqwVXtLlKP4hKAUDVVcUSTEmbX0zaJAGLUc2bQgTUygkKDUjYtXmKD0TUR4TP5gjYkYmKtDjKPElKPElYlAkKjgUPHQjKB4hKMIzLCwTUDMkYmUkMFcDayfFUpEmROUkV1LGT4YCYEYFTBgjKtbSStfiPybkXFAUZtX1alQ1PtTjK34jKHMjaKwjKikWRGIlYykmKtnTdO4hKF4BQtg1St3BQtXlbP4RPzLDVNQjKtjlP3EjKt7DRC4hdD4RSt3hKBgmQtzjYB4xMoASZ2T2St3harkiKtf0StLCQt3hKHckKt3hYy4hK1ETMA4xJt.kKtDCRlIjKt.0P30jKyEDVt3BdJ4RSl4hY1MjKlMlK14hK5YkYK4hKA4BUC4xX34hKt3hYmEzLAEjKpokYh4hKFETMQQDRq8jKtfESlciYAIkLC4hKR81St3RLZ4BNFA0PtXjKlIWPtHkK34hKi4xLCwjKPUlK4LzPtDSRlElKt3RcBYmKtbyPtTlKyDjKl4BROQ1MlIFRyDlKt3hPAgWRDgUXO4hKtLmYL4hcGEzMAY1Pt3BQ2LjKtzjcOY1PPMjK33hYt3hdAY1S14hYK4hKtzDQybjKt3BYCgmVtnWPlMDQwPmYA4BTq3RNA4hK5QjYOYmKn0jZt3BVP4BZywFTOEjYtX1Ll4hKB4hKl0jYPMUPB4RPt31St3jK1MiKt.kYtPDTCQjKlshKDwjKMAETmMjdA4RStLSZx4xLpYmQy3jcBgkKtHkZtDjKPUkQt3hdtfmKlISTV4BRtfkct3DRYEjKTY1ZEAUZComKtLlSP4hK5IjKH4BRH4RNt7jK5QjYC4hKlcmYt3xPt3RZDgDVJ4hUAEzaEEjS3XkV4UkQPgDUtPkaEEiXqkkKHkEV1AELQISXrkkQAYlZ14hTUEiX0EjZFUDTTkkbEYEYJ4hQDcDVGgjQqYTX5UEah4hVm4hcQcjVtflYtjVQVQlKAMDTtvDTUU0ZRAkKugDTt3hcqXlKt.0QtHlPtXlKHkjKt3hKoIjKt3hP3DDSt3hKB4BRs4hQJEDRvUmYGA0QlgTPHMkKPIjKAIzLAAUPyjDRCYmatPjKlQzPHgmKTAmYSYFSlshYo4hbtfTaDYTPtDES1kVP2T2PtI1PoE2RH4TP3MkKA4BRH4hTB4hdt.kRtvjRt3hKynjcX4RR0LDTJEDRtXFQCgDdtX1PtbmKyLERCYmatPjKlQzPHgmK1MjKu4xLCgzPy7zMK4BTtPjRtDzQPMjKLwjKqrDTt3BZSY1MDAkKtHjPlolKtHkKpIjKoIjKt3BcBshPLojKA4BR24BZL4BSAAkRtPVR34hKEYVYlwjK3XiKyTSTQshKBQkYDUDTt3hPBYlZlk0atnGctDjYlYkP2nkKtnFRwYjKHETRrcTPtLCYCgVQAEjKtXlL3LEVg4hQtX1YY4RPDIDTK4hbs4xaOgEdtHjKl4hQHcVPD4hYl4xLDolKtflKDUjKKMjKtPjPA4BMI4hKtfWPmQCQX4hKRwjYHMjKo4hdBITRKYlbtPmKRIjPK4RZHc1JAITal4hKlIkPtjjYp4ha3gEdYEjZYIjYJkkKQcyPXQlKF4hYyTDRkEDQtXlYtfTRt.URt7lKlsVPD4hYGclZAgkPtXlKt.katXWPlQlKl4hKLwTP1k0SmUjSX4hKBYkYpUjKt4hdB4RPCYlKtvjRtXSPP4hK3kjYlIjKu4hZBY1ZRAETBIFSBQUUUgCSNQDSCYlRlciPyHlYB4RbtfWRtnkQyLjKtfjTtvFYAs1PyDzLF8lMH4hYvXSdXMiKF4hKUklKt3hKG4xbt.kbt31PtPlKP4hKL8jKt3xLRo2XtLlKtfjKtPlKt4hK1clSO4BQB4jPqUjYG4hKB4hYG4hRmczcKEzMA4hYt3xLgYlTtXlKtfjKtPlPtQjK2kCQ4DDbBYlQlIlPt3BRpUmYs4xRA4xLOo1ZGgkKtn1Mt3hcY8lKJojKtbCRvQjK14RRHcmPlUWct3BQtDTVn4VSBYWQlolKm41PRUjYiEjYjEkKlshPt3hKtnUStLUQP4hKtckKPgDTJ4RNF4lKPclKogVPwczZm4RPLYkbB4DQQEjYm4RZB4hKtPWQ0Tjcm4hKB4hKvcDTtPDYDEjQ1kjKtHjKtflPR0jQtX1JF4lKA4xL0cVYtXUPXMjKl4hKl4lKD4hKGs1aJUDdD4hKHcVVFAkK4LjPqXFZRMSUyDkKy3hKH4hKNgTTAYlKlQjKP4hKDwzQy3xXZUWZZMjdY8jKiYmKwAGbvgiKRUlYt.kKDQyPHQSQRAiKDgDRK4BaI4hPt.kUCQjKp4jQH4hKRkjYXIjKBIjTBYlVBYVaBgUTtXSPtLjPRIjYIcDT1MlKt3hKpYmKt3hZBEjZHIjYBc0StnjVAcyQtXlKtXFYT4hKtHGbvA2LCAEYH4xL0DURtQFQtXlKtPjKtrRTt3hKtLyQtfkK4DjKy7jKtX1aCgjKBMGSPcUPD4hYOYWQtLmKyrjXAAkKtjCQW4hdSY1Q2olKtUDT43BYDQlKlckYWc1QtfjQyzzLQ4RN3jVVLcjKtvVP34hYKEzUt3lQHMlKrczQ1EySEgDQTokbyYmKgIFRzYDdw4xLFgzXtv1QtHDTybjdT4BdA4BRt3BYDQiPlMlY5EzLHMyctXFUynUNBgmUlYWUtTSPtLCUt.0LUA0PtDVP54jYsYFYtXmPuIlP1ckYxX1Qt3hKtc0P1gkYp4xLJo2Pt3hQJ0TPhYjKl4hKyjjcEYGNtXmVlolKXQFQjMjdtXWXloWPXQlKH4xYk4RSAwzQtXlKtLST1UjKxDjTGY1RmcjKxcDRi4BcD4BQjUjdt3xUtr1PyDkaW4hYA4BRt3BYDQlKtjkY5EzLRMSPt3VPRcjYoY1QBY1QEQmSZwlK1YDRi4BaGclLtzjKtbDRi4BaG4hPPMyQPMkK5EjKH4hKjQjVB4BYloWPyH0LA4xMAI0QlsTPtb1UA0jK5UDTz3BYDUSPPgkYWc1QtPkQyT0LA4xaAQVQjQzZtX1bWMSSPMjK2EjTGYFMAYlKDkSP5QDTi4hKB4hYGEEctn1QHMlKzQDYt.UYloWPynjK1kWPCoWUtzjKl4hK4DTMzf2MtXyYQsDQtX1JRQVPWUjYP4hKB4hYGE0StfEQHMlKF4BbyojYs4hKwvlcP4BTLQzLEgEQtTiKDkjKD4BRt3BdAUzbIA0atnmKtHjKybDSznESB41QlUmcpEDSD4hYt3hYj4BQtXVYP8TPhQjKlIjKyXESI4hMtnVRlgTRPMkP54hKEUDTC4BRtXVYPUUPtPjKl4hKlQlK4HzTF4RTt3hPt3RMAAkKtjSP3PjKR4hKJ4hYgcmZOgWQlMEcLkjYGEUUtPDQPQUPtcjY0YmZAQEQtXlKtXFYtPjKlUlcpEjZD4hYB4xLVwTVLY0PB4hYGYmZAgSXt3hKPQUSoIGMlsjcBEjKx4xY1sjcW4BctrjKtXlKNgGTtbjKC4hKjETUBMyTC4xLOEkKtXmKXIzXrQ0QtHmKpMjYOYVctflP1QlKD4hYhIDRt4BTK4xatLSXlIjKz4RNG4lK1sjKmgFVT4BQxIzcQMEStbiPl0lYZ8VLMgkKtflZlolKtXmK5IjYs4hRtXSPP4hK3kjYlIjK24hZBYVcAojKHMzLkYlPtjmKDojYIslcAEjdA4RTx4hKt3xMociX10VS1oEcEwFVtjTS14hZVoVPxEjKtHjctjVTsE1azn2ZtDDZ4omRt4hYisjc1ojch8VUxPCQH4VPsEzQik1ZEUUSIYEYKomYXsVUX4hKt3hKt3hKt3BQt3hKt3hKA4hKt3hKt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4CLtvyKIUDYoQ2Pu4Fcx8FarUlb9vyKVMEUy.Ea0cVZtMEcgQWY9.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Massive",
									"origin" : "Massive.vst3",
									"type" : "VST3",
									"subtype" : "Instrument",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "Massive.vst3",
										"plugindisplayname" : "Massive",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "11297.VMjLgfAK...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fyL1.iKtIjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3BaLkiUHcGQxgDMDQmR5QCMzMkd0vVXI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKtX0JA4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKw3jZKIUbRQTQ1PEcMUDVpoUbss1YwXjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtbjKt3hKD4hKt3hYB4hKt3xctX1RtvzPtPmKtvjKyHjK34hKL4BTC4hdt.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKtXmat3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hK54xU3TSXSgTNxEkcRQzc1QCUhQkPOckPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3hcB4hKt3RPAYlXt3xQtXlKtTkKhcjKqEDTX4hbF4xZAYlXtLiKt3hKlIkKDYjKyEDTY4BSG4hYt3RUtXlQtTWPPElKtbjK4Ejcg4xLF4hTt3hKtLCQtbVPtLlKpYjKwDDTY4hKB4RRAYVXtvzQtnWPlIlKTcjKyEDTY4xLF4hdAYmXt3hKt3hKt3hKt3hKqrxJqrxPt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3RPt3hKtPjKt3hKl4hKt3hKG4hKt3hdD4xYAYmXtvzQt7VPlMlKTYjKN4hKt3hdD4xYAYmXtvzQt7VPlMlKTYjKl4BTQ4hYG4hcAY1Rt3hPtbmKPEjKt3hKJ4hKt3hKE4xZAYlXtvjQt.SP1IlKLcjKuEjYi4BUF4BTt3hKt3RQtrVPlIlKLYjKvDjch4BSG4xaAY1XtPkQtXlK1QkKpcjKzEjKi4hYF4RRt3hKt3RQtfWP1ElKLYjKqEjch4BSG4xZA4RVt3lKt3hK1QkKpcjKzEjKi4hYF4hYt.0TtnlQtjWP1gkKp4hKt3hcT4hZG4BcA4xXtXlQtrVPtLlKpYjKoEjKt3hKt3xQt3hKtHlKt3hKtbkKtPjKoEjcg4hcF4RcAYlXtPjKt3hKtvjKDEjKt3hKW4hKD4hZAAUVtf0Qt7VP1gkKTYjK5EDTj4hKG4xZAYVVtXmQtbVP1kkKLcjKA4hKt3BQC4xRt3hKtXWQt3RP1IlK2XjKvDjYg4BTF4hdAAEYt3xQtrVPP4hKt3hK14hcA4hKt3hXA4BTt.0QtrVPPElKtbjK0EDTt3hKt3hctXVPt3hKtHVPt.kKXcjKqEjYh4hcF4hQt3hKtPzPtPmK10jKyHjK24hKM4BVt3hKt3xUt3BQtDSPPkkKHcjKyEjYA4hKt3xctX1RtH1PtPmKPwjKPMjKG4hKt3hcE4hKAY1XtnlQtjWPPokKHYjKA4hKt3hKC4RPt3hKt3hKt3hKl4hKt3hKD0TUR4zZG4hKtX1ZS4hKt3hKt3hKD4hKt3hKZk2ZrEVPt3hKt3hKt3hKlkEbqcTQEgiP34TT0b1Mr41UNkzR3wVSA4hKt3hKt3hKQM0ZpMEMA4hKtPjKt3hKtXjKt3hKt3hKt3BT5QURzPkKt3hKtDjKt3hKD4hKt3BTt3hKt3RPt3hKtHWPt3hKP4hKt3hKH4hKt3BVt3hKt.0TtPjQtjVPlIlK2XjK4EDTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYq3hKt3hKP4hKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4LkKt3hKtHjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7jPt3hKtvjKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsBSt3hKt3RPt3hKtDjKt3hKy3hKt3hKO4hbG4RXAAEVtP0QtnWP1ElKyXjKmEDTg4BUF4xXAAUYtLyPt3hKt3hKt3hKtjyPA4hKt3RQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySE4hKt3BVt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1JX4hKt3hcA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4EjKt3hKH4hKt3BQt3hKt3RPt3hKtHjKt3hKTQjKQEDTt3hKt3BRt3hKtXGQtTWPtfjKLUjKtEDTY4hcF4BaA4hKt3hKt3hKtX1JPgjKt3BTA4hKt3RPt3hKtPkKt3hKlAkK2XjK0Ejch4BTG4hKt3hKt3hKt3RNSclKt3hKF4hKt3BQt3hKt3RPt3hKtXTPlIlKTYjK2EjKt3hKt3hKt3hYqfERt3hK1EjKt3hKA4hKt3hYt3hKt3hTtnlQtXlK1QkKlYjKqEjKg4BVF4hKt3hKt3hKt3RN4clKt3hKH4hKt3BQt3hKtXmKt3hKtXjKt3hK5QjKmEjch4BTG4xZAYlXtPjKt3hKlEjKt3hKVEjcg4hcF4BLAAUXtPkQt3hKt3hKt3hKtjyTN4hKt3RPt3hKtPjKt3hK14hKt3hKPEDTX4xLF4hKt3hKt3hKt3RNC4jKt3hKB4hKt3BQt3hKtXVPt3hKtHTPPQlKtbjKmEjch4BSG4hKt3hKt3hKt3RN40jKt3hKC4hKt3BQt3hKt3RPt3hKtPjKt3hKXQjKXEjKH4BQC4RPt3hKtHlKt3hKtDkKHcjKzDjcK4hXE4xZA4xXt3hKt3hKt3hKtLySx4hKt3BQt3hKt.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYtXFSt3hKt3hKt3hKtLySy4hKt3BRt3hKt.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYtXGSt3hKt3hKt3hKtLySz4hKt3BSt3hKt.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYt3RSt3hKt3hKt3hKtLyS04hKt3BTt3hKt.kKt3hKtPjKt3hKP4hKt3hYQ4hYE4hYtXFStPjKt3hK1EjKt3hKDEjYh4hZG4RctXWUtPkQtnWPt3hKt3hKt3hKlshKC4hKt.UPt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtfmKt3hKt3hKt3hKlsBQC4hKtXVPt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtjmKt3hKt3hKt3hKlsBRC4hKtXWPt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtnmKt3hKt3hKt3hKlsBSC4hKt3hPt3hKtDjKt3hKT4hKt3BTA4hKt3xSAYmXtvjQtXlKPwjKD4hKt3BTA4hKt3BTAAkVt.0QtjVPtnkKt3hKt3hKt3hKy7DRt3hKtPjKt3hKP4hKt3hKF4hKt3hbD4BcAYWXtfjQtXlKPwjKt3hKt3hKt3hKy7TRt3hKtfjKt3hKP4hKt3hKF4hKt3hbD4BcAYWXtfjQtXlKlwjKt3hKt3hKt3hKy7jRt3hKtvjKt3hKP4hKt3hKC4hKt3BQD4xbA4hXt3hKt3hKt3hKtLySK4hKt3BTt3hKt.kKt3hKtbjKt3hKXQjKxEjKi4hKB4RSAAkVtX1Qt3hKt3hKt3hKtjyPC4hKt3RQt3hKtPjKt3hKPEjKt3hKE4hKt3xMD4RdAYGVt3hPtfmKP4hKt3hKE4hKt3hKE4xaA4xXtvjQt3VPt3hKt3hKt3hKlshdt3hKt.kKt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtbmKt3hKt3hKt3hKlsxLt3hKtXlKt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtfmKt3hKt3hKt3hKlsxMt3hKtXmKt3hKtDjKt3hKL4hKt3BTP4hdF4hcA4hKt3hKt3hKtX1JtDjKt3hKA4hKt3RPt3hKtHlKt3hKlEkK1YjK5EjKH4hdD4xaA4BYt3hKt3hKt3hKtLySQ4hKt3BUt3hKt.kKt3hKtTjKt3hKT4hKt3hcS4BSG4RZA4BRtvzPtDjKt3hKT4hKt3hKT4hZF4hdAYGVtXlQt3hKt3hKt3hKtjSZD4hKt3RPt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtPzPt3hKt3hKt3hKtjSdD4hKt3hPt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtfzPt3hKt3hKt3hKtjyPE4hKt3xPt3hKtPjKt3hK14hKt3hKAEDTg4hKG4hKt3hKt3hKt3RNSUjKt3hKD4hKt3BQt3hKtXWPt3hKtXTPtDlKPcjKl4BTS4hZF4xLA4hKt3hKt3hKtX1JXEjKt3BTA4hKt3RPt3hKtPkKt3hK1EjKt3hKMEjcg4BTF4hYtX2TtvzQtjVPP4hKt3hKE4hKt3hKE4xaA4xXtvjQt3VPt3hKt3hKt3hKlshcA4hKt.kKt3hKtDjKt3hKl4hKt3hYT4hZF4BcAYWVt3hPtzTP1ElKPYjKt3hKt3hKt3hK4L0Qt3hKtHjKt3hKD4hKt3BTA4hKt3BTA4hVtPjQtjWPPkkKt3hKt3hKt3hKy7DYt3hKtvjKt3hKP4hKt3hKH4hKt3hKE4RcAYmXtnlQtnWPPokK2XjKzEjKt3hKt3hKt3hYqbSPt3hKtDjKt3hKA4hKt3BVt3hKtXVTtXmQtnWPtfjKXQjKMEjKt3hKt3hKt3hYq3hPt3hKPEjKt3hKA4hKt3BSt3hKt.UPt3hKt3TP1ElKpYjK4EDTY4BQt3hKt.UPt3hKtLTP1ElK1YjK0EjYh4hKt3hKt3hKt3xLOckKt3hKX4hKt3BTt3hKt3xPt3hKtPDQtLWPtHlKt3hKt3hKt3hKy7DVt3hKtHlKt3hKP4hKt3hKG4hKt3BVD4hbA4xXt3hPtzTPPokKlcjKt3hKt3hKt3hK4LkQt3hKtfjKt3hKD4hKt3hKA4hKt3BRt3hKtfEQt7VPtDlKPcjKqEjYh4hKB4xct.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYt.ESt3hKt3hKt3hKtLySm4hKt3BQt3hKt.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYtXFSt3hKt3hKt3hKtLySn4hKt3BRt3hKt.kKt3hKtXjKt3hKxQjKzEjcg4BRF4hYtXGSt3hKt3hKt3hKtLySo4hKt3BSt3hKt.kKt3hKtPjKt3hKhQjKmEDTZ4xLF4hKt3hKt3hKt3RNC0jKt3hKD4hKt3BQt3hKt3RPt3hKtfjKt3hKXQjKuEjKg4BTG4xZAYlXt3hPtfmKP4hKt3hKF4hKt3hbD4BcAYWXtfjQtXlKPwjKt3hKt3hKt3hKy7jZt3hKtPkKt3hKP4hKt3hKF4hKt3hbD4BcAYWXtfjQtXlKlwjKt3hKt3hKt3hKy7zZt3hKtfkKt3hKP4hKt3hKF4hKt3hbD4BcAYWXtfjQtXlK1wjKt3hKt3hKt3hKy7Dat3hKtHlKt3hKP4hKt3hKD4hKt3hXD4xYAAkVtLiQt3hKt3hKt3hKtjyTM4hKt3BRt3hKtPjKt3hKl4hKt3hKG4hKt3BVD4hbA4xXt3hPtzTPPokKlcjKA4hKt3hXt3hKtXGUtPkQtfWP1sjKtTjKmEjYh4hKt3hKt3hKt3xLO0lKt3hKD4hKt3BTt3hKt3xQt3hKtnGQt7VPtPlKtHjK24hcK4BRC4hKt3hKt3hKt3RNo0jKt3hKB4hKt3BQt3hKtXlKt3hKtfjKt3hKXQjKqEDTY4BTF4BZAAEVtvjQtDWPP4hKt3hKC4hKt3BQD4xbA4hXt3hKt3hKt3hKtLySZ4hKt3BSt3hKt.kKt3hKtbjKt3hKXQjKxEjKi4hKB4RSAAkVtX1Qt3hKt3hKt3hKtjSdF4hKt3BQt3hKtPjKt3hKl4hKt3hKH4hKt3hZD4BcAYmXtPkQtfWPtLlKtHjK24BTt3hKt3hQt3hKtHGQtPWP1ElKHYjKl4BTL4hKt3hKt3hKt3xLO4lKt3hKT4hKt3BTt3hKt3hQt3hKtHGQtPWP1ElKHYjKl4hYL4hKt3hKt3hKt3xLO8lKt3hKX4hKt3BTt3hKt3hPt3hKtXlKt3hKPIkKyXjK4EDTY4BRG4hdA4BRtfzPtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtbmKt3hKt3hKt3hKlshaB4hKtXWPt3hKtDjKt3hKX4hKt3hcR4xLF4RcAYFVt3hPtfmKt3hKt3hKt3hKlshbB4hKt3hPt3hKtDjKt3hKL4hKt3hYA4hKt3RUAYVXtnlQtjWP1ElKyXjKA4hKt3hZt3hKt3BUtnlQtnWP1gkKlYjKl4BTS4hZF4xLA4hKt3hKt3hKtX1JDgjKt3BTA4hKt3RPt3hKtXlKt3hK1UkKDYjKwDDTY4hKB4BTAYWXtvzQt3hKt3hKt3hKtjSZl4hKt3hQt3hKtPjKt3hK14hKt3hKPEDTX4xLF4hKt3hKt3hKt3RN4YlKt3hKG4hKt3BQt3hKt.kKt3hKtTjKt3hKhQjKxEDTZ4BTF4xZAAkKt3hKtPjKt3hKPUjKuEDTg4BUF4hKt3hKt3hKt3RNoUlKt3hKA4hKt3BQt3hKtXlKt3hKtbjKt3hKXUjKuEjYX4BRG4xYA4xXtbiQtDjKt3hKP4hKt3hYT4BQF4hdAAUVt3hKt3hKt3hKtLySqDjKt3BRt3hKt.kKt3hKtTjKt3hKPQjKqEjKh4BTG4haA4hKt3hKt3hKtX1JtfjKt3hct3hKt3RPt3hKtXlKt3hKPEjKt3hKEEjYg4BVG4hYt.EStPjKt3hKlEjKt3hKAEjKi4BTG4xYAYGVtHmQt3hKt3hKt3hKtjSZW4hKt3RPt3hKtPjKt3hKPEjKt3hKDEDTY4BSF4xYAAEYt3hKt3hKt3hKtLySrEjKt3BRt3hKt.kKt3hKtbjKt3hKLUjKvDjch4BTG4xYAAkVtLiQt3hKt3hKt3hKtjSZg4hKt3xPt3hKtPjKt3hK1EjKt3hKREDTY4hcF4xZAAEVtvzQtrVPt3hKt3hKt3hKlshaG4hKt3RPt3hKtDjKt3hKh4hKt3BTP4BTG4hdA4BRtXGQtDSPtDlKt3hKt3hKt3hKy7DZA4hKtPkKt3hKP4hKt3hKG4hKt3BTD4xZAYGVt3hPtvTPlMlK1YjKt3hKt3hKt3hK4jlVt3hKtXjKt3hKD4hKt3hcA4hKt3xTAA0XtvzQtXlKtLkKXcjKxEjKt3hKt3hKt3hYqfzQt3hK1EjKt3hKA4hKt3hYt3hKtXGUtP0QtjWPPMkK2XjK3EjKh4hYF4hKt3hKt3hKt3RNoMlKt3hKH4hKt3BQt3hKt3hPt3hKtTjKt3hKTQjKzEjYi4hKB4Bdt.kKt3hKtXjKt3hKDQjK5EjKi4BQF4RZAYmVt3hKt3hKt3hKtLySkEjKt3BQt3hKt.kKt3hKtTjKt3hKPQjKqEjcX4BQF4BMA4hKt3hKt3hKtX1JhYjKt3hYt3hKt3RPt3hKtHlKt3hK1QkKTcjK4EjKi4BQF4xaAYVXt3hKt3hKt3hKtLyS0EjKt3BSt3hKt.kKt3hKtbjKt3hKHUjKqEjKg4BUF4xYAYmXtPkQt3hKt3hKt3hKtjSdj4hKt3BQt3hKtPjKt3hK1EjKt3hKAEjKi4BTG4hYt3xTtf0QtHWPt3hKt3hKt3hKlsBSF4hKt.UPt3hKtDjKt3hKh4hKt3hKQ4BUF4RZA4BRtXGQtDSPtDlKt3hKt3hKt3hKy7TbA4hKtfkKt3hKP4hKt3hKG4hKt3BSE4BLAYmXt3hPtvTPlMlK1YjKt3hKt3hKt3hK4jmXt3hKtbjKt3hKD4hKt3hKB4hKt3xTAA0XtvzQtzTP1ElKHcjK1EjKZ4hKt3hKt3hKt3xLOISPt3hKl4hKt3BTt3hKt3BRt3hKtPkKt3hKPEkKyXjKwDjKH4BSC4RPt3hKtfkKt3hKPAkKPcjK5EDTX4BSF4RbA4hKt3hKt3hKtX1JtXjKt3BTt3hKt3RPt3hKtPkKt3hKtDkKTYjKoEDTX4hZG4hKt3hKt3hKt3RNCokKt3hKB4hKt3BQt3hKtXWPt3hKtLUPPMlKLcjK5EDTX4hZF4BcA4hKt3hKt3hKtX1JtbjKt3hct3hKt3RPt3hKtHlKt3hKlQkKTYjKxEDTY4BQF4RdAAUVt3hKt3hKt3hKtLyS2DjKt3BTt3hKt.kKt3hKtbjKt3hKDQjK5EjKi4hKB4BSAY1XtXmQt3hKt3hKt3hKtjyPY4hKt3RQt3hKtPjKt3hK1EjKt3hKDEDTY4BSF4hYt3xTtf0QtHWPt3hKt3hKt3hKlshcF4hKtXVPt3hKtDjKt3hKh4hKt3hcT4BUG4RdA4BRtXGQtDSPtDlKt3hKt3hKt3hKy7jdA4hKtHlKt3hKP4hKt3hKH4hKt3BSE4BLAYmXtnGQtTWPlIlKtbjKtEjKt3hKt3hKt3hYqX1Qt3hKtHjKt3hKA4hKt3hYt3hKt.UPt3hKtTTPlElKXcjKl4hKM4BQt3hKtXVPt3hKtDTPtLlKPcjKmEjcX4hbF4hKt3hKt3hKt3RNSgkKt3hKA4hKt3BQt3hKt.UPt3hKtPTPPkkKLYjKmEDTj4hKt3hKt3hKt3xLO8VPt3hKH4hKt3BTt3hKt3xQt3hKtvTQt.SP1IlKPcjKmEDTZ4xLF4hKt3hKt3hKt3RNSIlKt3hKC4hKt3BQt3hKtXWPt3hKtHUPPkkK1YjKqEDTX4BSG4xZA4hKt3hKt3hKtX1J5cjKt3hKA4hKt3RPt3hKtHlKt3hKPAkKPcjK5EjKH4hcD4RLA4RXt3hKt3hKt3hKtLySqEjKt3BUt3hKt.kKt3hKtbjKt3hKPQjKqEjcX4hKB4BSAY1XtXmQt3hKt3hKt3hKtjyTg4hKt3hQt3hKtPjKt3hK1EjKt3hKSEDTi4BSG4hYt3xTtf0QtHWPt3hKt3hKt3hKlsBUG4hKtXWPt3hKtDjKt3hKl4hKt3hcT4BUG4RdAA0TtbiQtfWPtHlKlYjKt3hKt3hKt3hK4LEYt3hKtfjKt3hKD4hKt3hKA4hKt3RQt3hKtnGQtTWPtjkKtHjK24BTt3hKt3xPt3hKtPDQtLWPtHlKt3hKt3hKt3hKy7TNt3hKtPjKt3hKP4hKt3hKD4hKt3BRE4xYA4xXtPkQt3hKt3hKt3hKtjSZN4hKt3hPt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtPzPt3hKt3hKt3hKtjSZQ4hKt3xPt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtfzPt3hKt3hKt3hKtjSZP4hKt3BQt3hKtPjKt3hKtDjKt3hKE4hKt3hdD4RcA4RVt3hPtfmKP4hKt3hKC4hKt3BQD4xbA4hXt3hKt3hKt3hKtLySq3hKt3BUt3hKt.kKt3hKtPjKt3hKHUjKmEjKi4BUF4hKt3hKt3hKt3RN44jKt3hKF4hKt3BQt3hKtXVPt3hKtrTPlElK2XjKnEjKH4BQC4hKt3hKt3hKt3RN4EkKt3hKG4hKt3BQt3hKtXVPt3hKtrTPlElK2XjKnEjKH4BRC4hKt3hKt3hKt3RN4AkKt3hKH4hKt3BQt3hKt3RPt3hKtTjKt3hK5QjK0EjKY4hKB4Rdt.kKt3hKtLjKt3hKDQjKyEjKh4hKt3hKt3hKt3xLO4RPt3hKD4hKt3BTt3hKt3BQt3hKtfTQtbVPtLlKTYjKt3hKt3hKt3hK4LzSt3hKtHjKt3hKD4hKt3hYA4hKt3xRAYVXtbiQtfVPtfjKDMjKt3hKt3hKt3hK4LjTt3hKtLjKt3hKD4hKt3hYA4hKt3xRAYVXtbiQtfVPtfjKHMjKt3hKt3hKt3hK4LTTt3hKtPjKt3hKD4hKt3hKA4hKt3RQt3hKtnGQtTWPtjkKtHjK54BTt3hKt3xPt3hKtPDQtLWPtHlKt3hKt3hKt3hKy7TPA4hKtPkKt3hKP4hKt3hKD4hKt3BRE4xYA4xXtPkQt3hKt3hKt3hKtjyTO4hKt3hQt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtPzPt3hKt3hKt3hKtjyTR4hKt3xQt3hKtPjKt3hKlEjKt3hKKEjYg4xMF4BZA4BRtfzPt3hKt3hKt3hKtjyTQ4hKt3BRt3hKtPjKt3hKt3hKt3hKA4hKt3BT5QURzPzXt3hKtjWZt3hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKrUVYLkFRLsBVzPUaCUlPjgEaogFcMwjPt3hKt3hKt3BQMUkTNE0Qt3hKP4hKt3hKvglKt3hKt3hKt3RTSslZSkWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtDDRsUjKt.kXH4hKtHDRsUjKtXjKtPjKHUDStnUdqwVXtLlKP4hKAUDVVcUSTEmbX0zaJAGLUc2bQgTUygkKDUjYtXmKD0TUR4TP5gjYkYmKtDjKPElKPElYlAkKjgUPHQjKB4hKMIzLCwTUDMkYmUkMFcDayfFUpEmROUkV1LGT4YCYEYFTBgjKtbSStfiPybkXFAUZtX1alQ1PtTjK34jKHMjaKwjKikWRGIlYykmKtnTdO4hKF4BQtg1St3BQtXlbP4RPzLDVNQjKtjlP3EjKt7DRC4hdD4RSt3hKBgmQtzjYB4xMoASZ2T2St3harkiKtf0StLCQt3hKHckKt3hYy4hK1ETMA4xJt.kKtDCRlIjKt.0P30jKyEDVt3BdJ4RSl4hY1MjKlMlK14hK5YkYK4hKA4BUC4xX34hKt3hYmEzLAEjKpokYh4hKFETMQQDRq8jKtfESlciYAIkLC4hKR81St3RLZ4BNFA0PtXjKlIWPtHkK34hKi4xLCwjKPUlK4LzPtDSRlElKt3RcBYmKtbyPtTlKyDjKl4BROQ1MlIFRyDlKt3hPAgWRDgUXO4hKtLmYL4hcGEzMAY1Pt3BQ2LjKtzjcOY1PPMjK33hYt3hdAY1S14hYK4hKtzDQybjKt3BYCgmVtnWPlMDQwPmYA4BTq3RNA4hK5QjYOYmKn0jZt3BVP4BZywFTOEjYtX1Ll4hKB4hKl0jYPMUPB4RPt31St3jK1MiKt.kYtPDTCQjKlshKDwjKMAETmMjdA4RStLSZx4xLpYmQy3jcBgkKtHkZtDjKPUkQt3hdtfmKlISTV4BRtfkct3DRYEjKTY1ZEAUZComKtLlSP4hK5IjKH4BRH4RNt7jK5QjYC4hKlcmYt3xPt3RZDgDVJ4hUAEzaEEjS3XkV4UkQPgDUtPkaEEiXqkkKHkEV1AELQISXrkkQAYlZ14hTUEiX0EjZFUDTTkkbEYEYJ4hQDcDVGgjQqYTX5UEah4hVm4hcQcjVtflYtjVQVQlKAMDTtvDTUU0ZRAkKugDTt3hcqXlKt.0QtHlPtXlKHkjKt3hKoIjKt3hP3DDSt3hKB4BRs4hQJEDRvUmYGA0QlgTPHMkKPIjKAIzLAAUPyjDRCYmatPjKlQzPHgmKTAmYSYFSlshYo4hbtfTaDYTPtDES1kVP2T2PtI1PoE2RH4TP3MkKA4BRH4hTB4hdt.kRtvjRt3hKynjcX4RR0LDTJEDRtXFQCgDdtX1PtbmKyLERCYmatPjKlQzPHgmK1MjKu4xLCgzPy7zMK4BTtPjRtDzQPMjKLwjKqrDTt3BZSY1MDAkKtHjPlolKtHkKpIjKoIjKt3BcBshPLojKA4BR24BZL4BSAAkRtPVR34hKEYVYlwjK3XiKyTSTQshKBQkYDUDTt3hPBYlZlk0atnGctDjYlYkP2nkKtnFRwYjKHETRrcTPtLCYCgVQAEjKtXlL3LEVg4hQtX1YY4RPDIDTK4hbs4xaOgEdtHjKl4hQHcVPD4hYl4xLDolKtflKDUjKKMjKtPjPA4BMI4hKtfWPmQCQX4hKRwjYHMjKo4hdBITRKYlbtPmKRIjPK4RZHc1JAITal4hKlIkPtjjYp4ha3gEdYEjZYIjYJkkKQcyPXQlKF4hYyTDRkEDQtXlYtfTRt.URt7lKlsVPD4hYGclZAgkPtXlKt.katXWPlQlKl4hKLwTP1k0SmUjSX4hKBYkYpUjKt4hdB4RPCYlKtvjRtXSPP4hK3kjYlIjKu4hZBY1ZRAETBIFSBQUUUgCSNQDSCYlRlciPyHlYB4RbtfWRtnkQyLjKtfjTtvFYAs1PyDzLF8lMH4hYvXSdXMiKF4hKUklKt3hKG4xbt.kbt31PtPlKP4hKL8jKt3xLRo2XtLlKtfjKtPlKt4hK1clSO4BQB4jPqUjYG4hKB4hYG4hRmczcKEzMA4hYt3xLgYlTtXlKtfjKtPlPtQjK2kCQ4DDbBYlQlIlPt3BRpUmYs4xRA4xLOo1ZGgkKtn1Mt3hcY8lKJojKtbCRvQjK14RRHcmPlUWct3BQtDTVn4VSBYWQlolKm41PRUjYiEjYjEkKlshPt3hKtnUStLUQP4hKtckKPgDTJ4RNF4lKPclKogVPwczZm4RPLYkbB4DQQEjYm4RZB4hKtPWQ0Tjcm4hKB4hKvcDTtPDYDEjQ1kjKtHjKtflPR0jQtX1JF4lKA4xL0cVYtXUPXMjKl4hKl4lKD4hKGs1aJUDdD4hKHcVVFAkK4LjPqXFZRMSUyDkKy3hKH4hKNgTTAYlKlQjKP4hKDwzQy3xXZUWZZMjdY8jKiYmKwAGbvgiKRUlYt.kKDQyPHQSQRAiKDgDRK4BaI4hPt.kUCQjKp4jQH4hKRkjYXIjKBIjTBYlVBYVaBgUTtXSPtLjPRIjYIcDT1MlKt3hKpYmKt3hZBEjZHIjYBc0StnjVAcyQtXlKtXFYT4hKtHGbvA2LCAEYH4xL0DURtQFQtXlKtPjKtrRTt3hKtLyQtfkK4DjKy7jKtX1aCgjKBMGSPcUPD4hYOYWQtLmKyrjXAAkKtjCQW4hdSY1Q2olKtUDT43BYDQlKlckYWc1QtfjQyzzLQ4RN3jVVLcjKtvVP34hYKEzUt3lQHMlKrczQ1EySEgDQTokbyYmKgIFRzYDdw4xLFgzXtv1QtHDTybjdT4BdA4BRt3BYDQiPlMlY5EzLHMyctXFUynUNBgmUlYWUtTSPtLCUt.0LUA0PtDVP54jYsYFYtXmPuIlP1ckYxX1Qt3hKtc0P1gkYp4xLJo2Pt3hQJ0TPhYjKl4hKyjjcEYGNtXmVlolKXQFQjMjdtXWXloWPXQlKH4xYk4RSAwzQtXlKtLST1UjKxDjTGY1RmcjKxcDRi4BcD4BQjUjdt3xUtr1PyDkaW4hYA4BRt3BYDQlKtjkY5EzLRMSPt3VPRcjYoY1QBY1QEQmSZwlK1YDRi4BaGclLtzjKtbDRi4BaG4hPPMyQPMkK5EjKH4hKjQjVB4BYloWPyH0LA4xMAI0QlsTPtb1UA0jK5UDTz3BYDUSPPgkYWc1QtPkQyT0LA4xaAQVQjQzZtX1bWMSSPMjK2EjTGYFMAYlKDkSP5QDTi4hKB4hYGEEctn1QHMlKzQDYt.UYloWPynjK1kWPCoWUtzjKl4hK4DTMzf2MtXyYQsDQtX1JRQVPWUjYP4hKB4hYGE0StfEQHMlKF4BbyojYs4hKwvlcP4BTLQzLEgEQtTiKDkjKD4BRt3BdAUzbIA0atnmKtHjKybDSznESB41QlUmcpEDSD4hYt3hYj4BQtXVYP8TPhQjKlIjKyXESI4hMtnVRlgTRPMkP54hKEUDTC4BRtXVYPUUPtPjKl4hKlQlK4HzTF4RTt3hPt3RMAAkKtjSP3PjKR4hKJ4hYgcmZOgWQlMEcLkjYGEUUtPDQPQUPtcjY0YmZAQEQtXlKtXFYtPjKlUlcpEjZD4hYB4xLVwTVLY0PB4hYGYmZAgSXt3hKPQUSoIGMlsjcBEjKx4xY1sjcW4BctrjKtXlKNgGTtbjKC4hKjETUBMyTC4xLOEkKtXmKXIzXrQ0QtHmKpMjYOYVctflP1QlKD4hYhIDRt4BTK4xatLSXlIjKz4RNG4lK1sjKmgFVT4BQxIzcQMEStbiPl0lYZ8VLMgkKtflZlolKtXmK5IjYs4hRtXSPP4hK3kjYlIjK24hZBYVcAojKHMzLkYlPtjmKDojYIslcAEjdA4RTx4hKt3xMociX10VS1oEcEwFVtjTS14hZVoVPxEjKtHjctjVTsE1azn2ZtDDZ4omRt4hYisjc1ojch8VUxPCQH4VPsEzQik1ZEUUSIYEYKomYXsVUX4hKt3hKt3hKt3BQt3hKt3hKA4hKt3hKt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4CLtvyKIUDYoQ2Pu4Fcx8FarUlb9vyKVMEUy.Ea0cVZtMEcgQWY9.."
									}
,
									"fileref" : 									{
										"name" : "Massive",
										"filename" : "Massive.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "6dd38c13521affd1108fca6fa0887c71"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 2 2",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-290",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2330.0, 734.0, 100.0, 22.0 ],
					"text" : "loadmess 0.8"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-291",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2330.0, 762.0, 55.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-292",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2390.0, 762.0, 60.0, 20.0 ],
					"text" : "volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-293",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2200.0, 762.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-294",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 2265.0, 762.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-295",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 2200.0, 794.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-296",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2200.0, 900.0, 440.0, 33.0 ],
					"text" : "FEEDBACK: when an answer ends, the Continuator continues it\n(saves it into Basic Pitch's folder, the only one it can read)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-297",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2200.0, 945.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-298",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2200.0, 973.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-299",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2230.0, 973.0, 160.0, 20.0 ],
					"text" : "feedback loop on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-300",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2200.0, 1001.0, 72.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-301",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 2200.0, 1029.0, 51.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-302",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2270.0, 1057.0, 430.0, 22.0 ],
					"text" : "write /Users/ericbrowne/aimat/basic_pitch/output/chain_feedback.mid"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-303",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2200.0, 1057.0, 79.0, 22.0 ],
					"text" : "delay 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-304",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2200.0, 1089.0, 491.0, 22.0 ],
					"text" : "/trigger_model continuator /Users/ericbrowne/aimat/basic_pitch/output/chain_feedback.mid"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-305",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2200.0, 1121.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 39.5, 351.0, 39.5, 351.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"midpoints" : [ 609.5, 870.0, 609.5, 870.0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 609.5, 897.0, 585.0, 897.0, 585.0, 510.0, 597.0, 510.0, 597.0, 414.0, 585.0, 414.0, 585.0, 336.0, 684.5, 336.0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"midpoints" : [ 759.5, 744.0, 759.5, 744.0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 1 ],
					"midpoints" : [ 759.5, 771.0, 669.0, 771.0, 669.0, 726.0, 648.5, 726.0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"midpoints" : [ 739.5, 933.0, 739.5, 933.0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 1 ],
					"midpoints" : [ 739.5, 972.0, 660.0, 972.0, 660.0, 933.0, 648.5, 933.0 ],
					"order" : 1,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 1 ],
					"midpoints" : [ 739.5, 963.0, 723.0, 963.0, 723.0, 933.0, 713.5, 933.0 ],
					"order" : 0,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"midpoints" : [ 609.5, 963.0, 609.5, 963.0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 1 ],
					"midpoints" : [ 674.5, 963.0, 635.5, 963.0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"midpoints" : [ 1155.5, 213.0, 1259.5, 213.0 ],
					"source" : [ "obj-112", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"midpoints" : [ 1132.5, 213.0, 1236.0, 213.0, 1236.0, 207.0, 1399.5, 207.0 ],
					"order" : 0,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"midpoints" : [ 1109.5, 213.0, 1109.5, 213.0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 1132.5, 213.0, 1008.0, 213.0, 1008.0, 207.0, 690.0, 207.0, 690.0, 243.0, 660.0, 243.0, 660.0, 366.0, 585.0, 366.0, 585.0, 462.0, 597.0, 462.0, 597.0, 516.0, 582.0, 516.0, 582.0, 537.0, 239.5, 537.0 ],
					"order" : 1,
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"midpoints" : [ 1259.5, 243.0, 1259.5, 243.0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"midpoints" : [ 1399.5, 243.0, 1259.5, 243.0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"midpoints" : [ 1109.5, 261.0, 1074.0, 261.0, 1074.0, 273.0, 1035.0, 273.0, 1035.0, 366.0, 1109.5, 366.0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"midpoints" : [ 1184.5, 273.0, 1184.5, 273.0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"midpoints" : [ 1184.5, 300.0, 1184.5, 300.0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"midpoints" : [ 1399.5, 300.0, 1399.5, 300.0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 39.5, 384.0, 39.5, 384.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 85.5, 384.0, 15.0, 384.0, 15.0, 495.0, 99.5, 495.0 ],
					"source" : [ "obj-12", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 62.5, 384.0, 15.0, 384.0, 15.0, 495.0, 179.5, 495.0 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"midpoints" : [ 1399.5, 327.0, 1109.5, 327.0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"midpoints" : [ 1489.5, 273.0, 1489.5, 273.0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"midpoints" : [ 1489.5, 300.0, 1489.5, 300.0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"midpoints" : [ 1489.5, 336.0, 1317.0, 336.0, 1317.0, 327.0, 1109.5, 327.0 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 2 ],
					"midpoints" : [ 1221.5, 372.0, 1270.5, 372.0 ],
					"source" : [ "obj-125", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 1 ],
					"midpoints" : [ 1184.5, 372.0, 1190.0, 372.0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"midpoints" : [ 1295.5, 363.0, 1329.5, 363.0 ],
					"source" : [ "obj-125", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 1 ],
					"midpoints" : [ 1258.5, 372.0, 1305.0, 372.0, 1305.0, 408.0, 1375.5, 408.0 ],
					"order" : 1,
					"source" : [ "obj-125", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 1 ],
					"midpoints" : [ 1258.5, 372.0, 1305.0, 372.0, 1305.0, 444.0, 1395.0, 444.0, 1395.0, 435.0, 1455.5, 435.0 ],
					"order" : 0,
					"source" : [ "obj-125", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 1270.5, 405.0, 1329.5, 405.0 ],
					"order" : 1,
					"source" : [ "obj-126", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"midpoints" : [ 1270.5, 405.0, 1409.5, 405.0 ],
					"order" : 0,
					"source" : [ "obj-126", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"midpoints" : [ 1109.5, 405.0, 1109.5, 405.0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"midpoints" : [ 1190.0, 516.0, 1174.5, 516.0 ],
					"source" : [ "obj-126", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"midpoints" : [ 1329.5, 435.0, 1329.5, 435.0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"midpoints" : [ 1409.5, 435.0, 1409.5, 435.0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 39.5, 414.0, 39.5, 414.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 1 ],
					"midpoints" : [ 1409.5, 465.0, 1382.5, 465.0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"midpoints" : [ 1329.5, 492.0, 1329.5, 492.0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 1 ],
					"midpoints" : [ 1329.5, 519.0, 1152.0, 519.0, 1152.0, 525.0, 1130.5, 525.0 ],
					"order" : 1,
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 1 ],
					"midpoints" : [ 1329.5, 528.0, 1206.0, 528.0, 1206.0, 525.0, 1195.5, 525.0 ],
					"order" : 0,
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"midpoints" : [ 1109.5, 555.0, 1086.0, 555.0, 1086.0, 753.0, 1109.5, 753.0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"midpoints" : [ 1174.5, 555.0, 1086.0, 555.0, 1086.0, 753.0, 1174.5, 753.0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"midpoints" : [ 1109.5, 618.0, 1109.5, 618.0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"midpoints" : [ 1109.5, 648.0, 1109.5, 648.0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"midpoints" : [ 1309.5, 618.0, 1309.5, 618.0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 39.5, 441.0, 39.5, 441.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 1 ],
					"midpoints" : [ 1309.5, 648.0, 1281.0, 648.0, 1281.0, 657.0, 1169.5, 657.0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"midpoints" : [ 1109.5, 684.0, 1109.5, 684.0 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"midpoints" : [ 1109.5, 711.0, 1086.0, 711.0, 1086.0, 336.0, 1184.5, 336.0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"midpoints" : [ 1309.5, 684.0, 1287.0, 684.0, 1287.0, 618.0, 1309.5, 618.0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"midpoints" : [ 1239.5, 765.0, 1239.5, 765.0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 1 ],
					"midpoints" : [ 1239.5, 801.0, 1158.0, 801.0, 1158.0, 765.0, 1148.5, 765.0 ],
					"order" : 1,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 1 ],
					"midpoints" : [ 1239.5, 792.0, 1224.0, 792.0, 1224.0, 765.0, 1213.5, 765.0 ],
					"order" : 0,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"midpoints" : [ 1109.5, 792.0, 1109.5, 792.0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 1 ],
					"midpoints" : [ 1174.5, 792.0, 1135.5, 792.0 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"midpoints" : [ 1109.5, 900.0, 1109.5, 900.0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"midpoints" : [ 1109.5, 930.0, 1109.5, 930.0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"midpoints" : [ 1109.5, 954.0, 1109.5, 954.0 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"midpoints" : [ 1109.5, 984.0, 1109.5, 984.0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"midpoints" : [ 1109.5, 1011.0, 1109.5, 1011.0 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 299.5, 351.0, 299.5, 351.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"midpoints" : [ 1379.5, 900.0, 1379.5, 900.0 ],
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"midpoints" : [ 1379.5, 930.0, 1379.5, 930.0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"midpoints" : [ 1379.5, 954.0, 1379.5, 954.0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"midpoints" : [ 1379.5, 984.0, 1379.5, 984.0 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"midpoints" : [ 1379.5, 1011.0, 1379.5, 1011.0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"midpoints" : [ 1169.5, 1113.0, 1134.0, 1113.0, 1134.0, 1125.0, 1109.5, 1125.0 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"midpoints" : [ 1109.5, 1125.0, 1143.0, 1125.0, 1143.0, 1092.0, 1155.0, 1092.0, 1155.0, 1086.0, 1169.5, 1086.0 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"midpoints" : [ 1109.5, 1155.0, 1109.5, 1155.0 ],
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"midpoints" : [ 1109.5, 1182.0, 1109.5, 1182.0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"midpoints" : [ 1109.5, 1209.0, 1109.5, 1209.0 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"midpoints" : [ 1401.5, 1113.0, 1429.5, 1113.0 ],
					"source" : [ "obj-174", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"midpoints" : [ 1369.5, 1113.0, 1369.5, 1113.0 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"midpoints" : [ 1429.5, 1143.0, 1429.5, 1143.0 ],
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"midpoints" : [ 1369.5, 1143.0, 1369.5, 1143.0 ],
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"midpoints" : [ 1579.5, 1113.0, 1579.5, 1113.0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"midpoints" : [ 1579.5, 1143.0, 1407.0, 1143.0, 1407.0, 1167.0, 1369.5, 1167.0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 299.5, 384.0, 299.5, 384.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 345.5, 384.0, 222.0, 384.0, 222.0, 495.0, 139.5, 495.0 ],
					"source" : [ "obj-18", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 322.5, 384.0, 239.5, 384.0 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"midpoints" : [ 1369.5, 1203.0, 1369.5, 1203.0 ],
					"order" : 1,
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"midpoints" : [ 1369.5, 1227.0, 1434.5, 1227.0 ],
					"order" : 0,
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"midpoints" : [ 1539.5, 1173.0, 1369.5, 1173.0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"midpoints" : [ 1499.5, 1236.0, 1499.5, 1236.0 ],
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 1 ],
					"midpoints" : [ 1499.5, 1272.0, 1419.0, 1272.0, 1419.0, 1236.0, 1408.5, 1236.0 ],
					"order" : 1,
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 1 ],
					"midpoints" : [ 1499.5, 1263.0, 1485.0, 1263.0, 1485.0, 1236.0, 1473.5, 1236.0 ],
					"order" : 0,
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"midpoints" : [ 1369.5, 1263.0, 1369.5, 1263.0 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 1 ],
					"midpoints" : [ 1434.5, 1272.0, 1407.0, 1272.0, 1407.0, 1269.0, 1395.5, 1269.0 ],
					"source" : [ "obj-186", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"midpoints" : [ 1705.5, 219.0, 1819.5, 219.0 ],
					"source" : [ "obj-189", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-193", 0 ],
					"midpoints" : [ 1682.5, 222.0, 1716.0, 222.0, 1716.0, 219.0, 1729.5, 219.0 ],
					"source" : [ "obj-189", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"midpoints" : [ 1659.5, 213.0, 1659.5, 213.0 ],
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 299.5, 414.0, 299.5, 414.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"midpoints" : [ 1819.5, 312.0, 1692.0, 312.0, 1692.0, 303.0, 1659.5, 303.0 ],
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 1869.5, 387.0, 1659.5, 387.0 ],
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"midpoints" : [ 1729.5, 264.0, 1767.0, 264.0, 1767.0, 312.0, 1692.0, 312.0, 1692.0, 303.0, 1659.5, 303.0 ],
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"midpoints" : [ 1949.5, 273.0, 1949.5, 273.0 ],
					"source" : [ "obj-194", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 1 ],
					"midpoints" : [ 1949.5, 303.0, 1767.0, 303.0, 1767.0, 255.0, 1701.0, 255.0, 1701.0, 246.0, 1691.5, 246.0 ],
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-198", 0 ],
					"midpoints" : [ 1659.5, 273.0, 1659.5, 273.0 ],
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"midpoints" : [ 1659.5, 303.0, 1659.5, 303.0 ],
					"source" : [ "obj-198", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 1 ],
					"midpoints" : [ 1670.0, 333.0, 1926.0, 333.0, 1926.0, 360.0, 2002.5, 360.0 ],
					"source" : [ "obj-199", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 1659.5, 333.0, 1659.5, 333.0 ],
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 299.5, 441.0, 299.5, 441.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-201", 0 ],
					"midpoints" : [ 1949.5, 333.0, 1949.5, 333.0 ],
					"source" : [ "obj-200", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 0 ],
					"midpoints" : [ 1949.5, 363.0, 1949.5, 363.0 ],
					"source" : [ "obj-201", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"midpoints" : [ 1949.5, 387.0, 1767.0, 387.0, 1767.0, 255.0, 1701.0, 255.0, 1701.0, 237.0, 1659.5, 237.0 ],
					"source" : [ "obj-203", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 1659.5, 363.0, 1659.5, 363.0 ],
					"source" : [ "obj-204", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-235", 0 ],
					"midpoints" : [ 1659.5, 423.0, 1659.5, 423.0 ],
					"source" : [ "obj-205", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 0 ],
					"midpoints" : [ 1819.5, 480.0, 1819.5, 480.0 ],
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 0 ],
					"midpoints" : [ 1819.5, 507.0, 1995.0, 507.0, 1995.0, 480.0, 2009.5, 480.0 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 2009.5, 510.0, 1995.0, 510.0, 1995.0, 462.0, 2022.0, 462.0, 2022.0, 396.0, 1800.0, 396.0, 1800.0, 387.0, 1659.5, 387.0 ],
					"source" : [ "obj-210", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 1819.5, 540.0, 1791.0, 540.0, 1791.0, 387.0, 1659.5, 387.0 ],
					"source" : [ "obj-211", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 1889.5, 540.0, 1791.0, 540.0, 1791.0, 387.0, 1659.5, 387.0 ],
					"source" : [ "obj-212", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 1979.5, 549.0, 1896.0, 549.0, 1896.0, 540.0, 1791.0, 540.0, 1791.0, 387.0, 1659.5, 387.0 ],
					"source" : [ "obj-213", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 2059.5, 549.0, 1896.0, 549.0, 1896.0, 540.0, 1791.0, 540.0, 1791.0, 387.0, 1659.5, 387.0 ],
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 2159.5, 549.0, 1896.0, 549.0, 1896.0, 540.0, 1791.0, 540.0, 1791.0, 387.0, 1659.5, 387.0 ],
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 2009.5, 510.0, 1995.0, 510.0, 1995.0, 462.0, 2022.0, 462.0, 2022.0, 396.0, 1800.0, 396.0, 1800.0, 387.0, 1659.5, 387.0 ],
					"source" : [ "obj-216", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"midpoints" : [ 1819.5, 570.0, 1819.5, 570.0 ],
					"source" : [ "obj-217", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-220", 0 ],
					"midpoints" : [ 1819.5, 600.0, 2067.0, 600.0, 2067.0, 570.0, 2079.5, 570.0 ],
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 3 ],
					"midpoints" : [ 299.5, 501.0, 276.0, 501.0, 276.0, 357.0, 460.5, 357.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 2079.5, 606.0, 1905.0, 606.0, 1905.0, 600.0, 1791.0, 600.0, 1791.0, 387.0, 1659.5, 387.0 ],
					"source" : [ "obj-220", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-222", 0 ],
					"midpoints" : [ 1819.5, 630.0, 1819.5, 630.0 ],
					"source" : [ "obj-221", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-224", 0 ],
					"midpoints" : [ 1819.5, 657.0, 2067.0, 657.0, 2067.0, 630.0, 2079.5, 630.0 ],
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 2079.5, 657.0, 2067.0, 657.0, 2067.0, 606.0, 1905.0, 606.0, 1905.0, 600.0, 1791.0, 600.0, 1791.0, 387.0, 1659.5, 387.0 ],
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-226", 0 ],
					"midpoints" : [ 1819.5, 690.0, 1819.5, 690.0 ],
					"source" : [ "obj-225", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 0 ],
					"midpoints" : [ 1819.5, 717.0, 2067.0, 717.0, 2067.0, 690.0, 2079.5, 690.0 ],
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 2079.5, 717.0, 1782.0, 717.0, 1782.0, 432.0, 1647.0, 432.0, 1647.0, 396.0, 1659.5, 396.0 ],
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-230", 0 ],
					"midpoints" : [ 1819.5, 756.0, 1776.0, 756.0, 1776.0, 726.0, 1919.5, 726.0 ],
					"source" : [ "obj-229", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 3 ],
					"midpoints" : [ 394.5, 501.0, 597.0, 501.0, 597.0, 414.0, 480.0, 414.0, 480.0, 387.0, 460.5, 387.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"midpoints" : [ 1919.5, 795.0, 1710.0, 795.0, 1710.0, 735.0, 1635.0, 735.0, 1635.0, 396.0, 1659.5, 396.0 ],
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"midpoints" : [ 2019.5, 795.0, 1776.0, 795.0, 1776.0, 720.0, 1785.0, 720.0, 1785.0, 432.0, 1800.0, 432.0, 1800.0, 255.0, 1854.0, 255.0, 1854.0, 219.0, 1819.5, 219.0 ],
					"order" : 1,
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"midpoints" : [ 2019.5, 795.0, 1776.0, 795.0, 1776.0, 720.0, 1785.0, 720.0, 1785.0, 432.0, 1800.0, 432.0, 1800.0, 255.0, 1857.0, 255.0, 1857.0, 219.0, 1869.5, 219.0 ],
					"order" : 0,
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-235", 0 ],
					"midpoints" : [ 1701.5, 687.0, 1659.5, 687.0 ],
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-235", 0 ],
					"midpoints" : [ 1724.5, 687.0, 1659.5, 687.0 ],
					"source" : [ "obj-233", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-239", 0 ],
					"midpoints" : [ 1659.5, 726.0, 1659.5, 726.0 ],
					"source" : [ "obj-235", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"midpoints" : [ 1673.928571428571331, 747.0, 1724.5, 747.0 ],
					"source" : [ "obj-235", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-237", 0 ],
					"midpoints" : [ 1789.5, 759.0, 1789.5, 759.0 ],
					"source" : [ "obj-236", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-239", 1 ],
					"midpoints" : [ 1789.5, 795.0, 1710.0, 795.0, 1710.0, 759.0, 1698.5, 759.0 ],
					"order" : 1,
					"source" : [ "obj-237", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 1 ],
					"midpoints" : [ 1789.5, 786.0, 1773.0, 786.0, 1773.0, 759.0, 1763.5, 759.0 ],
					"order" : 0,
					"source" : [ "obj-237", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 0 ],
					"midpoints" : [ 1659.5, 786.0, 1659.5, 786.0 ],
					"source" : [ "obj-239", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 3 ],
					"midpoints" : [ 489.5, 501.0, 597.0, 501.0, 597.0, 414.0, 480.0, 414.0, 480.0, 387.0, 460.5, 387.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 1 ],
					"midpoints" : [ 1724.5, 786.0, 1685.5, 786.0 ],
					"source" : [ "obj-240", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 0 ],
					"midpoints" : [ 2255.5, 219.0, 2369.5, 219.0 ],
					"source" : [ "obj-243", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-247", 0 ],
					"midpoints" : [ 2232.5, 222.0, 2265.0, 222.0, 2265.0, 219.0, 2279.5, 219.0 ],
					"source" : [ "obj-243", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-251", 0 ],
					"midpoints" : [ 2209.5, 213.0, 2209.5, 213.0 ],
					"source" : [ "obj-243", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-253", 0 ],
					"midpoints" : [ 2369.5, 312.0, 2241.0, 312.0, 2241.0, 303.0, 2209.5, 303.0 ],
					"source" : [ "obj-245", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2419.5, 387.0, 2209.5, 387.0 ],
					"source" : [ "obj-246", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-253", 0 ],
					"midpoints" : [ 2279.5, 264.0, 2319.0, 264.0, 2319.0, 312.0, 2241.0, 312.0, 2241.0, 303.0, 2209.5, 303.0 ],
					"source" : [ "obj-247", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-249", 0 ],
					"midpoints" : [ 2499.5, 273.0, 2499.5, 273.0 ],
					"source" : [ "obj-248", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-251", 1 ],
					"midpoints" : [ 2499.5, 303.0, 2319.0, 303.0, 2319.0, 255.0, 2259.0, 255.0, 2259.0, 246.0, 2248.5, 246.0 ],
					"source" : [ "obj-249", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-252", 0 ],
					"midpoints" : [ 2209.5, 273.0, 2209.5, 273.0 ],
					"source" : [ "obj-251", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-253", 0 ],
					"midpoints" : [ 2209.5, 303.0, 2209.5, 303.0 ],
					"source" : [ "obj-252", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-257", 1 ],
					"midpoints" : [ 2220.0, 333.0, 2475.0, 333.0, 2475.0, 360.0, 2552.5, 360.0 ],
					"order" : 0,
					"source" : [ "obj-253", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 0 ],
					"midpoints" : [ 2209.5, 333.0, 2209.5, 333.0 ],
					"source" : [ "obj-253", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-300", 1 ],
					"midpoints" : [ 2220.0, 333.0, 2187.0, 333.0, 2187.0, 501.0, 2253.0, 501.0, 2253.0, 687.0, 2187.0, 687.0, 2187.0, 969.0, 2226.0, 969.0, 2226.0, 993.0, 2262.5, 993.0 ],
					"order" : 1,
					"source" : [ "obj-253", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-255", 0 ],
					"midpoints" : [ 2499.5, 333.0, 2499.5, 333.0 ],
					"source" : [ "obj-254", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-257", 0 ],
					"midpoints" : [ 2499.5, 363.0, 2499.5, 363.0 ],
					"source" : [ "obj-255", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-251", 0 ],
					"midpoints" : [ 2499.5, 387.0, 2319.0, 387.0, 2319.0, 255.0, 2259.0, 255.0, 2259.0, 237.0, 2209.5, 237.0 ],
					"source" : [ "obj-257", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2209.5, 363.0, 2209.5, 363.0 ],
					"source" : [ "obj-258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-289", 0 ],
					"midpoints" : [ 2209.5, 501.0, 2253.0, 501.0, 2253.0, 687.0, 2209.5, 687.0 ],
					"source" : [ "obj-259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"midpoints" : [ 78.5, 573.0, 585.0, 573.0, 585.0, 510.0, 597.0, 510.0, 597.0, 414.0, 585.0, 414.0, 585.0, 252.0, 672.0, 252.0, 672.0, 243.0, 690.0, 243.0, 690.0, 186.0, 1109.5, 186.0 ],
					"order" : 1,
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 1 ],
					"midpoints" : [ 78.5, 576.0, 585.0, 576.0, 585.0, 906.0, 717.0, 906.0, 717.0, 897.0, 1086.0, 897.0, 1086.0, 927.0, 1162.5, 927.0 ],
					"order" : 0,
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 39.5, 573.0, 585.0, 573.0, 585.0, 510.0, 597.0, 510.0, 597.0, 414.0, 585.0, 414.0, 585.0, 186.0, 609.5, 186.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-262", 0 ],
					"midpoints" : [ 2369.5, 480.0, 2369.5, 480.0 ],
					"source" : [ "obj-261", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 0 ],
					"midpoints" : [ 2369.5, 507.0, 2547.0, 507.0, 2547.0, 480.0, 2559.5, 480.0 ],
					"source" : [ "obj-262", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2559.5, 510.0, 2547.0, 510.0, 2547.0, 462.0, 2571.0, 462.0, 2571.0, 396.0, 2352.0, 396.0, 2352.0, 387.0, 2209.5, 387.0 ],
					"source" : [ "obj-264", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2369.5, 540.0, 2253.0, 540.0, 2253.0, 432.0, 2187.0, 432.0, 2187.0, 396.0, 2209.5, 396.0 ],
					"source" : [ "obj-265", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2439.5, 540.0, 2253.0, 540.0, 2253.0, 432.0, 2187.0, 432.0, 2187.0, 396.0, 2209.5, 396.0 ],
					"source" : [ "obj-266", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2529.5, 549.0, 2448.0, 549.0, 2448.0, 540.0, 2253.0, 540.0, 2253.0, 432.0, 2187.0, 432.0, 2187.0, 396.0, 2209.5, 396.0 ],
					"source" : [ "obj-267", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2609.5, 549.0, 2448.0, 549.0, 2448.0, 540.0, 2253.0, 540.0, 2253.0, 432.0, 2187.0, 432.0, 2187.0, 396.0, 2209.5, 396.0 ],
					"source" : [ "obj-268", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2709.5, 549.0, 2448.0, 549.0, 2448.0, 540.0, 2253.0, 540.0, 2253.0, 432.0, 2187.0, 432.0, 2187.0, 396.0, 2209.5, 396.0 ],
					"source" : [ "obj-269", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 99.5, 534.0, 39.5, 534.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2559.5, 510.0, 2547.0, 510.0, 2547.0, 462.0, 2571.0, 462.0, 2571.0, 396.0, 2352.0, 396.0, 2352.0, 387.0, 2209.5, 387.0 ],
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 0 ],
					"midpoints" : [ 2369.5, 570.0, 2369.5, 570.0 ],
					"source" : [ "obj-271", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-274", 0 ],
					"midpoints" : [ 2369.5, 600.0, 2616.0, 600.0, 2616.0, 570.0, 2629.5, 570.0 ],
					"source" : [ "obj-272", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2629.5, 606.0, 2454.0, 606.0, 2454.0, 600.0, 2253.0, 600.0, 2253.0, 432.0, 2187.0, 432.0, 2187.0, 396.0, 2209.5, 396.0 ],
					"source" : [ "obj-274", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-276", 0 ],
					"midpoints" : [ 2369.5, 630.0, 2369.5, 630.0 ],
					"source" : [ "obj-275", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-278", 0 ],
					"midpoints" : [ 2369.5, 657.0, 2616.0, 657.0, 2616.0, 630.0, 2629.5, 630.0 ],
					"source" : [ "obj-276", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2629.5, 657.0, 2616.0, 657.0, 2616.0, 606.0, 2454.0, 606.0, 2454.0, 600.0, 2253.0, 600.0, 2253.0, 432.0, 2187.0, 432.0, 2187.0, 396.0, 2209.5, 396.0 ],
					"source" : [ "obj-278", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-280", 0 ],
					"midpoints" : [ 2369.5, 690.0, 2369.5, 690.0 ],
					"source" : [ "obj-279", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 139.5, 543.0, 90.0, 543.0, 90.0, 537.0, 39.5, 537.0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 0 ],
					"midpoints" : [ 2369.5, 717.0, 2616.0, 717.0, 2616.0, 690.0, 2629.5, 690.0 ],
					"source" : [ "obj-280", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2629.5, 717.0, 2331.0, 717.0, 2331.0, 432.0, 2187.0, 432.0, 2187.0, 396.0, 2209.5, 396.0 ],
					"source" : [ "obj-282", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-284", 0 ],
					"midpoints" : [ 2369.5, 756.0, 2325.0, 756.0, 2325.0, 726.0, 2469.5, 726.0 ],
					"source" : [ "obj-283", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 2469.5, 795.0, 2325.0, 795.0, 2325.0, 432.0, 2187.0, 432.0, 2187.0, 396.0, 2209.5, 396.0 ],
					"source" : [ "obj-284", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 0 ],
					"midpoints" : [ 2569.5, 795.0, 2325.0, 795.0, 2325.0, 720.0, 2337.0, 720.0, 2337.0, 432.0, 2352.0, 432.0, 2352.0, 255.0, 2406.0, 255.0, 2406.0, 219.0, 2369.5, 219.0 ],
					"order" : 1,
					"source" : [ "obj-285", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-246", 0 ],
					"midpoints" : [ 2569.5, 795.0, 2325.0, 795.0, 2325.0, 720.0, 2337.0, 720.0, 2337.0, 432.0, 2352.0, 432.0, 2352.0, 255.0, 2406.0, 255.0, 2406.0, 219.0, 2419.5, 219.0 ],
					"order" : 0,
					"source" : [ "obj-285", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-289", 0 ],
					"midpoints" : [ 2274.5, 645.0, 2209.5, 645.0 ],
					"source" : [ "obj-286", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-289", 0 ],
					"midpoints" : [ 2285.5, 687.0, 2209.5, 687.0 ],
					"source" : [ "obj-287", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-293", 0 ],
					"midpoints" : [ 2209.5, 726.0, 2209.5, 726.0 ],
					"source" : [ "obj-289", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-294", 0 ],
					"midpoints" : [ 2223.928571428571558, 747.0, 2274.5, 747.0 ],
					"source" : [ "obj-289", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"midpoints" : [ 179.5, 534.0, 204.5, 534.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-291", 0 ],
					"midpoints" : [ 2339.5, 759.0, 2339.5, 759.0 ],
					"source" : [ "obj-290", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-293", 1 ],
					"midpoints" : [ 2339.5, 795.0, 2259.0, 795.0, 2259.0, 759.0, 2248.5, 759.0 ],
					"order" : 1,
					"source" : [ "obj-291", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-294", 1 ],
					"midpoints" : [ 2339.5, 786.0, 2325.0, 786.0, 2325.0, 759.0, 2313.5, 759.0 ],
					"order" : 0,
					"source" : [ "obj-291", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-295", 0 ],
					"midpoints" : [ 2209.5, 786.0, 2209.5, 786.0 ],
					"source" : [ "obj-293", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-295", 1 ],
					"midpoints" : [ 2274.5, 786.0, 2235.5, 786.0 ],
					"source" : [ "obj-294", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-298", 0 ],
					"midpoints" : [ 2209.5, 969.0, 2209.5, 969.0 ],
					"source" : [ "obj-297", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-300", 0 ],
					"midpoints" : [ 2209.5, 999.0, 2209.5, 999.0 ],
					"source" : [ "obj-298", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 179.5, 573.0, 585.0, 573.0, 585.0, 510.0, 597.0, 510.0, 597.0, 414.0, 585.0, 414.0, 585.0, 252.0, 672.0, 252.0, 672.0, 243.0, 684.5, 243.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-301", 0 ],
					"midpoints" : [ 2209.5, 1026.0, 2209.5, 1026.0 ],
					"source" : [ "obj-300", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-302", 0 ],
					"midpoints" : [ 2241.5, 1053.0, 2279.5, 1053.0 ],
					"source" : [ "obj-301", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-303", 0 ],
					"midpoints" : [ 2209.5, 1053.0, 2209.5, 1053.0 ],
					"source" : [ "obj-301", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-253", 0 ],
					"midpoints" : [ 2279.5, 1080.0, 2187.0, 1080.0, 2187.0, 549.0, 2253.0, 549.0, 2253.0, 432.0, 2187.0, 432.0, 2187.0, 303.0, 2209.5, 303.0 ],
					"source" : [ "obj-302", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-304", 0 ],
					"midpoints" : [ 2209.5, 1080.0, 2209.5, 1080.0 ],
					"source" : [ "obj-303", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-305", 0 ],
					"midpoints" : [ 2209.5, 1113.0, 2209.5, 1113.0 ],
					"source" : [ "obj-304", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"midpoints" : [ 239.5, 534.0, 264.5, 534.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"midpoints" : [ 239.5, 573.0, 585.0, 573.0, 585.0, 510.0, 807.0, 510.0, 807.0, 366.0, 1035.0, 366.0, 1035.0, 270.0, 1083.0, 270.0, 1083.0, 252.0, 1170.0, 252.0, 1170.0, 243.0, 1184.5, 243.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 39.5, 639.0, 39.5, 639.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 39.5, 669.0, 39.5, 669.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 159.5, 639.0, 159.5, 639.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 159.5, 666.0, 159.5, 666.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 39.5, 210.0, 39.5, 210.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"midpoints" : [ 159.5, 699.0, 135.0, 699.0, 135.0, 672.0, 113.5, 672.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 39.5, 699.0, 15.0, 699.0, 15.0, 303.0, 299.5, 303.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 39.5, 765.0, 39.5, 765.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 39.5, 792.0, 87.0, 792.0, 87.0, 765.0, 339.5, 765.0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 39.5, 876.0, 75.0, 876.0, 75.0, 840.0, 89.5, 840.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"midpoints" : [ 39.5, 237.0, 15.0, 237.0, 15.0, 387.0, 93.166666666666657, 387.0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"midpoints" : [ 39.5, 237.0, 15.0, 237.0, 15.0, 357.0, 276.0, 357.0, 276.0, 387.0, 353.166666666666686, 387.0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 39.5, 948.0, 39.5, 948.0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"midpoints" : [ 39.5, 1014.0, 162.0, 1014.0, 162.0, 987.0, 189.5, 987.0 ],
					"order" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"midpoints" : [ 39.5, 1014.0, 39.5, 1014.0 ],
					"order" : 1,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 1 ],
					"midpoints" : [ 139.699999999999989, 1053.0, 1086.0, 1053.0, 1086.0, 1047.0, 1356.0, 1047.0, 1356.0, 927.0, 1432.5, 927.0 ],
					"order" : 1,
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 1 ],
					"midpoints" : [ 139.699999999999989, 1065.0, 1086.0, 1065.0, 1086.0, 1086.0, 1208.5, 1086.0 ],
					"order" : 2,
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"midpoints" : [ 239.900000000000006, 1065.0, 1086.0, 1065.0, 1086.0, 1122.0, 1347.0, 1122.0, 1347.0, 1086.0, 1369.5, 1086.0 ],
					"source" : [ "obj-55", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-189", 0 ],
					"midpoints" : [ 139.699999999999989, 1052.0, 899.600000000000023, 1052.0, 899.600000000000023, 180.0, 1659.5, 180.0 ],
					"order" : 0,
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-243", 0 ],
					"midpoints" : [ 440.300000000000011, 1052.0, 1324.900000000000091, 1052.0, 1324.900000000000091, 180.0, 2209.5, 180.0 ],
					"source" : [ "obj-55", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"midpoints" : [ 39.5, 1044.0, 15.0, 1044.0, 15.0, 525.0, 75.0, 525.0, 75.0, 537.0, 78.5, 537.0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"midpoints" : [ 340.100000000000023, 1053.0, 123.0, 1053.0, 123.0, 1047.0, 39.5, 1047.0 ],
					"source" : [ "obj-55", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 39.5, 1074.0, 39.5, 1074.0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 632.5, 213.0, 585.0, 213.0, 585.0, 462.0, 597.0, 462.0, 597.0, 516.0, 582.0, 516.0, 582.0, 537.0, 179.5, 537.0 ],
					"order" : 1,
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"midpoints" : [ 655.5, 213.0, 759.5, 213.0 ],
					"source" : [ "obj-60", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 632.5, 213.0, 735.0, 213.0, 735.0, 207.0, 899.5, 207.0 ],
					"order" : 0,
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"midpoints" : [ 609.5, 213.0, 609.5, 213.0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"midpoints" : [ 759.5, 243.0, 759.5, 243.0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"midpoints" : [ 899.5, 243.0, 759.5, 243.0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 609.5, 243.0, 609.5, 243.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 684.5, 273.0, 684.5, 273.0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 684.5, 300.0, 684.5, 300.0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 899.5, 300.0, 899.5, 300.0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 899.5, 327.0, 609.5, 327.0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 989.5, 273.0, 989.5, 273.0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 39.5, 270.0, 39.5, 270.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"midpoints" : [ 989.5, 300.0, 989.5, 300.0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 989.5, 336.0, 816.0, 336.0, 816.0, 327.0, 609.5, 327.0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 2 ],
					"midpoints" : [ 721.5, 372.0, 770.5, 372.0 ],
					"source" : [ "obj-73", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"midpoints" : [ 684.5, 372.0, 690.0, 372.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 795.5, 375.0, 829.5, 375.0 ],
					"source" : [ "obj-73", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 1 ],
					"midpoints" : [ 758.5, 372.0, 807.0, 372.0, 807.0, 408.0, 875.5, 408.0 ],
					"order" : 1,
					"source" : [ "obj-73", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"midpoints" : [ 758.5, 372.0, 807.0, 372.0, 807.0, 444.0, 897.0, 444.0, 897.0, 435.0, 955.5, 435.0 ],
					"order" : 0,
					"source" : [ "obj-73", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 770.5, 516.0, 585.0, 516.0, 585.0, 840.0, 609.5, 840.0 ],
					"order" : 2,
					"source" : [ "obj-74", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"midpoints" : [ 770.5, 405.0, 829.5, 405.0 ],
					"order" : 1,
					"source" : [ "obj-74", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 770.5, 405.0, 909.5, 405.0 ],
					"order" : 0,
					"source" : [ "obj-74", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"midpoints" : [ 609.5, 405.0, 609.5, 405.0 ],
					"order" : 1,
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"midpoints" : [ 690.0, 516.0, 674.5, 516.0 ],
					"source" : [ "obj-74", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"midpoints" : [ 609.5, 516.0, 585.0, 516.0, 585.0, 672.0, 609.5, 672.0 ],
					"order" : 0,
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"midpoints" : [ 829.5, 435.0, 829.5, 435.0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"midpoints" : [ 909.5, 435.0, 909.5, 435.0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 1 ],
					"midpoints" : [ 909.5, 465.0, 882.5, 465.0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"midpoints" : [ 829.5, 492.0, 829.5, 492.0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 2 ],
					"midpoints" : [ 39.5, 306.0, 75.0, 306.0, 75.0, 348.0, 146.833333333333314, 348.0 ],
					"order" : 3,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 2 ],
					"midpoints" : [ 39.5, 303.0, 276.0, 303.0, 276.0, 297.0, 333.0, 297.0, 333.0, 348.0, 406.833333333333314, 348.0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"midpoints" : [ 39.5, 297.0, 15.0, 297.0, 15.0, 495.0, 204.5, 495.0 ],
					"order" : 2,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"midpoints" : [ 39.5, 297.0, 15.0, 297.0, 15.0, 495.0, 264.5, 495.0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 1 ],
					"midpoints" : [ 829.5, 519.0, 651.0, 519.0, 651.0, 525.0, 630.5, 525.0 ],
					"order" : 1,
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 1 ],
					"midpoints" : [ 829.5, 528.0, 705.0, 528.0, 705.0, 525.0, 695.5, 525.0 ],
					"order" : 0,
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"midpoints" : [ 609.5, 555.0, 585.0, 555.0, 585.0, 924.0, 609.5, 924.0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 674.5, 555.0, 585.0, 555.0, 585.0, 924.0, 674.5, 924.0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 609.5, 639.0, 585.0, 639.0, 585.0, 510.0, 597.0, 510.0, 597.0, 414.0, 585.0, 414.0, 585.0, 336.0, 684.5, 336.0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 654.5, 639.0, 585.0, 639.0, 585.0, 510.0, 597.0, 510.0, 597.0, 414.0, 585.0, 414.0, 585.0, 336.0, 684.5, 336.0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 729.5, 639.0, 585.0, 639.0, 585.0, 510.0, 597.0, 510.0, 597.0, 414.0, 585.0, 414.0, 585.0, 336.0, 684.5, 336.0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 784.5, 639.0, 585.0, 639.0, 585.0, 510.0, 597.0, 510.0, 597.0, 414.0, 585.0, 414.0, 585.0, 336.0, 684.5, 336.0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 839.5, 681.0, 645.0, 681.0, 645.0, 672.0, 585.0, 672.0, 585.0, 510.0, 597.0, 510.0, 597.0, 414.0, 585.0, 414.0, 585.0, 336.0, 684.5, 336.0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 894.5, 681.0, 645.0, 681.0, 645.0, 672.0, 585.0, 672.0, 585.0, 510.0, 597.0, 510.0, 597.0, 414.0, 585.0, 414.0, 585.0, 336.0, 684.5, 336.0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 959.5, 648.0, 1083.0, 648.0, 1083.0, 336.0, 816.0, 336.0, 816.0, 327.0, 684.5, 327.0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 609.5, 699.0, 609.5, 699.0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 609.5, 726.0, 609.5, 726.0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"midpoints" : [ 609.5, 756.0, 609.5, 756.0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 609.5, 783.0, 609.5, 783.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"midpoints" : [ 609.5, 810.0, 609.5, 810.0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 609.5, 840.0, 609.5, 840.0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"midpoints" : [ 641.5, 840.0, 663.0, 840.0, 663.0, 819.0, 717.0, 819.0, 717.0, 810.0, 729.5, 810.0 ],
					"source" : [ "obj-97", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-235" : [ "vst~", "vst~", 0 ],
			"obj-289" : [ "vst~[1]", "vst~[1]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "FM8_20260930.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Massive.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
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
				"name" : "chain_shaper.js",
				"bootpath" : "~/repos/aimat/resources/examples/max",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
