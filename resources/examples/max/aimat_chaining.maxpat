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
		"rect" : [ 40.0, 60.0, 1400.0, 900.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 15.0, 520.0, 29.0 ],
					"text" : "AIMAT CHAINING  (test patch)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 45.0, 700.0, 47.0 ],
					"text" : "Close aimat_example.maxpat first: both listen on port 7400.\nStart AIMAT first:  .venv/bin/aimat start   (and watch  .venv/bin/aimat logs)\nClick each [plug( to load a synth, then click a speaker icon to turn audio on."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 125.0, 320.0, 24.0 ],
					"text" : "1. MUSIKA  (starts the whole chain)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 160.0, 93.0, 22.0 ],
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
					"patching_rect" : [ 30.0, 190.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 85.0, 190.0, 190.0, 20.0 ],
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
					"patching_rect" : [ 30.0, 220.0, 93.0, 22.0 ],
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
					"patching_rect" : [ 30.0, 250.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 85.0, 250.0, 150.0, 20.0 ],
					"text" : "seconds of audio"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 280.0, 107.0, 22.0 ],
					"text" : "symbol techno"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 280.0, 93.0, 22.0 ],
					"text" : "symbol misc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 220.0, 280.0, 100.0, 22.0 ],
					"text" : "symbol pipes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 315.0, 40.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 322.0, 100.0, 20.0 ],
					"text" : "GENERATE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 365.0, 170.0, 22.0 ],
					"text" : "pack musika 1. 20 techno"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 395.0, 170.0, 22.0 ],
					"text" : "prepend /trigger_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 425.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 480.0, 200.0, 24.0 ],
					"text" : "AIMAT connection"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 515.0, 100.0, 22.0 ],
					"text" : "r aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 545.0, 170.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 5005"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 590.0, 121.0, 22.0 ],
					"text" : "udpreceive 7400"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 620.0, 93.0, 22.0 ],
					"text" : "print aimat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"patching_rect" : [ 30.0, 635.0, 520.0, 22.0 ],
					"text" : "route /musika_done /basic_pitch_done /midi_ddsp_done /status /continuator_done"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 680.0, 520.0, 20.0 ],
					"text" : "outlets: musika | basic_pitch | midi_ddsp | status | continuator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 715.0, 93.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 745.0, 230.0, 22.0 ],
					"text" : "\"continuator generation complete!\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 775.0, 240.0, 20.0 ],
					"text" : "status (the logs window is the truth)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 125.0, 360.0, 24.0 ],
					"text" : "2. TEXTURE  (Musika audio, looping)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 600.0, 160.0, 51.0, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 660.0, 190.0, 121.0, 22.0 ],
					"text" : "prepend replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 660.0, 220.0, 163.0, 22.0 ],
					"text" : "buffer~ chain_musika"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 190.0, 79.0, 22.0 ],
					"text" : "startloop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 800.0, 160.0, 72.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 800.0, 190.0, 58.0, 22.0 ],
					"text" : "loop 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 870.0, 160.0, 93.0, 22.0 ],
					"text" : "loadmess 1."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-36",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 870.0, 190.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 925.0, 190.0, 60.0, 20.0 ],
					"text" : "speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 870.0, 220.0, 44.0, 22.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 600.0, 255.0, 160.0, 22.0 ],
					"text" : "groove~ chain_musika 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 710.0, 300.0, 100.0, 22.0 ],
					"text" : "loadmess 0.8"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-41",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 710.0, 330.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 765.0, 330.0, 60.0, 20.0 ],
					"text" : "volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 600.0, 360.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 660.0, 360.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 395.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 480.0, 300.0, 24.0 ],
					"text" : "CHAIN SWITCHES"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 515.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 600.0, 545.0, 24.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 545.0, 220.0, 20.0 ],
					"text" : "auto-transcribe (Musika → Basic Pitch)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 575.0, 72.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 605.0, 149.0, 22.0 ],
					"text" : "prepend basic_pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 635.0, 170.0, 22.0 ],
					"text" : "prepend /trigger_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 665.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 860.0, 515.0, 86.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 860.0, 545.0, 24.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 890.0, 545.0, 234.0, 20.0 ],
					"text" : "auto-continue (Basic Pitch → Continuator)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 860.0, 575.0, 72.0, 22.0 ],
					"text" : "gate 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 860.0, 605.0, 149.0, 22.0 ],
					"text" : "prepend continuator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 860.0, 635.0, 170.0, 22.0 ],
					"text" : "prepend /trigger_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 860.0, 665.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1150.0, 125.0, 320.0, 24.0 ],
					"text" : "3. TRANSCRIPTION  (Basic Pitch MIDI)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "bang" ],
					"patching_rect" : [ 1150.0, 165.0, 65.0, 22.0 ],
					"text" : "t b s b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1220.0, 165.0, 260.0, 20.0 ],
					"text" : "right to left: stop + notes off, load, play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 200.0, 44.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1350.0, 200.0, 149.0, 22.0 ],
					"text" : "midievent 176 123 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1220.0, 200.0, 100.0, 22.0 ],
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1150.0, 200.0, 86.0, 22.0 ],
					"text" : "start 1024"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "" ],
					"patching_rect" : [ 1150.0, 235.0, 40.0, 22.0 ],
					"text" : "seq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 1150.0, 265.0, 79.0, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1150.0, 295.0, 163.0, 22.0 ],
					"text" : "prepend midievent 144"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1310.0, 295.0, 44.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1355.0, 295.0, 44.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1400.0, 295.0, 180.0, 20.0 ],
					"text" : "soft pad or bells"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 1150.0, 330.0, 120.0, 22.0 ],
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
							"blob" : "11244.VMjLgL9J...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fyLx.iKtHjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3xSSAmKQsDT5UTYTcVdrIyYFACUqjCVI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKtPWNA4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKMESSW4jUQITXnQjanEWSxPkQCkDSxXjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtfjKt3hKD4hKt3hYB4hKt3xctX1RtfzPtPmKtvjKyHjK24hKL4BQC4hct.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKt3lat3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hKTIjXqT0PME2T2EEcJM2YKMVcUYlZpYkPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3hcA4hKt3xLt3BStvzQtXlKtPkKDYjKpEjcC4hKt3BTAAUVt.0QtrVPlIlKtHjKKEjYh4hZF4RdAYGVtXlQtDWPPkkKHcjKR4hKt3xLD4xYA4xXtnlQtDSPPkkKtHjKIEjYg4BSG4hdAYlXtP0QtLWPPkkKyXjK5Ejch4hKt3hKt3hKt3hKtrxJqrxJC4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKA4hKt3BQt3hKtXlKt3hKtLjKt3hKXQjKMEjKN4hat3hKtXVTtnGQtHiKtfjK1QjKqEjcY4BQF4RZAAEYtfkKt3hKlIjKt3hKBEjYh4hZF4RaA4hVt.0QtXlKtPkKDYjKpEjKC4hKt3BSAYWXtLiQtzVPtfjKHUjKqEjKg4BUF4xYAYmXtPkQtzjKt3hK1QjK0EjYg4hXF4Rct.UTtf0QtTWPtDlKXcjKuEjYg4hXF4RRt3hKt3RQtfWP1ElKLYjKqEjch4BSG4xZA4RVtnlKt3hK1QkKpcjKzEjKi4hYF4hYt3BUtPjQtnVPPIjKt3hKSEDTj4xLF4hdA4hVtPkQtnWPPokKLYjKt3hKt3hXt3hKtXWPt3hKtHVPt.kKLYjK0EjKg4xMF4BdAAkKt3hKtXmKPQjKt3hKhEjKP4BTF4xZAY1XtnlQtjVPPkkKPcjKzDjKh4BUF4BaA4RXtPjQtzVP1IlKD4hKt3BTL4hbt3hKt3xUt3BQtjWP1ElKTcjKzEjKY4BTG4BMA4hXtPkQtDjKt3hKtLjKG4hKt3hcE4hKA4xXtPkQtLWPtHlK2XjKA4hKt3hKC4hQt3hKtXWQt3RPlMlKTYjK3EjKg4BVt3hKt.EStLiPtHiKlsjKDMjK54hYA4hKt3hXA4BTtf0QtrVPlIlK5YjKF4hKt3BQC4BctXWStLiPtbmKtzjKh4hKt3hKW4hKD4RLAAkVtvzQt7VPlgkKD4hKt3hKL4BQt3hKt3hKt3hKtHjKt3hKPoGUIQCUj4hKt3BThEjKt3hKt3hKP4hKt3hKt0zUZQWQt3hKt3hKt3hKtTDLEcDYGclP4XmZtMUPl4jXBk2QxEDcE4hKt3hKt3hKD0TUR4zZG4hKt.kKt3hKtfkKt3hKt3hKt3hKQM0ZpMUPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt.kQt3hKtDjKt3hKX4hKt3hYA4hKt3BUAAkVtnmQtfVPlIlKTYjKA4hKt3hYt3hKt3hTtPjQtfWPPElK2XjKzEDTZ4BSF4hKt3hKt3hKt3RNo4hKt3hKA4hKt3BQt3hKtXVPt3hKtPTPPkkKPcjKvDjYg4BUF4hKt3hKt3hKt3RN44hKt3hKB4hKt3BQt3hKtXlPt3hKtHTPlIlKpYjKsEjKZ4BTG4BcAAUVtvzQtjWPt3hKt3hKt3hKlsBQt3hKtXmKt3hKtDjKt3hKh4hKt3BTQ4xLF4RLA4BRtPDQtLWPtLlKt3hKt3hKt3hKy7DQt3hKt.kKt3hKP4hKt3hKH4hKt3BVE4xZA4RXtbiQtjVPPokKPcjKzDjKt3hKt3hKt3hYqPkKt3hKPEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqXjKt3hKD4hKt3hYt3hKt3hPt3hKtfEQtfUPP4hKt3hKF4hKt3BQD4xbAYWXtP0QtPWPtLlKt3hKt3hKt3hKy7jVt3hKtPjKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqTmKt3hKtDjKt3hKP4hKt3hKB4hKt3BUAAkVtnmQtfVPtfjKTQjKzEjYi4BQt3hKtXVPt3hKtDTPtLlKPcjKmEjcX4hbF4hKt3hKt3hKt3RNoEjKt3hKA4hKt3BQt3hKt.UPt3hKtPTPPkkKLYjKmEDTj4hKt3hKt3hKt3xLOcjKt3hKH4hKt3BTt3hKt3xQt3hKtvTQt.SP1IlKPcjKmEDTZ4xLF4hKt3hKt3hKt3RNCIjKt3hKC4hKt3BQt3hKtXWPt3hKtHUPPkkK1YjKqEDTX4BSG4xZA4hKt3hKt3hKtX1Jp4hKt3hKA4hKt3RPt3hKt.kKt3hK1EjKt3hKAEDTg4hKG4hYt.UTtLiQtDSPP4hKt3hKG4hKt3BQD4hdA4xXtPjQtjVP1okKtHjKt3hKt3hKt3hK4LEQt3hKtDjKt3hKD4hKt3BTA4hKt3BQAAUVtvjQtbVPPQlKt3hKt3hKt3hKy7jTt3hKtfjKt3hKP4hKt3hKG4hKt3BSE4BLAYmXt.0QtbVPPokKyXjKt3hKt3hKt3hK4jGQt3hKtLjKt3hKD4hKt3hcA4hKt3hTAAUVtXmQtrVPPgkKLcjKqEjKt3hKt3hKt3hYq.UPt3hKtDjKt3hKA4hKt3BTt3hKtXVPt3hKt7TPPMlKPcjK1EDTi4BTG4RPt3hKtfkKt3hKlUkK2XjKxEDTi4hdF4xZA4hKt3hKt3hKtX1Jy3hKt3BTt3hKt3RPt3hKtXlKt3hKlUkKTYjKxEjcg4BSF4xaA4xXtn1Qt3hKt3hKt3hKtjyPD4hKt3hPt3hKtPjKt3hKPIjKt3hKSEjKi4BRG4hYtXWUtnlQtnVPtLlKlYjKt3hKt3hKt3hK4j2Pt3hKtLjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqLkKt3hKP4hKt3hKD4hKt3BSt3hKt3xTtfEQt7TPP4hKt3hKD4hKt3BRE4xYA4xXtPkQt3hKt3hKt3hKtjSZB4hKt3RPt3hKtPjKt3hK1EjKt3hKVEDTZ4BRF4BdAAEVt.0QtTWPt3hKt3hKt3hKlshbt3hKtXlKt3hKtDjKt3hKX4hKt3hKU4hZF4xbAYFVtfzQtrVPt3hKt3hKt3hKlshct3hKtXmKt3hKtDjKt3hKh4hKt3hKU4BRG4xZAAUXtbiQtHWP1ElKt3hKt3hKt3hKy7TSt3hKt.kKt3hKP4hKt3hKD4hKt3BSt3hKt.ETtfzQtXWPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7DRB4hKtPjKt3hKP4hKt3hKD4hKt3BSE4hdAAUVt3xQt3hKt3hKt3hKtjyTq4hKt3hPt3hKtPjKt3hKtDjKt3hKGEDTX4BTG4xZA4hKt3hKt3hKtX1JpgjKt3hct3hKt3RPt3hKtHlKt3hK1QkKlYjKvDjYY4BVF4hbAAUVt3hKt3hKt3hKtLySMIjKt3BTt3hKt.kKt3hKtPjKt3hKT4hKt3BTS4xMF4BdA4hXtXlQtDjKt3hKD4hKt3hKV4hKt3hKt3hKt3xLOUkKt3hKD4hKt3BTt3hKt3RPt3hKtnVQt3hKt3hKt3hKtjSZE4hKt3hPt3hKtPjKt3hKPEjKt3hKREjYg4BTF4hYt3hUt3hKt3hKt3hKtLySW4hKt3BSt3hKt.kKt3hKtTjKt3hKHUjKzEjKY4hKB4RVA4hKt3hKt3hKtX1JlEjKt3hKA4hKt3RPt3hKtfjKt3hKlEjKt3hKMEDTX4BSG4hdAAUVtfzQtDjKt3hKX4hKt3hcS4BUG4hdA4hXtP0QtnWPt3hKt3hKt3hKlsBTG4hKt.kKt3hKtDjKt3hKT4hKt3BTR4xLF4hcAA0Xt.0Qt3hKt3hKt3hKtjyTi4hKt3hPt3hKtPjKt3hKl4hKt3hKE4hKt3hKE4xaA4xXtvjQt3VPP4hKt3hKD4hKt3BTE4BLAYVXtPkQt3hKt3hKt3hKtjSZi4hKt3RPt3hKtPjKt3hKPIjKt3hKTEjYh4BQF4BcAYmXt3xQtTWP1IlKTYjKt3hKt3hKt3hK4j2Xt3hKtHjKt3hKD4hKt3BTt3hKt3hQt3hKtPUQtPWPPokKLcjK0EjYg4BQt3hKtXVPt3hKtPTPPkkKPcjKvDjYg4BUF4hKt3hKt3hKt3RNSQlKt3hKA4hKt3BQt3hKt.kKt3hKtTjKt3hKhQjKxEDTZ4BTF4xZAAkKt3hKtPjKt3hKPUjKuEDTg4BUF4hKt3hKt3hKt3RN4UlKt3hKA4hKt3BQt3hKtXlKt3hKtbjKt3hKDUjKvDDTX4hcF4xaA4xXtn1QtDjKt3hKX4hKt3BTP4xLF4xYA4RXtbiQtzVPt3hKt3hKt3hKlshKH4hKt.kKt3hKtDjKt3hKh4hKt3hKQ4hZF4RaAAkVt.0QtbVPtDlKt3hKt3hKt3hKy7DQB4hKtfjKt3hKP4hKt3hKH4hKt3BUt3hKt3RTtfzQt7VPlMlKTYjKA4hKt3BVt3hKtX2TtLiQtTmK1MkKXYjKrEjKt3hKt3hKt3hYqLSPt3hKP4hKt3hKA4hKt3BUt3hKt3RTtfzQt7VPlMlKTYjKt3hKt3hKt3hK4j2Qt3hKtHjKt3hKD4hKt3hKA4hKt3BUAYWXtLiQtrVPt3hKt3hKt3hKlshKB4hKtXmKt3hKtDjKt3hKP4hKt3hYP4BQF4RdAYmXt3hKt3hKt3hKtLySm4hKt3BTt3hKt.kKt3hKtbjKt3hKXUjK0EjKg4BUG4xbAAUVt3hPt3hKt3hKt3hKtjSZH4hKt3RQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRXt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxJA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJH4hKt3BQt3hKt3hPt3hKtPjKt3hKPUjKvDjYX4BUF4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JLIjKt3BTt3hKt3RPt3hKtfkKt3hKlUkK2XjKxEDTi4hdF4xZA4hKt3hKt3hKtX1JTIjKt3hYt3hKt3RPt3hKtPkKt3hKtDkKHcjKuEjYi4BUF4hKt3hKt3hKt3RNCkjKt3hKC4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJS4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJkEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqXjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqTlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJq7jPt3hKtDjKt3hKl4hKt3hcA4hKt3xPAAEVtfjQt7VPlElKTYjK5EDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOwlKt3hKD4hKt3BTt3hKt3BQt3hKt.UQtPSPtHlKTYjKt3hKt3hKt3hK4jWRt3hKtHjKt3hKD4hKt3hKA4hKt3xTAAkVt31QtrVPt3hKt3hKt3hKlshYB4hKtXmKt3hKtDjKt3hKL4hKt3BTP4hZF4BdA4hKt3hKt3hKtX1JpIjKt3hKA4hKt3RPt3hKt.kKt3hKlAkKDYjK4Ejch4hKt3hKt3hKt3xLOAmKt3hKT4hKt3BTt3hKt3hQt3hKt.UQtfWPPkkKHYjKxEDTY4hKt3hKt3hKt3xLOEmKt3hKX4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJqDjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqfjKt3hKD4hKt3hKB4hKt3BRt3hKtvTQt3VPPkkK1YjKrEjKH4BUD4RTAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySx4hKt3BQt3hKt.kKt3hKtPjKt3hK1QjKPEjKH4hYE4hKt3hKt3hKt3RNSsjKt3hKB4hKt3BQt3hKt3RPt3hKtvTPtPkKtHjKYEjKt3hKt3hKt3hYqLiPt3hK14hKt3hKA4hKt3BTt3hKt3hTt3RQtXlKtXkKt3hKt3hKt3hKy7Tct3hKt.kKt3hKP4hKt3hKD4hKt3hYD4BTA4BRtXVQt3hKt3hKt3hKtjyPL4hKt3RQt3hKtPjKt3hKlEjKt3hKVEjcg4hcF4BLAAUXtPkQt3hKt3hKt3hKtjyTL4hKt3hQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRYt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxSB4hKt3RPt3hKtXlKt3hK1EjKt3hKPEDTY4BQF4RbA4BRtPEQtDUPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7Ddt3hKtPjKt3hKP4hKt3hKH4hKt3hKE4xZAAEVtHmQtXlKPwjKtHjKXEjKt3hKt3hKt3hYqvzPt3hKl4hKt3hKA4hKt3hYt3hKt3BUtPkQtbVP1okKtHjK24hKH4hZE4hKt3hKt3hKt3RNC0jKt3hKC4hKt3BQt3hKt3hPt3hKt.UPPkkKDYjKwEjKH4BRC4hYt3hUt3hKt3hKt3hKtLySw3hKt3BTt3hKt.kKt3hKtjjKt3hKtTjKqEDTX4hbF4hYtXFSt3hPtjUPtfjKt3hKt3hKt3hKy7jLt3hKtPkKt3hKP4hKt3hKB4hKt3BQE4xct3hKt3hKt3hKtX1JTMjKt3hYA4hKt3RPt3hKtfjKt3hKPQkKHMjKt3hKt3hKt3hK4LjSt3hKtbjKt3hKD4hKt3hYA4hKt3hUAYWXtXmQt.SPPElKTYjKt3hKt3hKt3hK4LkSt3hKtfjKt3hKD4hKt3hKB4hKt3BRt3hKt.UQtbVPtDlKxYjKl4hcU4BQF4haAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLyS03hKt3BQt3hKt.kKt3hKtTjKt3hK5QjK0EDTi4BTG4haA4hKt3hKt3hKtX1JxMjKt3hYt3hKt3RPt3hKtXlKt3hKPMkK2XjKpEjci4hYF4xZAAUVtXmQt3hKt3hKt3hKtjyPO4hKt3xPt3hKtPjKt3hKtDjKt3hKSEDTZ4haG4xZA4hKt3hKt3hKtX1J5MjKt3hKA4hKt3RPt3hKtfkKt3hKlAkKHcjKuEjcY4hYF4hdA4hKt3hKt3hKtX1JyLjKt3BTA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJF4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJk4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJOIjKt3hKA4hKt3hYt3hKtXVPt3hKt.UPtnkKDYjK4EDTY4BRG4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1J2LjKt3BTt3hKt3RPt3hKt.kKt3hKlQkKDYjK5EDTY4hKt3hKt3hKt3xLO4RPt3hKH4hKt3BTt3hKt3xQt3hKtLCQtTWPtLlKLYjKtEDTY4BSG4hKt3hKt3hKt3RNCIkKt3hKC4hKt3BQt3hKt.UPt3hKtLTP1ElK1YjK0EjYh4hKt3hKt3hKt3xLOETPt3hKP4hKt3BTt3hKt3RRt3hKtvTQtHSPPkkKTYjK1EjKH4hdD4xaAYVXt3hKt3hKt3hKtLySCEjKt3BUt3hKt.kKt3hKtjjKt3hKLUjKxDDTY4BUF4hcA4BRtnGQtbVPtPlKt3hKt3hKt3hKy7DQA4hKtfkKt3hKP4hKt3hKF4hKt3BRE4RcA4xXtPjQtnWPPkkKt3hKt3hKt3hKy7jPA4hKtHlKt3hKP4hKt3hKG4hKt3BTD4BdAAEYtbiPtbUPPkkKPcjKt3hKt3hKt3hK4jVTt3hKtfjKt3hKD4hKt3hKB4hKt3xQt3hKtfEQtHWPPgkKyXjKsEDTY4BRG4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JpQjKt3BTt3hKt3RPt3hKt.kKt3hKlQkKDYjK5EDTY4hKt3hKt3hKt3xLOoTPt3hKH4hKt3BTt3hKt3BQt3hKtvTQtPSPlElKLYjKt3hKt3hKt3hK4j2Tt3hKtLjKt3hKD4hKt3hYA4hKt3xTA4xXtPjQtnWPPokKLYjKt3hKt3hKt3hK4jmTt3hKtPjKt3hKD4hKt3BTA4hKt3BQAAUVt3xQtnWPtnkKt3hKt3hKt3hKy7DSA4hKtPkKt3hKP4hKt3hKE4hKt3BSD4RcA4RXtbiQtfWPt3hKt3hKt3hKlshdD4hKtXVPt3hKtDjKt3hKX4hKt3hYT4xMF4hdAAEVt.0QtrVPt3hKt3hKt3hKlsxLD4hKtXWPt3hKtDjKt3hKh4hKt3hKQ4BRG4BMAY2RtHVQtrVPtLlKt3hKt3hKt3hKy7TTA4hKtXlKt3hKP4hKt3hKH4hKt3hXt3hKt3RUtfzQtrVPPElK2XjKxEjcg4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RNoQkKt3hKA4hKt3BQt3hKt3RPt3hKtHUPPgkKPcjKqEjKt3hKt3hKt3hYqvTQt3hKl4hKt3hKA4hKt3BTt3hKtXGUtn1QtPWP1gkKt3hKt3hKt3hKy7TUA4hKtvjKt3hKP4hKt3hKI4hKt3hZD4BcA4xXtPkQtPWP1IlKpYjK5EDTj4hKt3hKt3hKt3xLOQUPt3hKP4hKt3BTt3hKt3hQt3hKtvTQtnWPPkkKHcjKqEjcg4hKt3hKt3hKt3xLOYUPt3hKT4hKt3BTt3hKt3RQt3hKtHVQt7VPtjkKPcjKtEjKt3hKt3hKt3hYqHVQt3hKlEjKt3hKA4hKt3BVt3hKt.ETt.0QtnWPPgkKLYjKwEjKt3hKt3hKt3hYqXVQt3hK1EjKt3hKA4hKt3BUt3hKt3RTtPkQtjVPPgkKpcjKt3hKt3hKt3hK4LkUt3hKtfjKt3hKD4hKt3hKB4hKt3hQt3hKtfTQtrVPlMlKTYjK3EjYX4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RNoYkKt3hKA4hKt3BQt3hKt3RPt3hKtPUPPokK5YjKqEjKt3hKt3hKt3hYqnWQt3hKl4hKt3hKA4hKt3BVt3hKtXFTtfzQt7VP1kkKlYjK5EjKt3hKt3hKt3hYqXWQt3hK14hKt3hKA4hKt3BVt3hKt3RUtfzQtrVPlgkK1YjKqEjKt3hKt3hKt3hYqLSQt3hKtDjKt3hKA4hKt3hXt3hKt3RTtfzQtPSP1sjKhUjKqEjKi4hKt3hKt3hKt3xLOEVPt3hKT4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJ0EjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqbjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqjlKt3hKP4hKt3hKH4hKt3hZt3hKt3BUtvzQtPSPtfjKPQjKqEjKg4BQF4BMAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySkEjKt3BQt3hKt.kKt3hKtPjKt3hKPUjKuEDTg4BUF4hKt3hKt3hKt3RNSgkKt3hKB4hKt3BQt3hKt3hPt3hKtXTPPkkKTYjKpEjYX4BQF4RZAYmVt3hKt3hKt3hKtLySpEjKt3BSt3hKt.kKt3hKtbjKt3hKHUjKqEjYi4BUF4BdAYmXtPkQt3hKt3hKt3hKtjSZX4hKt3BQt3hKtPjKt3hKlEjKt3hKSEjKi4BUF4BdAAUVtbiQt3hKt3hKt3hKtjSdY4hKt3RQt3hKtPjKt3hKlEjKt3hKDEDTY4BTG4BLAYVXtPkQt3hKt3hKt3hKtjSdX4hKt3hQt3hKtPjKt3hKPEjKt3hKPEDTZ4BTG4RZA4hVt3hKt3hKt3hKtLySqEjKt3hXt3hKt.kKt3hKtbjKt3hKPQjK3EDTj4xMB4xUAAUVt.0Qt3hKt3hKt3hKtjyPX4hKt3BRt3hKtPjKt3hKtHjKt3hKI4hKt3BSD4haAYlXt3hPtPTPPkkK1YjKmEDTj4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RN4ElKt3hKA4hKt3BQt3hKt3RPt3hKtPUPPokK5YjKqEjKt3hKt3hKt3hYqXlQt3hKl4hKt3hKA4hKt3BVt3hKt3xTtbiQtXlK1AkKTcjK5EjKt3hKt3hKt3hYqnmQt3hK14hKt3hKA4hKt3BVt3hKt3hTtnlQtXlK1AkKTcjK5EjKt3hKt3hKt3hYqXmQt3hKtDjKt3hKA4hKt3hYt3hKtXVTtPkQtrVPtjkKHYjKmEjcX4hbF4hKt3hKt3hKt3RN4okKt3hKE4hKt3BQt3hKt3hPt3hKtzTP1ElKPYjKl4hYT4BQF4hdAAUVt3hKt3hKt3hKtLyS2EjKt3BVt3hKt.kKt3hKtjjKt3hK5QjK0EjKY4hKB4BQAAUVt3xQtnWPtnkKt3hKt3hKt3hKy7DbA4hKtHlKt3hKP4hKt3hKG4hKt3BTD4BdAAEYtbiPtbUPPkkKPcjKt3hKt3hKt3hK4LjXt3hKtfjKt3hKD4hKt3hKt3hKt3RPt3hKt.kdTkDMDMlKt3hKSUkKt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3xSk4TRoc1UlkjPTE2ZzQ2Rs41QZEGSREjKt3hKt3hKtPTSUIkSQcjKt3BTt3hKt3hRT4hKt3hKt3hKtD0Tqo1T4EjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKAo1PD4hKPoGQt3hKBo1PD4hKF4hKD4BREwjKZk2ZrElKi4BTt3RTNIiMQwVaSQURFkjM4gTLocWdtIVRX4BQEYlK14BQMUkTNEjdHYVY14hKA4BTg4BTgYlYP4xZq3BRD4hPt3RSBMyPLUDQRYlaDIUbGw1PGQjYCEDapc2ZHYyMWsjas4xMM4BNBMyUhYDTo4BTgYFYC4RQtfGVAcSSCYFTtfjKl4xX4kzQhUzYSMkQ3vDRKAkK0klKt3BRtfWPGY1PLkWPBQ0YQYDRlU2cBcjKt3hbHQjKt3RUPYFVCAkKtnWPt3BQH8jK3QjKCYlKtjyPtX1Pt3hKlQDRW4RNt7jK43hKtDSQlsjcNYFNtLiPt3BVO4BcDUlKF4hKyYzLCwjKP4hK2LjYO4hKtzTPy3hK14RS4wTd43hPCMzMowVVrEDTW4xMtX1P1UjYt4xLGIWPPMkKD4hYkYWPtDjKHMkKw.mKA4BRK4RLt3RPt.0RtHjKlMkcF4RPt.0UtnmKl8jKtXFNlEDNWEyZ4fkVj0lP3wlKMMDTC4RLE4xbAA0Px4hKwcTQNsBR3DVY0LzbxXlPP8jK54hKA4BTG4hdt3xPtLyPx4hat3hKtclXJ4BRGgGZtLlKt3xP0HjKC4BTsUjdu4RStLSYt3BT44RND4hK5okKM4hct3hdV4hKBgjLAQjKtLmKPMjKt3lY2fDTG4BQt3BTKgzRtX1ZlwjKP4hKtTkYj4hcq3hdA4RStXmKtnGSlU1MRYlKP4hPL4BRAwDTtDDQl4hYE4BRPgDTtLDTtfTPLYlKBgjctXlctXlKtX1PlQjKtLlKpIjKHMDRtPjKVkkKTIjYk4hKtfjK1AkKlshKoAkKtnWRXEjK4flKLY2JtbyJq3xaNMiKt3BRqLDYE4hKRozPl4RPt.kKYQ1PnIjPDoVZFgjZ1bjYTAURFQjKqHmKIITVIMyQLAUPt3hKpIzUW8jYXYGRjMkKSgicvjlPM4jPj4BTtXVPtfjYt3zJYgyctnlUzwVQicjUtcEQzQiQuEkKSAkYFEkcTYVbQEkZ2fjPFMVP4vVVD4lMxXmbEkUXF4hU54xJvAibEcGLy7zPzUzZlA0SUglTQQTbYETQAYGTAshKyQCVp4BViA0bCkDTwgFT5sBQVIUTn4lVPImQlkyPAoWPlMkKCgFQOAUVtnmKCs1SHAkXlwVVrAySLk2RoEmK23hKP4BTUgjcLkGSSgDSC4hYEgiPtjiKDYzPL4BcjQEQynEUBETLoIzUq3laHUmK54hKYMja0DjKlYVXAMjYPkzLE4hKGMDVz.0R1LTQygzcOEjUzXVNPgjcvgyPA8DSHA0JyTSTAcyTFQGYtfDVV4hKqXmM2L1MCMCYTgVPQYVU4jiXrkkQtvVStLGQHQkPR0VQ1wzTq3xa1AiKHMjPXwVVrETLtX1ZAYGStPzZl0zPPQmK54hKAEDRt3hKZsFTD4RLBgmKAMScP4BMBgjKt3BSlcmKyTkdA4FbtXFal8lPtwjKtfkYO4xPt3xQXwDSpojYt3xLtnGUB4hKPESRwDkcwjTLuEzP0vTPt3hKtbmKtEWPzMzXPYlKZwVVN4xPBcjYA4xLtH1PP4hKNEDStfmVD4Ra14hKlclYqsDVlMDZHYVSt.EatXjPCQ0L0DkMCAUbAYzPlkGTGY1PlojKvDzLQYmKHEWPtgjKtDDRt3BTIYlKtfzSt3zQt3hcDYlKtLySlIjK04hPt3hdIgjKtjiKk4BTEYlPtLyPLEzLS4hKHQVPNITYAA0Rl4hKtnVPB4hY0YWStHmPH4hKtrjYt3xLKIWPyrjKt3hUtHjKtTVPHQmP1sjK04xLkMjKtrxP4TjKPIUXC4hKtfDRogzZU4BT34hKt3hcoA0atfmKA4RcPg1cJ4RPtHkKBo0RHcjKn4hPEYjYF4hVBYlXC4VRtHjTlwlcJMkPZIjKX4xLtnlKtbjKN4RRtHjKlESPlgTPvEjYNEzLBsBQyrTPt3RTtnTUCIGagcVRVgDbt3jKtPjKl4hKB4hKpEETCEjPtLDSFMFcqY0TGQDTD0lKBMjYtXFbhAGQqEjKvAEZOc2PAA0Qtf1QtvTS3TzLSImPyfyPtLyaBY1RqMjQtLDSWoELiwFTp4hK0f1RlEkKtIDRYIGUjklYIg0PLgldlEjYA0VPGMVZqUTUMcFZ0zjKt3RSHYUVEYjKt3hKt3hKt3hKA4hKt3hKP4hKt3hKt3hKt3hK77RRC8Vav8lak4Fc9vSREQVZzMzatQmbuwFakImOv3BOujTQjkFcC8lazI2arwVYx4COuX0TTMCTrU2Yo41TzEFck4C."
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
									"embed" : 1,
									"snapshot" : 									{
										"pluginname" : "FM8.vst3",
										"plugindisplayname" : "FM8",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "11244.VMjLgL9J...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fyLx.iKtHjPt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3xSSAmKQsDT5UTYTcVdrIyYFACUqjCVI4hKt3hKt3hKtPTSUIkSYcjKt3BTt3hKt3BRA4hKt3hKt3hKtD0Tqo1TvEjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3BTCgVUVcVPt3hKtLiKhAkKt3hKt3hKA4hKt3BQt3hKt3hKt3hKt3hKt3hKt3hKt3hct3hKt3hct3BSt3xPt3hKt3hKt3hKt3hKt3hKt3hKt3hKtPjKt3hKP4hKt3hKt3hKt3BT5QURzPUVt3hKtPWNA4hKt3hKt3BTt3hKt3haMckVzUjKt3hKt3hKt3hKMESSW4jUQITXnQjanEWSxPkQCkDSxXjKt3hKt3hKt3BQMUkTNUkQt3hKP4hKt3hK54hKt3hKt3hKt3RTSslZSAWPt3hKD4hKt3hKF4hKt3hKt3hKt.kdTkDMT4hKt3hKA4hKt3BQt3hKt.kKt3hKtHjKt3hKD4hKt3hKtfjKt3hKD4hKt3hYB4hKt3xctX1RtfzPtPmKtvjKyHjK24hKL4BQC4hct.kKt3hKtLjKt3hKt3hKt3hKQM0ZpMkbA4hKt3lat3hKt3hKt3hKA4hKt3hYwH1azXkKt3hKt3hKt3hKTIjXqT0PME2T2EEcJM2YKMVcUYlZpYkPt3hKt3hKt3BT5QURzPTXt3hKtDjKt3hKlEjKt3hKt3hKt3BQMUkTNUjKt3hKP4hKt3hKA4hKt3BQt3hKtXlKt3hKtDjKt3hKt3hKt3hcA4hKt3xLt3BStvzQtXlKtPkKDYjKpEjcC4hKt3BTAAUVt.0QtrVPlIlKtHjKKEjYh4hZF4RdAYGVtXlQtDWPPkkKHcjKR4hKt3xLD4xYA4xXtnlQtDSPPkkKtHjKIEjYg4BSG4hdAYlXtP0QtLWPPkkKyXjK5Ejch4hKt3hKt3hKt3hKtrxJqrxJC4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKA4hKt3BQt3hKtXlKt3hKtLjKt3hKXQjKMEjKN4hat3hKtXVTtnGQtHiKtfjK1QjKqEjcY4BQF4RZAAEYtfkKt3hKlIjKt3hKBEjYh4hZF4RaA4hVt.0QtXlKtPkKDYjKpEjKC4hKt3BSAYWXtLiQtzVPtfjKHUjKqEjKg4BUF4xYAYmXtPkQtzjKt3hK1QjK0EjYg4hXF4Rct.UTtf0QtTWPtDlKXcjKuEjYg4hXF4RRt3hKt3RQtfWP1ElKLYjKqEjch4BSG4xZA4RVtnlKt3hK1QkKpcjKzEjKi4hYF4hYt3BUtPjQtnVPPIjKt3hKSEDTj4xLF4hdA4hVtPkQtnWPPokKLYjKt3hKt3hXt3hKtXWPt3hKtHVPt.kKLYjK0EjKg4xMF4BdAAkKt3hKtXmKPQjKt3hKhEjKP4BTF4xZAY1XtnlQtjVPPkkKPcjKzDjKh4BUF4BaA4RXtPjQtzVP1IlKD4hKt3BTL4hbt3hKt3xUt3BQtjWP1ElKTcjKzEjKY4BTG4BMA4hXtPkQtDjKt3hKtLjKG4hKt3hcE4hKA4xXtPkQtLWPtHlK2XjKA4hKt3hKC4hQt3hKtXWQt3RPlMlKTYjK3EjKg4BVt3hKt.EStLiPtHiKlsjKDMjK54hYA4hKt3hXA4BTtf0QtrVPlIlK5YjKF4hKt3BQC4BctXWStLiPtbmKtzjKh4hKt3hKW4hKD4RLAAkVtvzQt7VPlgkKD4hKt3hKL4BQt3hKt3hKt3hKtHjKt3hKPoGUIQCUj4hKt3BThEjKt3hKt3hKP4hKt3hKt0zUZQWQt3hKt3hKt3hKtTDLEcDYGclP4XmZtMUPl4jXBk2QxEDcE4hKt3hKt3hKD0TUR4zZG4hKt.kKt3hKtfkKt3hKt3hKt3hKQM0ZpMUPt3hKtPjKt3hKP4hKt3hKA4hKt3BQt3hKt.kQt3hKtDjKt3hKX4hKt3hYA4hKt3BUAAkVtnmQtfVPlIlKTYjKA4hKt3hYt3hKt3hTtPjQtfWPPElK2XjKzEDTZ4BSF4hKt3hKt3hKt3RNo4hKt3hKA4hKt3BQt3hKtXVPt3hKtPTPPkkKPcjKvDjYg4BUF4hKt3hKt3hKt3RN44hKt3hKB4hKt3BQt3hKtXlPt3hKtHTPlIlKpYjKsEjKZ4BTG4BcAAUVtvzQtjWPt3hKt3hKt3hKlsBQt3hKtXmKt3hKtDjKt3hKh4hKt3BTQ4xLF4RLA4BRtPDQtLWPtLlKt3hKt3hKt3hKy7DQt3hKt.kKt3hKP4hKt3hKH4hKt3BVE4xZA4RXtbiQtjVPPokKPcjKzDjKt3hKt3hKt3hYqPkKt3hKPEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqXjKt3hKD4hKt3hYt3hKt3hPt3hKtfEQtfUPP4hKt3hKF4hKt3BQD4xbAYWXtP0QtPWPtLlKt3hKt3hKt3hKy7jVt3hKtPjKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJqTmKt3hKtDjKt3hKP4hKt3hKB4hKt3BUAAkVtnmQtfVPtfjKTQjKzEjYi4BQt3hKtXVPt3hKtDTPtLlKPcjKmEjcX4hbF4hKt3hKt3hKt3RNoEjKt3hKA4hKt3BQt3hKt.UPt3hKtPTPPkkKLYjKmEDTj4hKt3hKt3hKt3xLOcjKt3hKH4hKt3BTt3hKt3xQt3hKtvTQt.SP1IlKPcjKmEDTZ4xLF4hKt3hKt3hKt3RNCIjKt3hKC4hKt3BQt3hKtXWPt3hKtHUPPkkK1YjKqEDTX4BSG4xZA4hKt3hKt3hKtX1Jp4hKt3hKA4hKt3RPt3hKt.kKt3hK1EjKt3hKAEDTg4hKG4hYt.UTtLiQtDSPP4hKt3hKG4hKt3BQD4hdA4xXtPjQtjVP1okKtHjKt3hKt3hKt3hK4LEQt3hKtDjKt3hKD4hKt3BTA4hKt3BQAAUVtvjQtbVPPQlKt3hKt3hKt3hKy7jTt3hKtfjKt3hKP4hKt3hKG4hKt3BSE4BLAYmXt.0QtbVPPokKyXjKt3hKt3hKt3hK4jGQt3hKtLjKt3hKD4hKt3hcA4hKt3hTAAUVtXmQtrVPPgkKLcjKqEjKt3hKt3hKt3hYq.UPt3hKtDjKt3hKA4hKt3BTt3hKtXVPt3hKt7TPPMlKPcjK1EDTi4BTG4RPt3hKtfkKt3hKlUkK2XjKxEDTi4hdF4xZA4hKt3hKt3hKtX1Jy3hKt3BTt3hKt3RPt3hKtXlKt3hKlUkKTYjKxEjcg4BSF4xaA4xXtn1Qt3hKt3hKt3hKtjyPD4hKt3hPt3hKtPjKt3hKPIjKt3hKSEjKi4BRG4hYtXWUtnlQtnVPtLlKlYjKt3hKt3hKt3hK4j2Pt3hKtLjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqLkKt3hKP4hKt3hKD4hKt3BSt3hKt3xTtfEQt7TPP4hKt3hKD4hKt3BRE4xYA4xXtPkQt3hKt3hKt3hKtjSZB4hKt3RPt3hKtPjKt3hK1EjKt3hKVEDTZ4BRF4BdAAEVt.0QtTWPt3hKt3hKt3hKlshbt3hKtXlKt3hKtDjKt3hKX4hKt3hKU4hZF4xbAYFVtfzQtrVPt3hKt3hKt3hKlshct3hKtXmKt3hKtDjKt3hKh4hKt3hKU4BRG4xZAAUXtbiQtHWP1ElKt3hKt3hKt3hKy7TSt3hKt.kKt3hKP4hKt3hKD4hKt3BSt3hKt.ETtfzQtXWPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7DRB4hKtPjKt3hKP4hKt3hKD4hKt3BSE4hdAAUVt3xQt3hKt3hKt3hKtjyTq4hKt3hPt3hKtPjKt3hKtDjKt3hKGEDTX4BTG4xZA4hKt3hKt3hKtX1JpgjKt3hct3hKt3RPt3hKtHlKt3hK1QkKlYjKvDjYY4BVF4hbAAUVt3hKt3hKt3hKtLySMIjKt3BTt3hKt.kKt3hKtPjKt3hKT4hKt3BTS4xMF4BdA4hXtXlQtDjKt3hKD4hKt3hKV4hKt3hKt3hKt3xLOUkKt3hKD4hKt3BTt3hKt3RPt3hKtnVQt3hKt3hKt3hKtjSZE4hKt3hPt3hKtPjKt3hKPEjKt3hKREjYg4BTF4hYt3hUt3hKt3hKt3hKtLySW4hKt3BSt3hKt.kKt3hKtTjKt3hKHUjKzEjKY4hKB4RVA4hKt3hKt3hKtX1JlEjKt3hKA4hKt3RPt3hKtfjKt3hKlEjKt3hKMEDTX4BSG4hdAAUVtfzQtDjKt3hKX4hKt3hcS4BUG4hdA4hXtP0QtnWPt3hKt3hKt3hKlsBTG4hKt.kKt3hKtDjKt3hKT4hKt3BTR4xLF4hcAA0Xt.0Qt3hKt3hKt3hKtjyTi4hKt3hPt3hKtPjKt3hKl4hKt3hKE4hKt3hKE4xaA4xXtvjQt3VPP4hKt3hKD4hKt3BTE4BLAYVXtPkQt3hKt3hKt3hKtjSZi4hKt3RPt3hKtPjKt3hKPIjKt3hKTEjYh4BQF4BcAYmXt3xQtTWP1IlKTYjKt3hKt3hKt3hK4j2Xt3hKtHjKt3hKD4hKt3BTt3hKt3hQt3hKtPUQtPWPPokKLcjK0EjYg4BQt3hKtXVPt3hKtPTPPkkKPcjKvDjYg4BUF4hKt3hKt3hKt3RNSQlKt3hKA4hKt3BQt3hKt.kKt3hKtTjKt3hKhQjKxEDTZ4BTF4xZAAkKt3hKtPjKt3hKPUjKuEDTg4BUF4hKt3hKt3hKt3RN4UlKt3hKA4hKt3BQt3hKtXlKt3hKtbjKt3hKDUjKvDDTX4hcF4xaA4xXtn1QtDjKt3hKX4hKt3BTP4xLF4xYA4RXtbiQtzVPt3hKt3hKt3hKlshKH4hKt.kKt3hKtDjKt3hKh4hKt3hKQ4hZF4RaAAkVt.0QtbVPtDlKt3hKt3hKt3hKy7DQB4hKtfjKt3hKP4hKt3hKH4hKt3BUt3hKt3RTtfzQt7VPlMlKTYjKA4hKt3BVt3hKtX2TtLiQtTmK1MkKXYjKrEjKt3hKt3hKt3hYqLSPt3hKP4hKt3hKA4hKt3BUt3hKt3RTtfzQt7VPlMlKTYjKt3hKt3hKt3hK4j2Qt3hKtHjKt3hKD4hKt3hKA4hKt3BUAYWXtLiQtrVPt3hKt3hKt3hKlshKB4hKtXmKt3hKtDjKt3hKP4hKt3hYP4BQF4RdAYmXt3hKt3hKt3hKtLySm4hKt3BTt3hKt.kKt3hKtbjKt3hKXUjK0EjKg4BUG4xbAAUVt3hPt3hKt3hKt3hKtjSZH4hKt3RQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRXt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxJA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJH4hKt3BQt3hKt3hPt3hKtPjKt3hKPUjKvDjYX4BUF4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JLIjKt3BTt3hKt3RPt3hKtfkKt3hKlUkK2XjKxEDTi4hdF4xZA4hKt3hKt3hKtX1JTIjKt3hYt3hKt3RPt3hKtPkKt3hKtDkKHcjKuEjYi4BUF4hKt3hKt3hKt3RNCkjKt3hKC4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJS4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJkEjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqXjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqTlKt3hKP4hKt3hKN4hKt3hcC4hMAYmUtPjQt.SPtLlK2XjKzEDTX4hdF4xZAA0Utn2QtjiKt3hKt3hKt3hKlsxMqrxJq7jPt3hKtDjKt3hKl4hKt3hcA4hKt3xPAAEVtfjQt7VPlElKTYjK5EDTt3hKt3hQt3hKtbCQtPWP1sjK2PjKrEjYY4hKt3hKt3hKt3xLOwlKt3hKD4hKt3BTt3hKt3BQt3hKt.UQtPSPtHlKTYjKt3hKt3hKt3hK4jWRt3hKtHjKt3hKD4hKt3hKA4hKt3xTAAkVt31QtrVPt3hKt3hKt3hKlshYB4hKtXmKt3hKtDjKt3hKL4hKt3BTP4hZF4BdA4hKt3hKt3hKtX1JpIjKt3hKA4hKt3RPt3hKt.kKt3hKlAkKDYjK4Ejch4hKt3hKt3hKt3xLOAmKt3hKT4hKt3BTt3hKt3hQt3hKt.UQtfWPPkkKHYjKxEDTY4hKt3hKt3hKt3xLOEmKt3hKX4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJqDjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqfjKt3hKD4hKt3hKB4hKt3BRt3hKtvTQt3VPPkkK1YjKrEjKH4BUD4RTAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySx4hKt3BQt3hKt.kKt3hKtPjKt3hK1QjKPEjKH4hYE4hKt3hKt3hKt3RNSsjKt3hKB4hKt3BQt3hKt3RPt3hKtvTPtPkKtHjKYEjKt3hKt3hKt3hYqLiPt3hK14hKt3hKA4hKt3BTt3hKt3hTt3RQtXlKtXkKt3hKt3hKt3hKy7Tct3hKt.kKt3hKP4hKt3hKD4hKt3hYD4BTA4BRtXVQt3hKt3hKt3hKtjyPL4hKt3RQt3hKtPjKt3hKlEjKt3hKVEjcg4hcF4BLAAUXtPkQt3hKt3hKt3hKtjyTL4hKt3hQt3hKtPjKt3hKlMjKt3hK23hcj4hbE4xYAA0Xt.0QtTWPlElKDYjKyEDTY4hdE4BNAY1St3hKt3hKt3hKtLySqrxJqrRYt3hKt.kKt3hKt3jKt3hK1MjK1DjcV4BQF4BLA4xXtbiQtPWPPgkK5YjKqEDTW4hdG4RNt3hKt3hKt3hKtX1J2rxJqrxSB4hKt3RPt3hKtXlKt3hK1EjKt3hKPEDTY4BQF4RbA4BRtPEQtDUPP4hKt3hKF4hKt3xMD4BcAY2RtbCQtvVPlkkKt3hKt3hKt3hKy7Ddt3hKtPjKt3hKP4hKt3hKH4hKt3hKE4xZAAEVtHmQtXlKPwjKtHjKXEjKt3hKt3hKt3hYqvzPt3hKl4hKt3hKA4hKt3hYt3hKt3BUtPkQtbVP1okKtHjK24hKH4hZE4hKt3hKt3hKt3RNC0jKt3hKC4hKt3BQt3hKt3hPt3hKt.UPPkkKDYjKwEjKH4BRC4hYt3hUt3hKt3hKt3hKtLySw3hKt3BTt3hKt.kKt3hKtjjKt3hKtTjKqEDTX4hbF4hYtXFSt3hPtjUPtfjKt3hKt3hKt3hKy7jLt3hKtPkKt3hKP4hKt3hKB4hKt3BQE4xct3hKt3hKt3hKtX1JTMjKt3hYA4hKt3RPt3hKtfjKt3hKPQkKHMjKt3hKt3hKt3hK4LjSt3hKtbjKt3hKD4hKt3hYA4hKt3hUAYWXtXmQt.SPPElKTYjKt3hKt3hKt3hK4LkSt3hKtfjKt3hKD4hKt3hKB4hKt3BRt3hKt.UQtbVPtDlKxYjKl4hcU4BQF4haAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLyS03hKt3BQt3hKt.kKt3hKtTjKt3hK5QjK0EDTi4BTG4haA4hKt3hKt3hKtX1JxMjKt3hYt3hKt3RPt3hKtXlKt3hKPMkK2XjKpEjci4hYF4xZAAUVtXmQt3hKt3hKt3hKtjyPO4hKt3xPt3hKtPjKt3hKtDjKt3hKSEDTZ4haG4xZA4hKt3hKt3hKtX1J5MjKt3hKA4hKt3RPt3hKtfkKt3hKlAkKHcjKuEjcY4hYF4hdA4hKt3hKt3hKtX1JyLjKt3BTA4hKt3RPt3hKtLiKt3hKt7jKxcjKgEDTX4BUG4hdAYWXtLiQtbVPPElKTYjKiEDTk4xLC4hKt3hKt3hKt3RN4sxJqrxJF4hKt3BQt3hKtX1Pt3hKtbiK1QlKxUjKmEDTi4BTG4RcAYVXtPjQtLWPPkkK5UjK3DjYO4hKt3hKt3hKt3xLOsxJqrxJk4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJOIjKt3hKA4hKt3hYt3hKtXVPt3hKt.UPtnkKDYjK4EDTY4BRG4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1J2LjKt3BTt3hKt3RPt3hKt.kKt3hKlQkKDYjK5EDTY4hKt3hKt3hKt3xLO4RPt3hKH4hKt3BTt3hKt3xQt3hKtLCQtTWPtLlKLYjKtEDTY4BSG4hKt3hKt3hKt3RNCIkKt3hKC4hKt3BQt3hKt.UPt3hKtLTP1ElK1YjK0EjYh4hKt3hKt3hKt3xLOETPt3hKP4hKt3BTt3hKt3RRt3hKtvTQtHSPPkkKTYjK1EjKH4hdD4xaAYVXt3hKt3hKt3hKtLySCEjKt3BUt3hKt.kKt3hKtjjKt3hKLUjKxDDTY4BUF4hcA4BRtnGQtbVPtPlKt3hKt3hKt3hKy7DQA4hKtfkKt3hKP4hKt3hKF4hKt3BRE4RcA4xXtPjQtnWPPkkKt3hKt3hKt3hKy7jPA4hKtHlKt3hKP4hKt3hKG4hKt3BTD4BdAAEYtbiPtbUPPkkKPcjKt3hKt3hKt3hK4jVTt3hKtfjKt3hKD4hKt3hKB4hKt3xQt3hKtfEQtHWPPgkKyXjKsEDTY4BRG4RPt3hKtfkKt3hK1MkKyXjK04hcS4BVF4BaA4hKt3hKt3hKtX1JpQjKt3BTt3hKt3RPt3hKt.kKt3hKlQkKDYjK5EDTY4hKt3hKt3hKt3xLOoTPt3hKH4hKt3BTt3hKt3BQt3hKtvTQtPSPlElKLYjKt3hKt3hKt3hK4j2Tt3hKtLjKt3hKD4hKt3hYA4hKt3xTA4xXtPjQtnWPPokKLYjKt3hKt3hKt3hK4jmTt3hKtPjKt3hKD4hKt3BTA4hKt3BQAAUVt3xQtnWPtnkKt3hKt3hKt3hKy7DSA4hKtPkKt3hKP4hKt3hKE4hKt3BSD4RcA4RXtbiQtfWPt3hKt3hKt3hKlshdD4hKtXVPt3hKtDjKt3hKX4hKt3hYT4xMF4hdAAEVt.0QtrVPt3hKt3hKt3hKlsxLD4hKtXWPt3hKtDjKt3hKh4hKt3hKQ4BRG4BMAY2RtHVQtrVPtLlKt3hKt3hKt3hKy7TTA4hKtXlKt3hKP4hKt3hKH4hKt3hXt3hKt3RUtfzQtrVPPElK2XjKxEjcg4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RNoQkKt3hKA4hKt3BQt3hKt3RPt3hKtHUPPgkKPcjKqEjKt3hKt3hKt3hYqvTQt3hKl4hKt3hKA4hKt3BTt3hKtXGUtn1QtPWP1gkKt3hKt3hKt3hKy7TUA4hKtvjKt3hKP4hKt3hKI4hKt3hZD4BcA4xXtPkQtPWP1IlKpYjK5EDTj4hKt3hKt3hKt3xLOQUPt3hKP4hKt3BTt3hKt3hQt3hKtvTQtnWPPkkKHcjKqEjcg4hKt3hKt3hKt3xLOYUPt3hKT4hKt3BTt3hKt3RQt3hKtHVQt7VPtjkKPcjKtEjKt3hKt3hKt3hYqHVQt3hKlEjKt3hKA4hKt3BVt3hKt.ETt.0QtnWPPgkKLYjKwEjKt3hKt3hKt3hYqXVQt3hK1EjKt3hKA4hKt3BUt3hKt3RTtPkQtjVPPgkKpcjKt3hKt3hKt3hK4LkUt3hKtfjKt3hKD4hKt3hKB4hKt3hQt3hKtfTQtrVPlMlKTYjK3EjYX4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RNoYkKt3hKA4hKt3BQt3hKt3RPt3hKtPUPPokK5YjKqEjKt3hKt3hKt3hYqnWQt3hKl4hKt3hKA4hKt3BVt3hKtXFTtfzQt7VP1kkKlYjK5EjKt3hKt3hKt3hYqXWQt3hK14hKt3hKA4hKt3BVt3hKt3RUtfzQtrVPlgkK1YjKqEjKt3hKt3hKt3hYqLSQt3hKtDjKt3hKA4hKt3hXt3hKt3RTtfzQtPSP1sjKhUjKqEjKi4hKt3hKt3hKt3xLOEVPt3hKT4hKt3BTt3hKt3hSt3hKtX2PtXSP1YkKDYjKvDjKi4xMF4BcAAEVtnmQtrVPPckK5cjK43hKt3hKt3hKt3hYqbyJqrxJ0EjKt3hKA4hKt3xLt3hKt3xStH2QtDVPPgkKTcjK5Ejcg4xLF4xYAAUXtPkQtLVPPUlKyLjKt3hKt3hKt3hK4j2JqrxJqbjKt3hKD4hKt3hYC4hKt3xMtXGYtHWQtbVPPMlKPcjK0EjYg4BQF4xbAAUVtnWQtfSPl8jKt3hKt3hKt3hKy7zJqrxJqjlKt3hKP4hKt3hKH4hKt3hZt3hKt3BUtvzQtPSPtfjKPQjKqEjKg4BQF4BMAAkKt3hKtXjKt3hK2PjKzEjcK4xMD4BaAYVVt3hKt3hKt3hKtLySkEjKt3BQt3hKt.kKt3hKtPjKt3hKPUjKuEDTg4BUF4hKt3hKt3hKt3RNSgkKt3hKB4hKt3BQt3hKt3hPt3hKtXTPPkkKTYjKpEjYX4BQF4RZAYmVt3hKt3hKt3hKtLySpEjKt3BSt3hKt.kKt3hKtbjKt3hKHUjKqEjYi4BUF4BdAYmXtPkQt3hKt3hKt3hKtjSZX4hKt3BQt3hKtPjKt3hKlEjKt3hKSEjKi4BUF4BdAAUVtbiQt3hKt3hKt3hKtjSdY4hKt3RQt3hKtPjKt3hKlEjKt3hKDEDTY4BTG4BLAYVXtPkQt3hKt3hKt3hKtjSdX4hKt3hQt3hKtPjKt3hKPEjKt3hKPEDTZ4BTG4RZA4hVt3hKt3hKt3hKtLySqEjKt3hXt3hKt.kKt3hKtbjKt3hKPQjK3EDTj4xMB4xUAAUVt.0Qt3hKt3hKt3hKtjyPX4hKt3BRt3hKtPjKt3hKtHjKt3hKI4hKt3BSD4haAYlXt3hPtPTPPkkK1YjKmEDTj4BQt3hKtXVPt3hKt7TPlElK2HjKOEjYY4BVF4hKt3hKt3hKt3RN4ElKt3hKA4hKt3BQt3hKt3RPt3hKtPUPPokK5YjKqEjKt3hKt3hKt3hYqXlQt3hKl4hKt3hKA4hKt3BVt3hKt3xTtbiQtXlK1AkKTcjK5EjKt3hKt3hKt3hYqnmQt3hK14hKt3hKA4hKt3BVt3hKt3hTtnlQtXlK1AkKTcjK5EjKt3hKt3hKt3hYqXmQt3hKtDjKt3hKA4hKt3hYt3hKtXVTtPkQtrVPtjkKHYjKmEjcX4hbF4hKt3hKt3hKt3RN4okKt3hKE4hKt3BQt3hKt3hPt3hKtzTP1ElKPYjKl4hYT4BQF4hdAAUVt3hKt3hKt3hKtLyS2EjKt3BVt3hKt.kKt3hKtjjKt3hK5QjK0EjKY4hKB4BQAAUVt3xQtnWPtnkKt3hKt3hKt3hKy7DbA4hKtHlKt3hKP4hKt3hKG4hKt3BTD4BdAAEYtbiPtbUPPkkKPcjKt3hKt3hKt3hK4LjXt3hKtfjKt3hKD4hKt3hKt3hKt3RPt3hKt.kdTkDMDMlKt3hKSUkKt3hKt3hKt.kKt3hKt3VSWoEcE4hKt3hKt3hKt3xSk4TRoc1UlkjPTE2ZzQ2Rs41QZEGSREjKt3hKt3hKtPTSUIkSQcjKt3BTt3hKt3hRT4hKt3hKt3hKtD0Tqo1T4EjKt3BQt3hKt3hQt3hKt3hKt3hKPoGUIQCUt3hKt3RPt3hKtPjKt3hKP4hKt3hKAo1PD4hKPoGQt3hKBo1PD4hKF4hKD4BREwjKZk2ZrElKi4BTt3RTNIiMQwVaSQURFkjM4gTLocWdtIVRX4BQEYlK14BQMUkTNEjdHYVY14hKA4BTg4BTgYlYP4xZq3BRD4hPt3RSBMyPLUDQRYlaDIUbGw1PGQjYCEDapc2ZHYyMWsjas4xMM4BNBMyUhYDTo4BTgYFYC4RQtfGVAcSSCYFTtfjKl4xX4kzQhUzYSMkQ3vDRKAkK0klKt3BRtfWPGY1PLkWPBQ0YQYDRlU2cBcjKt3hbHQjKt3RUPYFVCAkKtnWPt3BQH8jK3QjKCYlKtjyPtX1Pt3hKlQDRW4RNt7jK43hKtDSQlsjcNYFNtLiPt3BVO4BcDUlKF4hKyYzLCwjKP4hK2LjYO4hKtzTPy3hK14RS4wTd43hPCMzMowVVrEDTW4xMtX1P1UjYt4xLGIWPPMkKD4hYkYWPtDjKHMkKw.mKA4BRK4RLt3RPt.0RtHjKlMkcF4RPt.0UtnmKl8jKtXFNlEDNWEyZ4fkVj0lP3wlKMMDTC4RLE4xbAA0Px4hKwcTQNsBR3DVY0LzbxXlPP8jK54hKA4BTG4hdt3xPtLyPx4hat3hKtclXJ4BRGgGZtLlKt3xP0HjKC4BTsUjdu4RStLSYt3BT44RND4hK5okKM4hct3hdV4hKBgjLAQjKtLmKPMjKt3lY2fDTG4BQt3BTKgzRtX1ZlwjKP4hKtTkYj4hcq3hdA4RStXmKtnGSlU1MRYlKP4hPL4BRAwDTtDDQl4hYE4BRPgDTtLDTtfTPLYlKBgjctXlctXlKtX1PlQjKtLlKpIjKHMDRtPjKVkkKTIjYk4hKtfjK1AkKlshKoAkKtnWRXEjK4flKLY2JtbyJq3xaNMiKt3BRqLDYE4hKRozPl4RPt.kKYQ1PnIjPDoVZFgjZ1bjYTAURFQjKqHmKIITVIMyQLAUPt3hKpIzUW8jYXYGRjMkKSgicvjlPM4jPj4BTtXVPtfjYt3zJYgyctnlUzwVQicjUtcEQzQiQuEkKSAkYFEkcTYVbQEkZ2fjPFMVP4vVVD4lMxXmbEkUXF4hU54xJvAibEcGLy7zPzUzZlA0SUglTQQTbYETQAYGTAshKyQCVp4BViA0bCkDTwgFT5sBQVIUTn4lVPImQlkyPAoWPlMkKCgFQOAUVtnmKCs1SHAkXlwVVrAySLk2RoEmK23hKP4BTUgjcLkGSSgDSC4hYEgiPtjiKDYzPL4BcjQEQynEUBETLoIzUq3laHUmK54hKYMja0DjKlYVXAMjYPkzLE4hKGMDVz.0R1LTQygzcOEjUzXVNPgjcvgyPA8DSHA0JyTSTAcyTFQGYtfDVV4hKqXmM2L1MCMCYTgVPQYVU4jiXrkkQtvVStLGQHQkPR0VQ1wzTq3xa1AiKHMjPXwVVrETLtX1ZAYGStPzZl0zPPQmK54hKAEDRt3hKZsFTD4RLBgmKAMScP4BMBgjKt3BSlcmKyTkdA4FbtXFal8lPtwjKtfkYO4xPt3xQXwDSpojYt3xLtnGUB4hKPESRwDkcwjTLuEzP0vTPt3hKtbmKtEWPzMzXPYlKZwVVN4xPBcjYA4xLtH1PP4hKNEDStfmVD4Ra14hKlclYqsDVlMDZHYVSt.EatXjPCQ0L0DkMCAUbAYzPlkGTGY1PlojKvDzLQYmKHEWPtgjKtDDRt3BTIYlKtfzSt3zQt3hcDYlKtLySlIjK04hPt3hdIgjKtjiKk4BTEYlPtLyPLEzLS4hKHQVPNITYAA0Rl4hKtnVPB4hY0YWStHmPH4hKtrjYt3xLKIWPyrjKt3hUtHjKtTVPHQmP1sjK04xLkMjKtrxP4TjKPIUXC4hKtfDRogzZU4BT34hKt3hcoA0atfmKA4RcPg1cJ4RPtHkKBo0RHcjKn4hPEYjYF4hVBYlXC4VRtHjTlwlcJMkPZIjKX4xLtnlKtbjKN4RRtHjKlESPlgTPvEjYNEzLBsBQyrTPt3RTtnTUCIGagcVRVgDbt3jKtPjKl4hKB4hKpEETCEjPtLDSFMFcqY0TGQDTD0lKBMjYtXFbhAGQqEjKvAEZOc2PAA0Qtf1QtvTS3TzLSImPyfyPtLyaBY1RqMjQtLDSWoELiwFTp4hK0f1RlEkKtIDRYIGUjklYIg0PLgldlEjYA0VPGMVZqUTUMcFZ0zjKt3RSHYUVEYjKt3hKt3hKt3hKA4hKt3hKP4hKt3hKt3hKt3hK77RRC8Vav8lak4Fc9vSREQVZzMzatQmbuwFakImOv3BOujTQjkFcC8lazI2arwVYx4COuX0TTMCTrU2Yo41TzEFck4C."
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
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1260.0, 365.0, 100.0, 22.0 ],
					"text" : "loadmess 0.8"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-76",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1260.0, 395.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1315.0, 395.0, 60.0, 20.0 ],
					"text" : "volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1150.0, 425.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1210.0, 425.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1150.0, 460.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-81",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1650.0, 125.0, 320.0, 24.0 ],
					"text" : "4. ANSWERS  (Continuator MIDI)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "bang" ],
					"patching_rect" : [ 1650.0, 165.0, 65.0, 22.0 ],
					"text" : "t b s b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1720.0, 165.0, 260.0, 20.0 ],
					"text" : "right to left: stop + notes off, load, play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1800.0, 200.0, 44.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1850.0, 200.0, 149.0, 22.0 ],
					"text" : "midievent 176 123 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1720.0, 200.0, 100.0, 22.0 ],
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1650.0, 200.0, 86.0, 22.0 ],
					"text" : "start 1024"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "" ],
					"patching_rect" : [ 1650.0, 235.0, 40.0, 22.0 ],
					"text" : "seq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 1650.0, 265.0, 79.0, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1650.0, 295.0, 163.0, 22.0 ],
					"text" : "prepend midievent 144"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1810.0, 295.0, 44.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1855.0, 295.0, 44.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1900.0, 295.0, 180.0, 20.0 ],
					"text" : "piano, pluck or mallets"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 1650.0, 330.0, 120.0, 22.0 ],
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
							"pluginname" : "TripleCheese.vst3",
							"plugindisplayname" : "TripleCheese",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "7607.VMjLg3ZG...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9HyM4TiKsEmKt3BSBIVavX0SFcWLgcVTWoEciYDRPUjQYQmYrwjcuY2Rv4BUSsVTWgkRtYFTmQSLZUia1kDUIckV1cmUYYFSDo0ZUEiXqEDZQcVSFMVcIcEYlgDUYkWTGgzSYESRJ4FTPASTGoUcI0lSJIFZRAycVo0YzXDRRUjUj0lalIDb2flPJwjTP0DLCUEdqYjXxUULP4VUVkUdUwlPogUUYgWSW8zctLDS1QTZBkFUpElZqYEVzAyPg8VTGMlbUwlPoMiUggCQ40jRLIUX4ASZgUGMVkkRLIUX4AyTSUWTwTkaUYUVx8lcHMWSW8DTqYzXocVLU4VUVkkbuYGRy0zUOMDNrEldIISXxEjTPoDSREVdvjGT0QiQigGNFElYHolPooWLhgicpE0SuYGRy0zUOcTQFM1ZuYGRy0zUOYUUFEVcMYkV5sVaBkldwHFNtrlXq0jLhASRWkkRLIUX4ASdRs1ZsEUc2YTX0MVaBkldwHFNxQUVzjkdgI2cwDlLIklPooWLhgCQDEldUwlXzUjQis1a1gzbMc0SRUDagoFNVElRLIUX4ASdPUGMwHldEwVX58lcHMWSW8TQzv1XqcWLgYWUVwjRLIUX4AyTQQWVWkkb3XjXqkTZBkldwHFNXUkVnkzUXoGNrIlRLgVXw.SdLoDSREVLvjWTmE0UYoDSREVLvLUTzk0UYIGNFI1ZEklPooGaigCUpEVLUYTX0EzUYgma1gTZvX0SyUjUZQ2a1AUZ3PjX3H1PLQmKCwjRLIzTFgidQgCQoITZXQjUUUzTOcma1gTZvX0SP0jdggWUrIzTQslXuMlUOcmatPETIISXvAyPLojKqEUc2YTV33RZBAUVTokbUY0S24lcQYzZFE1ZvjFSJIldTkVQFE1ZvLDSJwDQZwTQVQFNtjlPSUUahgGNT8jctYFUqk0UOcGRCwDMHklPLUEQQgiKosjctjlPPUjdQUDLCwjRtTEVsUULh8DMV8jctYGT0kzUY4DL4wjRLUTXu0jUYgCToITUqo2U0EzUOcmaPM0aQYkVAAyTMojdTokZqYDU3fUZBQTV5ElbQY0Sx3lcPoWRGEVPvjFSJwDQig2crAENDMESJwDdXMGLCMkQ3nWTJwTUjQWSV8TLt4RU3sVLYgiKoIzUEw1XqAyPLojKEoUdUY0S1MiPLYmatPUc2YEV3AyPLoDS3g0bvjVUC0jZBkFVqAkTvLESJwDdPMENTwDNDklPowjdT8TRS8zctYGRC0DLSkmdSwjRXASXu0jUYkGLowjRXASXu0jUZQ2XV8zctA0T0EkUYgiKoIDT3vlX5UjUOY2LBwjct4BUBASZLojKqAEQvjFSJoGQUACMrMENlklPMEUUiQWTU8DMt4RU30zQhgidRwDdtYVTTUUaggiKosjctjlPowjUggCUpMkUEklPMgiQYsFLCwjRDQzXwASdLQyLR0jct4RTq0jUOECTosjctjlPSUkLhgiXSwDcTMDSJwTUikWTU8jcyHDS14lYTs1cV8DLlk1R14RZBYUUFEFNlMDSz4xPLoDS3g0bvLUTNk0ZLojd5ElZUY0S14FTPo2bV8Ddpk1Rz.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.UPEklVm0DUPcmaVo0PEQESwUTLPETQ4o0aMQET2YmUXMTQTwjbqECTAUzTgcVSTA0c5YkVCUDULQWQw.UPEkVXu0DUPc2MVg0PEQES0sVLPETQoIjcEECTAUzPh8VSTAEdHQET2IlZPETQ4MkPEQESPkDUPcmYpAUPEkFUBUDULMURTA0cPsFTAUzPQITQTwTUIQET2g0ZPETQ4UkPEQESIkDUPcGTVkkPuAET2AkUZITQTwjZvvFTAUzTYcVRTA0cTYUVBUDULs1ZrAUPEMUVykDUPcmapAUPEkVVqkDUPcGVVokPEQESrACaPETQ4IkPEQESsUEaPETQ4k0aIQETJQTZQITQTwDSIQET2YlUYITQTwjaqwFTAUzPZMWRTA0c5oFTAUzTZkVRTA0cpYUVBUDUL81XrAUPEMkVukDUPcmZwnkPEQESuACaPETQSoUcIQET24FaBcVRTA0ctECVBUDULAWUrAUPEklVskDUPcmaVokPEQESvMGaPETQoo0bIQET24VLgITQTwTbEwFTAUTdZkVRTA0cxYUVBUDULE2XrAUPEkmVukDUPcma1oUbIQET2ImUgITQTwTb3vFTAUzPgcVRTA0c1ECVBUDULIWUrAUPEMTXskDUPcmcVokPEQESxMGaPETQCE1bIQET2YWLgITQTwzbEwFTAUzTgkVRTAkRDMUXqkDUPcmdwjkPEQESysFaPETQSEVbIQET2omUgITQTwzb3vFTAUTZgcVRTA0cyDCVBUDULQWUrAUPEkVXskDUPc2LVokPEQESzMGaPETQoE1bIolPAUTZgUWRTA0c2XEVBUDULUWSrAUPEkWXqkDUPc2MwjkPEQES0sFaPETQ4EVbIQET2ciUgITQTwTc3vFTAUzPhcVRTA0ctHCVBUDULYWUrAUPEMjXs8lYPETQCI1aIQET24hLZITQTwjcvvFTAUzPhUWRT8zLtLjS1IVZB4hKtvyKIMzasA2atUlaz4COIUDYoQ2Pu4Fcx8FarUlb9HyM4TiKsEmKt3BSBIVavX0SFcWLgcVTWoEciYDRPUjQYQmYrwjcuY2Rv4BUSsVTWgkRtYFTmQSLZUia1kDUIckV1cmUYYFSDo0ZUEiXqEDZQcVSFMVcIcEYlgDUYkWTGgzSYESRJ4FTPASTGoUcI0lSJIFZRAycVo0YzXDRRUjUj0lalIDb2flPJwjTP0DLCUEdqYjXxUULP4VUVkUdUwlPogUUYgWSW8zctLDS1QTZBkFUpElZqYEVzAyPg8VTGMlbUwlPoMiUggCQ40jRLIUX4ASZgUGMVkkRLIUX4AyTSUWTwTkaUYUVx8lcHMWSW8DTqYzXocVLU4VUVkkbuYGRy0zUOMDNrEldIISXxEjTPoDSREVdvjGT0QiQigGNFElYHolPooWLhgicpE0SuYGRy0zUOcTQFM1ZuYGRy0zUOYUUFEVcMYkV5sVaBkldwHFNtrlXq0jLhASRWkkRLIUX4ASdRs1ZsEUc2YTX0MVaBkldwHFNxQUVzjkdgI2cwDlLIklPooWLhgCQDEldUwlXzUjQis1a1gzbMc0SRUDagoFNVElRLIUX4ASdPUGMwHldEwVX58lcHMWSW8TQzv1XqcWLgYWUVwjRLIUX4AyTQQWVWkkb3XjXqkTZBkldwHFNXUkVnkzUXoGNrIlRLgVXw.SdLoDSREVLvjWTmE0UYoDSREVLvLUTzk0UYIGNFI1ZEklPooGaigCUpEVLUYTX0EzUYgma1gTZvX0SyUjUZQ2a1AUZ3PjX3H1PLQmKCwjRLIzTFgidQgCQoITZXQjUUUzTOcma1gTZvX0SP0jdggWUrIzTQslXuMlUOcmatPETIISXvAyPLojKqEUc2YTV33RZBAUVTokbUY0S24lcQYzZFE1ZvjFSJIldTkVQFE1ZvLDSJwDQZwTQVQFNtjlPSUUahgGNT8jctYFUqk0UOcGRCwDMHklPLUEQQgiKosjctjlPPUjdQUDLCwjRtTEVsUULh8DMV8jctYGT0kzUY4DL4wjRLUTXu0jUYgCToITUqo2U0EzUOcmaPM0aQYkVAAyTMojdTokZqYDU3fUZBQTV5ElbQY0Sx3lcPoWRGEVPvjFSJwDQig2crAENDMESJwDdXMGLCMkQ3nWTJwTUjQWSV8TLt4RU3sVLYgiKoIzUEw1XqAyPLojKEoUdUY0S1MiPLYmatPUc2YEV3AyPLoDS3g0bvjVUC0jZBkFVqAkTvLESJwDdPMENTwDNDklPowjdT8TRS8zctYGRC0DLSkmdSwjRXASXu0jUYkGLowjRXASXu0jUZQ2XV8zctA0T0EkUYgiKoIDT3vlX5UjUOY2LBwjct4BUBASZLojKqAEQvjFSJoGQUACMrMENlklPMEUUiQWTU8DMt4RU30zQhgidRwDdtYVTTUUaggiKosjctjlPowjUggCUpMkUEklPMgiQYsFLCwjRDQzXwASdLQyLR0jct4RTq0jUOECTosjctjlPSUkLhgiXSwDcTMDSJwTUikWTU8jcyHDS14lYTs1cV8DLlk1R14RZBYUUFEFNlMDSz4xPLoDS3g0bvLUTNk0ZLojd5ElZUY0S14FTPo2bV8Ddpk1Rz.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.UPEklVm0DUPcmaVo0PEQESwUTLPETQ4o0aMQET2YmUXMTQTwjbqECTAUzTgcVSTA0c5YkVCUDULQWQw.UPEkVXu0DUPc2MVg0PEQES0sVLPETQoIjcEECTAUzPh8VSTAEdHQET2IlZPETQ4MkPEQESPkDUPcmYpAUPEkFUBUDULMURTA0cPsFTAUzPQITQTwTUIQET2g0ZPETQ4UkPEQESIkDUPcGTVkkPuAET2AkUZITQTwjZvvFTAUzTYcVRTA0cTYUVBUDULs1ZrAUPEMUVykDUPcmapAUPEkVVqkDUPcGVVokPEQESrACaPETQ4IkPEQESsUEaPETQ4k0aIQETJQTZQITQTwDSIQET2YlUYITQTwjaqwFTAUzPZMWRTA0c5oFTAUzTZkVRTA0cpYUVBUDUL81XrAUPEMkVukDUPcmZwnkPEQESuACaPETQSoUcIQET24FaBcVRTA0ctECVBUDULAWUrAUPEklVskDUPcmaVokPEQESvMGaPETQoo0bIQET24VLgITQTwTbEwFTAUTdZkVRTA0cxYUVBUDULE2XrAUPEkmVukDUPcma1oUbIQET2ImUgITQTwTb3vFTAUzPgcVRTA0c1ECVBUDULIWUrAUPEMTXskDUPcmcVokPEQESxMGaPETQCE1bIQET2YWLgITQTwzbEwFTAUzTgkVRTAkRDMUXqkDUPcmdwjkPEQESysFaPETQSEVbIQET2omUgITQTwzb3vFTAUTZgcVRTA0cyDCVBUDULQWUrAUPEkVXskDUPc2LVokPEQESzMGaPETQoE1bIolPAUTZgUWRTA0c2XEVBUDULUWSrAUPEkWXqkDUPc2MwjkPEQES0sFaPETQ4EVbIQET2ciUgITQTwTc3vFTAUzPhcVRTA0ctHCVBUDULYWUrAUPEMjXs8lYPETQCI1aIQET24hLZITQTwjcvvFTAUzPhUWRT8zLtLjS1IVZB4hKtvyKIUDYoQ2Pu4Fcx8FarUlb9vyKVMEUy.Ea0cVZtMEcgQWY9.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "TripleCheese",
									"origin" : "TripleCheese.vst3",
									"type" : "VST3",
									"subtype" : "Instrument",
									"embed" : 1,
									"snapshot" : 									{
										"pluginname" : "TripleCheese.vst3",
										"plugindisplayname" : "TripleCheese",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "7607.VMjLg3ZG...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9HyM4TiKsEmKt3BSBIVavX0SFcWLgcVTWoEciYDRPUjQYQmYrwjcuY2Rv4BUSsVTWgkRtYFTmQSLZUia1kDUIckV1cmUYYFSDo0ZUEiXqEDZQcVSFMVcIcEYlgDUYkWTGgzSYESRJ4FTPASTGoUcI0lSJIFZRAycVo0YzXDRRUjUj0lalIDb2flPJwjTP0DLCUEdqYjXxUULP4VUVkUdUwlPogUUYgWSW8zctLDS1QTZBkFUpElZqYEVzAyPg8VTGMlbUwlPoMiUggCQ40jRLIUX4ASZgUGMVkkRLIUX4AyTSUWTwTkaUYUVx8lcHMWSW8DTqYzXocVLU4VUVkkbuYGRy0zUOMDNrEldIISXxEjTPoDSREVdvjGT0QiQigGNFElYHolPooWLhgicpE0SuYGRy0zUOcTQFM1ZuYGRy0zUOYUUFEVcMYkV5sVaBkldwHFNtrlXq0jLhASRWkkRLIUX4ASdRs1ZsEUc2YTX0MVaBkldwHFNxQUVzjkdgI2cwDlLIklPooWLhgCQDEldUwlXzUjQis1a1gzbMc0SRUDagoFNVElRLIUX4ASdPUGMwHldEwVX58lcHMWSW8TQzv1XqcWLgYWUVwjRLIUX4AyTQQWVWkkb3XjXqkTZBkldwHFNXUkVnkzUXoGNrIlRLgVXw.SdLoDSREVLvjWTmE0UYoDSREVLvLUTzk0UYIGNFI1ZEklPooGaigCUpEVLUYTX0EzUYgma1gTZvX0SyUjUZQ2a1AUZ3PjX3H1PLQmKCwjRLIzTFgidQgCQoITZXQjUUUzTOcma1gTZvX0SP0jdggWUrIzTQslXuMlUOcmatPETIISXvAyPLojKqEUc2YTV33RZBAUVTokbUY0S24lcQYzZFE1ZvjFSJIldTkVQFE1ZvLDSJwDQZwTQVQFNtjlPSUUahgGNT8jctYFUqk0UOcGRCwDMHklPLUEQQgiKosjctjlPPUjdQUDLCwjRtTEVsUULh8DMV8jctYGT0kzUY4DL4wjRLUTXu0jUYgCToITUqo2U0EzUOcmaPM0aQYkVAAyTMojdTokZqYDU3fUZBQTV5ElbQY0Sx3lcPoWRGEVPvjFSJwDQig2crAENDMESJwDdXMGLCMkQ3nWTJwTUjQWSV8TLt4RU3sVLYgiKoIzUEw1XqAyPLojKEoUdUY0S1MiPLYmatPUc2YEV3AyPLoDS3g0bvjVUC0jZBkFVqAkTvLESJwDdPMENTwDNDklPowjdT8TRS8zctYGRC0DLSkmdSwjRXASXu0jUYkGLowjRXASXu0jUZQ2XV8zctA0T0EkUYgiKoIDT3vlX5UjUOY2LBwjct4BUBASZLojKqAEQvjFSJoGQUACMrMENlklPMEUUiQWTU8DMt4RU30zQhgidRwDdtYVTTUUaggiKosjctjlPowjUggCUpMkUEklPMgiQYsFLCwjRDQzXwASdLQyLR0jct4RTq0jUOECTosjctjlPSUkLhgiXSwDcTMDSJwTUikWTU8jcyHDS14lYTs1cV8DLlk1R14RZBYUUFEFNlMDSz4xPLoDS3g0bvLUTNk0ZLojd5ElZUY0S14FTPo2bV8Ddpk1Rz.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.UPEklVm0DUPcmaVo0PEQESwUTLPETQ4o0aMQET2YmUXMTQTwjbqECTAUzTgcVSTA0c5YkVCUDULQWQw.UPEkVXu0DUPc2MVg0PEQES0sVLPETQoIjcEECTAUzPh8VSTAEdHQET2IlZPETQ4MkPEQESPkDUPcmYpAUPEkFUBUDULMURTA0cPsFTAUzPQITQTwTUIQET2g0ZPETQ4UkPEQESIkDUPcGTVkkPuAET2AkUZITQTwjZvvFTAUzTYcVRTA0cTYUVBUDULs1ZrAUPEMUVykDUPcmapAUPEkVVqkDUPcGVVokPEQESrACaPETQ4IkPEQESsUEaPETQ4k0aIQETJQTZQITQTwDSIQET2YlUYITQTwjaqwFTAUzPZMWRTA0c5oFTAUzTZkVRTA0cpYUVBUDUL81XrAUPEMkVukDUPcmZwnkPEQESuACaPETQSoUcIQET24FaBcVRTA0ctECVBUDULAWUrAUPEklVskDUPcmaVokPEQESvMGaPETQoo0bIQET24VLgITQTwTbEwFTAUTdZkVRTA0cxYUVBUDULE2XrAUPEkmVukDUPcma1oUbIQET2ImUgITQTwTb3vFTAUzPgcVRTA0c1ECVBUDULIWUrAUPEMTXskDUPcmcVokPEQESxMGaPETQCE1bIQET2YWLgITQTwzbEwFTAUzTgkVRTAkRDMUXqkDUPcmdwjkPEQESysFaPETQSEVbIQET2omUgITQTwzb3vFTAUTZgcVRTA0cyDCVBUDULQWUrAUPEkVXskDUPc2LVokPEQESzMGaPETQoE1bIolPAUTZgUWRTA0c2XEVBUDULUWSrAUPEkWXqkDUPc2MwjkPEQES0sFaPETQ4EVbIQET2ciUgITQTwTc3vFTAUzPhcVRTA0ctHCVBUDULYWUrAUPEMjXs8lYPETQCI1aIQET24hLZITQTwjcvvFTAUzPhUWRT8zLtLjS1IVZB4hKtvyKIMzasA2atUlaz4COIUDYoQ2Pu4Fcx8FarUlb9HyM4TiKsEmKt3BSBIVavX0SFcWLgcVTWoEciYDRPUjQYQmYrwjcuY2Rv4BUSsVTWgkRtYFTmQSLZUia1kDUIckV1cmUYYFSDo0ZUEiXqEDZQcVSFMVcIcEYlgDUYkWTGgzSYESRJ4FTPASTGoUcI0lSJIFZRAycVo0YzXDRRUjUj0lalIDb2flPJwjTP0DLCUEdqYjXxUULP4VUVkUdUwlPogUUYgWSW8zctLDS1QTZBkFUpElZqYEVzAyPg8VTGMlbUwlPoMiUggCQ40jRLIUX4ASZgUGMVkkRLIUX4AyTSUWTwTkaUYUVx8lcHMWSW8DTqYzXocVLU4VUVkkbuYGRy0zUOMDNrEldIISXxEjTPoDSREVdvjGT0QiQigGNFElYHolPooWLhgicpE0SuYGRy0zUOcTQFM1ZuYGRy0zUOYUUFEVcMYkV5sVaBkldwHFNtrlXq0jLhASRWkkRLIUX4ASdRs1ZsEUc2YTX0MVaBkldwHFNxQUVzjkdgI2cwDlLIklPooWLhgCQDEldUwlXzUjQis1a1gzbMc0SRUDagoFNVElRLIUX4ASdPUGMwHldEwVX58lcHMWSW8TQzv1XqcWLgYWUVwjRLIUX4AyTQQWVWkkb3XjXqkTZBkldwHFNXUkVnkzUXoGNrIlRLgVXw.SdLoDSREVLvjWTmE0UYoDSREVLvLUTzk0UYIGNFI1ZEklPooGaigCUpEVLUYTX0EzUYgma1gTZvX0SyUjUZQ2a1AUZ3PjX3H1PLQmKCwjRLIzTFgidQgCQoITZXQjUUUzTOcma1gTZvX0SP0jdggWUrIzTQslXuMlUOcmatPETIISXvAyPLojKqEUc2YTV33RZBAUVTokbUY0S24lcQYzZFE1ZvjFSJIldTkVQFE1ZvLDSJwDQZwTQVQFNtjlPSUUahgGNT8jctYFUqk0UOcGRCwDMHklPLUEQQgiKosjctjlPPUjdQUDLCwjRtTEVsUULh8DMV8jctYGT0kzUY4DL4wjRLUTXu0jUYgCToITUqo2U0EzUOcmaPM0aQYkVAAyTMojdTokZqYDU3fUZBQTV5ElbQY0Sx3lcPoWRGEVPvjFSJwDQig2crAENDMESJwDdXMGLCMkQ3nWTJwTUjQWSV8TLt4RU3sVLYgiKoIzUEw1XqAyPLojKEoUdUY0S1MiPLYmatPUc2YEV3AyPLoDS3g0bvjVUC0jZBkFVqAkTvLESJwDdPMENTwDNDklPowjdT8TRS8zctYGRC0DLSkmdSwjRXASXu0jUYkGLowjRXASXu0jUZQ2XV8zctA0T0EkUYgiKoIDT3vlX5UjUOY2LBwjct4BUBASZLojKqAEQvjFSJoGQUACMrMENlklPMEUUiQWTU8DMt4RU30zQhgidRwDdtYVTTUUaggiKosjctjlPowjUggCUpMkUEklPMgiQYsFLCwjRDQzXwASdLQyLR0jct4RTq0jUOECTosjctjlPSUkLhgiXSwDcTMDSJwTUikWTU8jcyHDS14lYTs1cV8DLlk1R14RZBYUUFEFNlMDSz4xPLoDS3g0bvLUTNk0ZLojd5ElZUY0S14FTPo2bV8Ddpk1Rz.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.UPEklVm0DUPcmaVo0PEQESwUTLPETQ4o0aMQET2YmUXMTQTwjbqECTAUzTgcVSTA0c5YkVCUDULQWQw.UPEkVXu0DUPc2MVg0PEQES0sVLPETQoIjcEECTAUzPh8VSTAEdHQET2IlZPETQ4MkPEQESPkDUPcmYpAUPEkFUBUDULMURTA0cPsFTAUzPQITQTwTUIQET2g0ZPETQ4UkPEQESIkDUPcGTVkkPuAET2AkUZITQTwjZvvFTAUzTYcVRTA0cTYUVBUDULs1ZrAUPEMUVykDUPcmapAUPEkVVqkDUPcGVVokPEQESrACaPETQ4IkPEQESsUEaPETQ4k0aIQETJQTZQITQTwDSIQET2YlUYITQTwjaqwFTAUzPZMWRTA0c5oFTAUzTZkVRTA0cpYUVBUDUL81XrAUPEMkVukDUPcmZwnkPEQESuACaPETQSoUcIQET24FaBcVRTA0ctECVBUDULAWUrAUPEklVskDUPcmaVokPEQESvMGaPETQoo0bIQET24VLgITQTwTbEwFTAUTdZkVRTA0cxYUVBUDULE2XrAUPEkmVukDUPcma1oUbIQET2ImUgITQTwTb3vFTAUzPgcVRTA0c1ECVBUDULIWUrAUPEMTXskDUPcmcVokPEQESxMGaPETQCE1bIQET2YWLgITQTwzbEwFTAUzTgkVRTAkRDMUXqkDUPcmdwjkPEQESysFaPETQSEVbIQET2omUgITQTwzb3vFTAUTZgcVRTA0cyDCVBUDULQWUrAUPEkVXskDUPc2LVokPEQESzMGaPETQoE1bIolPAUTZgUWRTA0c2XEVBUDULUWSrAUPEkWXqkDUPc2MwjkPEQES0sFaPETQ4EVbIQET2ciUgITQTwTc3vFTAUzPhcVRTA0ctHCVBUDULYWUrAUPEMjXs8lYPETQCI1aIQET24hLZITQTwjcvvFTAUzPhUWRT8zLtLjS1IVZB4hKtvyKIUDYoQ2Pu4Fcx8FarUlb9vyKVMEUy.Ea0cVZtMEcgQWY9.."
									}
,
									"fileref" : 									{
										"name" : "TripleCheese",
										"filename" : "TripleCheese.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "77c9d943f3a09502b5a1f459bea6aab1"
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
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1760.0, 365.0, 100.0, 22.0 ],
					"text" : "loadmess 0.8"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-96",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1760.0, 395.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1815.0, 395.0, 60.0, 20.0 ],
					"text" : "volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1650.0, 425.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1710.0, 425.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1650.0, 460.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-101",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1150.0, 560.0, 360.0, 24.0 ],
					"text" : "PANIC  (stop both players, silence stuck notes)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1150.0, 595.0, 40.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 1150.0, 645.0, 51.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1150.0, 675.0, 44.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1210.0, 675.0, 149.0, 22.0 ],
					"text" : "midievent 176 123 0"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-106",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1650.0, 560.0, 360.0, 24.0 ],
					"text" : "5. SLOW CUE: MIDI-DDSP violin (~55 s)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1650.0, 585.0, 320.0, 20.0 ],
					"text" : "renders the latest transcribed MIDI; fire it early"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1710.0, 615.0, 58.0, 22.0 ],
					"text" : "zl reg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1650.0, 615.0, 40.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1650.0, 665.0, 135.0, 22.0 ],
					"text" : "prepend midi_ddsp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1650.0, 695.0, 107.0, 22.0 ],
					"text" : "append violin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1650.0, 725.0, 170.0, 22.0 ],
					"text" : "prepend /trigger_model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1650.0, 755.0, 100.0, 22.0 ],
					"text" : "s aimat_send"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1650.0, 800.0, 51.0, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1710.0, 830.0, 121.0, 22.0 ],
					"text" : "prepend replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 1710.0, 860.0, 149.0, 22.0 ],
					"text" : "buffer~ chain_ddsp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1650.0, 830.0, 79.0, 22.0 ],
					"text" : "startloop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1850.0, 800.0, 72.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1850.0, 830.0, 58.0, 22.0 ],
					"text" : "loop 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1920.0, 800.0, 93.0, 22.0 ],
					"text" : "loadmess 1."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-121",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1920.0, 830.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1975.0, 830.0, 60.0, 20.0 ],
					"text" : "speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1920.0, 860.0, 44.0, 22.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1650.0, 895.0, 160.0, 22.0 ],
					"text" : "groove~ chain_ddsp 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1760.0, 940.0, 100.0, 22.0 ],
					"text" : "loadmess 0.8"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-126",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1760.0, 970.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1815.0, 970.0, 60.0, 20.0 ],
					"text" : "volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1650.0, 1000.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1710.0, 1000.0, 58.0, 22.0 ],
					"text" : "*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1650.0, 1035.0, 45.0, 45.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 3 ],
					"midpoints" : [ 39.5, 312.0, 192.0, 312.0, 192.0, 360.0, 190.5, 360.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"midpoints" : [ 1159.5, 618.0, 1159.5, 618.0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"midpoints" : [ 1191.5, 669.0, 1159.5, 669.0 ],
					"source" : [ "obj-103", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"midpoints" : [ 1159.5, 669.0, 1219.5, 669.0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 1159.5, 699.0, 1137.0, 699.0, 1137.0, 231.0, 1159.5, 231.0 ],
					"order" : 1,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 1159.5, 708.0, 1635.0, 708.0, 1635.0, 231.0, 1659.5, 231.0 ],
					"order" : 0,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 1219.5, 708.0, 1137.0, 708.0, 1137.0, 327.0, 1159.5, 327.0 ],
					"order" : 1,
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 1219.5, 708.0, 1635.0, 708.0, 1635.0, 327.0, 1659.5, 327.0 ],
					"order" : 0,
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"midpoints" : [ 1719.5, 651.0, 1659.5, 651.0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"midpoints" : [ 1659.5, 648.0, 1707.0, 648.0, 1707.0, 612.0, 1719.5, 612.0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 3 ],
					"midpoints" : [ 139.5, 318.0, 192.0, 318.0, 192.0, 360.0, 190.5, 360.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"midpoints" : [ 1659.5, 690.0, 1659.5, 690.0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"midpoints" : [ 1659.5, 720.0, 1659.5, 720.0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"midpoints" : [ 1659.5, 750.0, 1659.5, 750.0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"midpoints" : [ 1691.5, 825.0, 1719.5, 825.0 ],
					"source" : [ "obj-114", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"midpoints" : [ 1659.5, 825.0, 1659.5, 825.0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"midpoints" : [ 1719.5, 855.0, 1719.5, 855.0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"midpoints" : [ 1659.5, 855.0, 1659.5, 855.0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"midpoints" : [ 1859.5, 825.0, 1859.5, 825.0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"midpoints" : [ 1859.5, 855.0, 1695.0, 855.0, 1695.0, 882.0, 1659.5, 882.0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 3 ],
					"midpoints" : [ 229.5, 351.0, 190.5, 351.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"midpoints" : [ 1929.5, 825.0, 1929.5, 825.0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"midpoints" : [ 1929.5, 855.0, 1929.5, 855.0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"midpoints" : [ 1929.5, 927.0, 1647.0, 927.0, 1647.0, 891.0, 1659.5, 891.0 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 1659.5, 918.0, 1659.5, 918.0 ],
					"order" : 1,
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"midpoints" : [ 1659.5, 987.0, 1719.5, 987.0 ],
					"order" : 0,
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"midpoints" : [ 1769.5, 963.0, 1769.5, 963.0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 1 ],
					"midpoints" : [ 1769.5, 993.0, 1698.5, 993.0 ],
					"order" : 1,
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 1 ],
					"midpoints" : [ 1769.5, 993.0, 1758.5, 993.0 ],
					"order" : 0,
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"midpoints" : [ 1659.5, 1023.0, 1659.5, 1023.0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 1 ],
					"midpoints" : [ 1719.5, 1032.0, 1685.5, 1032.0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 39.5, 339.0, 39.5, 339.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 39.5, 390.0, 39.5, 390.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 39.5, 420.0, 39.5, 420.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 39.5, 540.0, 39.5, 540.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 39.5, 624.0, 165.0, 624.0, 165.0, 615.0, 189.5, 615.0 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 39.5, 615.0, 39.5, 615.0 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 1 ],
					"midpoints" : [ 139.699999999999989, 675.0, 585.0, 675.0, 585.0, 708.0, 1635.0, 708.0, 1635.0, 648.0, 1779.0, 648.0, 1779.0, 612.0, 1758.5, 612.0 ],
					"order" : 0,
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"midpoints" : [ 239.900000000000006, 675.0, 585.0, 675.0, 585.0, 795.0, 1659.5, 795.0 ],
					"source" : [ "obj-23", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 340.100000000000023, 675.0, 561.0, 675.0, 561.0, 711.0, 339.5, 711.0 ],
					"source" : [ "obj-23", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 39.5, 675.0, 15.0, 675.0, 15.0, 459.0, 585.0, 459.0, 585.0, 156.0, 609.5, 156.0 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"midpoints" : [ 39.5, 675.0, 15.0, 675.0, 15.0, 624.0, 165.0, 624.0, 165.0, 579.0, 585.0, 579.0, 585.0, 570.0, 662.5, 570.0 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"midpoints" : [ 139.699999999999989, 675.0, 585.0, 675.0, 585.0, 699.0, 846.0, 699.0, 846.0, 570.0, 922.5, 570.0 ],
					"order" : 2,
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"midpoints" : [ 139.699999999999989, 675.0, 15.0, 675.0, 15.0, 459.0, 1137.0, 459.0, 1137.0, 162.0, 1159.5, 162.0 ],
					"order" : 1,
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"midpoints" : [ 440.300000000000011, 675.0, 585.0, 675.0, 585.0, 699.0, 1137.0, 699.0, 1137.0, 516.0, 1635.0, 516.0, 1635.0, 162.0, 1659.5, 162.0 ],
					"source" : [ "obj-23", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 339.5, 738.0, 339.5, 738.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 641.5, 183.0, 669.5, 183.0 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 609.5, 183.0, 609.5, 183.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 669.5, 213.0, 669.5, 213.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 609.5, 213.0, 609.5, 213.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 809.5, 183.0, 809.5, 183.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 809.5, 213.0, 645.0, 213.0, 645.0, 240.0, 609.5, 240.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 879.5, 183.0, 879.5, 183.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 879.5, 213.0, 879.5, 213.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 879.5, 252.0, 609.5, 252.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 609.5, 279.0, 609.5, 279.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 680.0, 345.0, 669.5, 345.0 ],
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 39.5, 183.0, 39.5, 183.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 719.5, 324.0, 719.5, 324.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"midpoints" : [ 719.5, 354.0, 648.5, 354.0 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"midpoints" : [ 719.5, 354.0, 708.5, 354.0 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 609.5, 384.0, 609.5, 384.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"midpoints" : [ 669.5, 384.0, 636.0, 384.0, 636.0, 390.0, 635.5, 390.0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 609.5, 540.0, 609.5, 540.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 609.5, 570.0, 609.5, 570.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"midpoints" : [ 39.5, 213.0, 15.0, 213.0, 15.0, 351.0, 89.833333333333343, 351.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 609.5, 600.0, 609.5, 600.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 609.5, 630.0, 609.5, 630.0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"midpoints" : [ 609.5, 660.0, 609.5, 660.0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"midpoints" : [ 869.5, 540.0, 869.5, 540.0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 869.5, 570.0, 869.5, 570.0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 869.5, 600.0, 869.5, 600.0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 869.5, 630.0, 869.5, 630.0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 869.5, 660.0, 869.5, 660.0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"midpoints" : [ 1205.5, 195.0, 1309.5, 195.0 ],
					"order" : 1,
					"source" : [ "obj-62", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 1205.5, 195.0, 1359.5, 195.0 ],
					"order" : 0,
					"source" : [ "obj-62", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 1182.5, 195.0, 1229.5, 195.0 ],
					"source" : [ "obj-62", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"midpoints" : [ 1159.5, 189.0, 1159.5, 189.0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 1309.5, 234.0, 1191.0, 234.0, 1191.0, 231.0, 1159.5, 231.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 1359.5, 252.0, 1191.0, 252.0, 1191.0, 261.0, 1137.0, 261.0, 1137.0, 327.0, 1159.5, 327.0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 1229.5, 234.0, 1191.0, 234.0, 1191.0, 231.0, 1159.5, 231.0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 1159.5, 225.0, 1159.5, 225.0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"midpoints" : [ 1159.5, 258.0, 1159.5, 258.0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 1159.5, 288.0, 1159.5, 288.0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 39.5, 243.0, 39.5, 243.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 1159.5, 318.0, 1159.5, 318.0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 1319.5, 327.0, 1159.5, 327.0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 1364.5, 327.0, 1159.5, 327.0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"midpoints" : [ 1159.5, 354.0, 1159.5, 354.0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"midpoints" : [ 1173.928571428571331, 411.0, 1219.5, 411.0 ],
					"source" : [ "obj-74", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"midpoints" : [ 1269.5, 390.0, 1269.5, 390.0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"midpoints" : [ 1269.5, 420.0, 1198.5, 420.0 ],
					"order" : 1,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 1 ],
					"midpoints" : [ 1269.5, 420.0, 1258.5, 420.0 ],
					"order" : 0,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"midpoints" : [ 1159.5, 450.0, 1159.5, 450.0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 1 ],
					"midpoints" : [ 1219.5, 450.0, 1188.0, 450.0, 1188.0, 456.0, 1185.5, 456.0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 2 ],
					"midpoints" : [ 39.5, 273.0, 15.0, 273.0, 15.0, 351.0, 140.166666666666686, 351.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"midpoints" : [ 1705.5, 195.0, 1809.5, 195.0 ],
					"order" : 1,
					"source" : [ "obj-82", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"midpoints" : [ 1705.5, 195.0, 1859.5, 195.0 ],
					"order" : 0,
					"source" : [ "obj-82", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"midpoints" : [ 1682.5, 195.0, 1729.5, 195.0 ],
					"source" : [ "obj-82", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"midpoints" : [ 1659.5, 189.0, 1659.5, 189.0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 1809.5, 234.0, 1692.0, 234.0, 1692.0, 231.0, 1659.5, 231.0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 1859.5, 252.0, 1692.0, 252.0, 1692.0, 261.0, 1635.0, 261.0, 1635.0, 327.0, 1659.5, 327.0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 1729.5, 234.0, 1692.0, 234.0, 1692.0, 231.0, 1659.5, 231.0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 1659.5, 225.0, 1659.5, 225.0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"midpoints" : [ 1659.5, 258.0, 1659.5, 258.0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"midpoints" : [ 1659.5, 288.0, 1659.5, 288.0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 1659.5, 318.0, 1659.5, 318.0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 1819.5, 327.0, 1659.5, 327.0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 1864.5, 327.0, 1659.5, 327.0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"midpoints" : [ 1659.5, 354.0, 1659.5, 354.0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 1673.928571428571331, 411.0, 1719.5, 411.0 ],
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 1769.5, 390.0, 1769.5, 390.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 1 ],
					"midpoints" : [ 1769.5, 420.0, 1698.5, 420.0 ],
					"order" : 1,
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 1 ],
					"midpoints" : [ 1769.5, 420.0, 1758.5, 420.0 ],
					"order" : 0,
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 1659.5, 450.0, 1659.5, 450.0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 1 ],
					"midpoints" : [ 1719.5, 450.0, 1686.0, 450.0, 1686.0, 456.0, 1685.5, 456.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-74" : [ "vst~", "vst~", 0 ],
			"obj-94" : [ "vst~[1]", "vst~[1]", 0 ],
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
				"name" : "FM8.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "TripleCheese.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"oscreceiveudpport" : 0
	}

}
