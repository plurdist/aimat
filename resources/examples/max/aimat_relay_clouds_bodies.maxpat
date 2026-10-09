{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 0,
   "revision": 7,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   94.0,
   -1000.0,
   1410.0,
   840.0
  ],
  "openinpresentation": 1,
  "gridsize": [
   15.0,
   15.0
  ],
  "boxes": [
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.86,
      0.86,
      0.84,
      1.0
     ],
     "id": "obj-1",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      1400.0,
      800.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      1400.0,
      800.0
     ],
     "rounded": 0
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 22.0,
     "id": "obj-2",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      300.0,
      31.0
     ],
     "presentation": 1,
     "presentation_rect": [
      12.0,
      6.0,
      300.0,
      31.0
     ],
     "text": "AIMAT RELAY \u00b7 BODIES"
    }
   },
   {
    "box": {
     "fontsize": 11.0,
     "id": "obj-3",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      560.0,
      19.0
     ],
     "presentation": 1,
     "presentation_rect": [
      330.0,
      14.0,
      560.0,
      19.0
     ],
     "text": "one phrase, three clouds: when your panel is green it's yours, until you PASS"
    }
   },
   {
    "box": {
     "blinkcolor": [
      1.0,
      0.2,
      0.2,
      1.0
     ],
     "id": "obj-4",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      0.0,
      0.0,
      30.0,
      30.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1300.0,
      6.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 12.0,
     "id": "obj-5",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      60.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1334.0,
      12.0,
      60.0,
      20.0
     ],
     "text": "PANIC"
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      40.0,
      0.0,
      107.0,
      22.0
     ],
     "text": "s chain_panic"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 14.0,
     "id": "obj-7",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1600.0,
      10.0,
      200.0,
      22.0
     ],
     "text": "AIMAT connection"
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1600.0,
      40.0,
      100.0,
      22.0
     ],
     "text": "r aimat_send"
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1600.0,
      70.0,
      170.0,
      22.0
     ],
     "text": "udpsend 127.0.0.1 5005"
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1600.0,
      120.0,
      121.0,
      22.0
     ],
     "text": "udpreceive 7400"
    }
   },
   {
    "box": {
     "id": "obj-11",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1750.0,
      120.0,
      93.0,
      22.0
     ],
     "text": "print aimat"
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "newobj",
     "numinlets": 7,
     "numoutlets": 7,
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      1600.0,
      150.0,
      620.0,
      22.0
     ],
     "text": "route /musika_done /basic_pitch_done /midi_ddsp_done /status /continuator_done /phrase_profile"
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 5,
     "outlettype": [
      "",
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      1600.0,
      440.0,
      170.0,
      22.0
     ],
     "saved_object_attributes": {
      "filename": "chain_relay_clouds.js",
      "parameter_enable": 0
     },
     "text": "js chain_relay_clouds.js"
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1600.0,
      480.0,
      100.0,
      22.0
     ],
     "text": "s aimat_send"
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 4,
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      1780.0,
      480.0,
      93.0,
      22.0
     ],
     "text": "route 1 2 3"
    }
   },
   {
    "box": {
     "id": "obj-16",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1730.0,
      260.0,
      121.0,
      22.0
     ],
     "text": "prepend profile"
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1860.0,
      260.0,
      107.0,
      22.0
     ],
     "text": "prepend aimat"
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2000.0,
      410.0,
      114.0,
      22.0
     ],
     "text": "loadmess reset"
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "id": "obj-19",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      44.0,
      692.0,
      258.0
     ],
     "presentation": 1,
     "presentation_rect": [
      700.0,
      44.0,
      692.0,
      258.0
     ],
     "rounded": 6
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.93,
      0.42,
      0.4,
      1.0
     ],
     "id": "obj-20",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      44.0,
      692.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      700.0,
      44.0,
      692.0,
      24.0
     ],
     "rounded": 0
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 13.0,
     "id": "obj-21",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      44.0,
      682.0,
      21.0
     ],
     "presentation": 1,
     "presentation_rect": [
      706.0,
      46.0,
      680.0,
      21.0
     ],
     "text": "MACHINE \u00b7 the source and the relay"
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "live.button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      1600.0,
      700.0,
      36.0,
      36.0
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      76.0,
      36.0,
      36.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_longname": "new_source",
       "parameter_mmax": 1,
       "parameter_modmode": 0,
       "parameter_shortname": "new_source",
       "parameter_type": 2
      }
     },
     "varname": "new_source"
    }
   },
   {
    "box": {
     "fontsize": 11.0,
     "id": "obj-23",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      31.0
     ],
     "presentation": 1,
     "presentation_linecount": 2,
     "presentation_rect": [
      752.0,
      78.0,
      56.0,
      31.0
     ],
     "text": "NEW\nSOURCE"
    }
   },
   {
    "box": {
     "id": "obj-24",
     "items": [
      "pipes",
      ",",
      "misc",
      ",",
      "techno"
     ],
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "int",
      "",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1600.0,
      740.0,
      80.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      826.0,
      82.0,
      80.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1700.0,
      740.0,
      86.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      1600.0,
      820.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      916.0,
      74.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        1.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "truncation",
       "parameter_mmax": 4.0,
       "parameter_mmin": 0.1,
       "parameter_modmode": 0,
       "parameter_shortname": "wildness",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "truncation"
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1660.0,
      820.0,
      44.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      968.0,
      84.0,
      44.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1660.0,
      790.0,
      93.0,
      22.0
     ],
     "text": "loadmess 20"
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-29",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      50.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      968.0,
      106.0,
      50.0,
      17.0
     ],
     "text": "seconds"
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      1720.0,
      820.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1022.0,
      74.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "density",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "density",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "density"
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-31",
     "linecount": 4,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      64.0,
      47.0
     ],
     "presentation": 1,
     "presentation_linecount": 4,
     "presentation_rect": [
      1070.0,
      76.0,
      59.0,
      47.0
     ],
     "text": "density:\nnotes heard\n(techno\nneeds more)"
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1720.0,
      880.0,
      121.0,
      22.0
     ],
     "text": "prepend density"
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      1540.0,
      900.0,
      40.0,
      22.0
     ],
     "text": "t b"
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1600.0,
      930.0,
      190.0,
      22.0
     ],
     "text": "pack musika 1. 20 pipes"
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1600.0,
      960.0,
      170.0,
      22.0
     ],
     "text": "prepend /trigger_model"
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1600.0,
      990.0,
      100.0,
      22.0
     ],
     "text": "s aimat_send"
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1800.0,
      900.0,
      114.0,
      22.0
     ],
     "text": "prepend symbol"
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "bang",
      "bang",
      ""
     ],
     "patching_rect": [
      2400.0,
      40.0,
      65.0,
      22.0
     ],
     "text": "t b b s"
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2550.0,
      70.0,
      121.0,
      22.0
     ],
     "text": "prepend replace"
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "bang"
     ],
     "patching_rect": [
      2550.0,
      98.0,
      156.0,
      22.0
     ],
     "text": "buffer~ relay_source"
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2690.0,
      70.0,
      107.0,
      22.0
     ],
     "text": "normalize 0.9"
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2400.0,
      70.0,
      79.0,
      22.0
     ],
     "text": "startloop"
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2550.0,
      130.0,
      163.0,
      22.0
     ],
     "text": "s relay_source_loaded"
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2690.0,
      126.0,
      58.0,
      22.0
     ],
     "text": "loop 1"
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      2690.0,
      98.0,
      72.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "outlettype": [
      "signal",
      "signal",
      "signal"
     ],
     "patching_rect": [
      2400.0,
      200.0,
      180.0,
      22.0
     ],
     "text": "groove~ relay_source 2"
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1600.0,
      290.0,
      114.0,
      22.0
     ],
     "text": "prepend source"
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      2800.0,
      200.0,
      22.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      76.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-49",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      140.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1176.0,
      78.0,
      140.0,
      18.0
     ],
     "text": "source bed in the room"
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2800.0,
      170.0,
      86.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2800.0,
      230.0,
      100.0,
      22.0
     ],
     "text": "pack 0. 2000"
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "patching_rect": [
      2800.0,
      260.0,
      51.0,
      22.0
     ],
     "text": "line~"
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      2400.0,
      350.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      2465.0,
      350.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-55",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      50.0,
      27.0
     ],
     "presentation": 1,
     "presentation_linecount": 2,
     "presentation_rect": [
      712.0,
      142.0,
      39.0,
      27.0
     ],
     "text": "BED\nSPEED"
    }
   },
   {
    "box": {
     "floatoutput": 1,
     "id": "obj-56",
     "maxclass": "slider",
     "min": -2.0,
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      2900.0,
      420.0,
      170.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      764.0,
      140.0,
      170.0,
      20.0
     ],
     "size": 4.0
    }
   },
   {
    "box": {
     "format": 6,
     "id": "obj-57",
     "maxclass": "flonum",
     "maximum": 4.0,
     "minimum": -4.0,
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      3080.0,
      420.0,
      56.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      940.0,
      139.0,
      56.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      3080.0,
      480.0,
      65.0,
      22.0
     ],
     "text": "sig~ 1."
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3080.0,
      390.0,
      93.0,
      22.0
     ],
     "text": "loadmess 1."
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2900.0,
      480.0,
      93.0,
      22.0
     ],
     "text": "prepend set"
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2900.0,
      450.0,
      40.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      764.0,
      166.0,
      42.0,
      22.0
     ],
     "text": "0.25"
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2945.0,
      450.0,
      40.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      810.0,
      166.0,
      42.0,
      22.0
     ],
     "text": "0.5"
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2990.0,
      450.0,
      40.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      856.0,
      166.0,
      42.0,
      22.0
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3035.0,
      450.0,
      40.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      902.0,
      166.0,
      42.0,
      22.0
     ],
     "text": "2"
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3080.0,
      450.0,
      40.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      948.0,
      166.0,
      42.0,
      22.0
     ],
     "text": "-1"
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      2080.0,
      520.0,
      22.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      200.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2080.0,
      490.0,
      86.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-68",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      220.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      738.0,
      202.0,
      220.0,
      18.0
     ],
     "text": "auto-pass every 25 s (practising alone)"
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2080.0,
      580.0,
      128.0,
      22.0
     ],
     "text": "prepend autopass"
    }
   },
   {
    "box": {
     "id": "obj-70",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      2160.0,
      520.0,
      22.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      962.0,
      200.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-71",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      80.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      988.0,
      202.0,
      80.0,
      18.0
     ],
     "text": "reset relay"
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2160.0,
      550.0,
      51.0,
      22.0
     ],
     "text": "reset"
    }
   },
   {
    "box": {
     "id": "obj-73",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      2200.0,
      520.0,
      36.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      228.0,
      36.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2200.0,
      490.0,
      86.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-75",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      200.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      752.0,
      230.0,
      200.0,
      18.0
     ],
     "text": "MIDI-DDSP every n gens (0 = off)"
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2200.0,
      580.0,
      142.0,
      22.0
     ],
     "text": "prepend ddsp_every"
    }
   },
   {
    "box": {
     "id": "obj-77",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      2300.0,
      520.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      240.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.15
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "floor",
       "parameter_mmax": 0.5,
       "parameter_modmode": 0,
       "parameter_shortname": "floor",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "floor"
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-78",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      130.0,
      27.0
     ],
     "presentation": 1,
     "presentation_linecount": 2,
     "presentation_rect": [
      1198.0,
      248.0,
      99.0,
      27.0
     ],
     "text": "floor: how loud a cloud\nstays after its PASS"
    }
   },
   {
    "box": {
     "id": "obj-79",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2300.0,
      580.0,
      107.0,
      22.0
     ],
     "text": "s chain_floor"
    }
   },
   {
    "box": {
     "fontsize": 22.0,
     "id": "obj-80",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1900.0,
      640.0,
      64.0,
      33.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1050.0,
      164.0,
      64.0,
      33.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-81",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1050.0,
      200.0,
      70.0,
      18.0
     ],
     "text": "generation"
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2000.0,
      640.0,
      416.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      254.0,
      430.0,
      22.0
     ],
     "text": "\"gen 6 \u2192 PLAYER 1 \u00b7 C# Eb \u00b7 change 0.29\""
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-83",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1600.0,
      200.0,
      344.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      278.0,
      430.0,
      20.0
     ],
     "text": "\"continuator generation complete!\""
    }
   },
   {
    "box": {
     "id": "obj-84",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      2000.0,
      200.0,
      93.0,
      22.0
     ],
     "text": "prepend set"
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-85",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      240.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      104.0,
      240.0,
      18.0
     ],
     "text": "EFFECTS (plug-ins, 100% wet)"
    }
   },
   {
    "box": {
     "autosave": 1,
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "id": "obj-86",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "",
      "list",
      "int",
      "",
      "",
      ""
     ],
     "patching_rect": [
      5800.0,
      300.0,
      160.0,
      22.0
     ],
     "save": [
      "#N",
      "vst~",
      "loaduniqueid",
      0,
      2,
      2,
      "@autosave",
      1,
      ";"
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_invisible": 1,
       "parameter_longname": "vst~",
       "parameter_modmode": 0,
       "parameter_shortname": "vst~",
       "parameter_type": 3
      }
     },
     "saved_object_attributes": {
      "parameter_enable": 1,
      "parameter_mappable": 0
     },
     "snapshot": {
      "filetype": "C74Snapshot",
      "version": 2,
      "minorversion": 0,
      "name": "snapshotlist",
      "origin": "vst~",
      "type": "list",
      "subtype": "Undefined",
      "embed": 1,
      "snapshot": {
       "pluginname": "TAL-Reverb-4.vst3",
       "plugindisplayname": "TAL Reverb 4 Plugin",
       "pluginsavedname": "",
       "pluginsaveduniqueid": 0,
       "version": 1,
       "isbank": 0,
       "isbase64": 1,
       "blob": "1431.VMjLg3XA...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9jCN43hUMczXWEjKt3hYt3hKt.kKt3hKt3BS5gEcyQjKtvDT2YTR5AkaA4hKtfjYhsVVE0jKP4hKD4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKCoGZUMTRSgjaK4hKtXWdOMCLFElYXcUV30zUZUGMV8DZDk1R1gjPHsFMwfUcQYkVzMlUOgFUEUkQvHjSncSZOYlcCM1Y2YDRoUUahYWRxDVaIcEVyASZHYGRBgTLUwlX4sVLgQGLogTdyHDSnMyPOYWRxDVaIcEVy0TaOciKsIVciwlXmAiQHsVVrk0ZMYzX3UEaisVRsgUczX0SnQTZKYGRBgzZYwVVq0jQigWUrM1ZI0FVmASLgACMFMFNHIESz4RZHYFUrkEaUECV5kzUYESUrIFZMckVsQiUXIWQVEVcU0VX5ASZHY2LBwDZtHUVrkkUYkVTsI1ZYcUV3kjQYs1cVgEMvjFR1MiPLglKRkEaYYUVoEUahsVVWkEdIEiXu81UYgCRBwDcpkVS2QUdLcGRC4zcPkWS2gzTMgGTogjYTwVVrUULXoWRWkULUwlXncWLgICLogjcyHkS1wTZMYGRCwjcPMDSvPTZLYmYS0DZtHUVrkkUYkVTsI1ZYcUV3kjQZ81XFoENHIDSzgzTMMCQo0zcpkGS3gTZLQiZS4DLhkFRlQEaYwVUwfkdIcUVwTEahgVPWk0YyY0Sn4RZKkmK40zctLkSvvzPMICTCwjdPMjSn4hTYwVVVkUZQ0lXqk0UYgWRFI1ZEEiVmASLgACMFMFNHIDSzwTdMYGU4wjctjGSz3RdMgmK4wTLhkFRlQEaYwVUwfkdvDSXpUjQgo2ZwDFcMcjXqUkQYgCRBwDchMDS2I1TNMiX4wjLtLTSzPzPLgmYogjYTwVVrUULXoWTVkkcQcjV3fjPLQGR4wTdtLESwn1TMgmY40DdHkWSwvTZHYFUrkEaUECV5EkUZwVVVMVdUY0Sn4RZKkGRCwTLlkWSv3RZLECRowTLtLTS5gjPHoVUFIldmY0Sn4RZKYGRS0DdPkGS2gUdLcmKC4zLHMUSwXVZHYFTVkkcQcjVmASLgACMFMFNHIESz4RZHYFSGM1ZIcUV0ASZHc2LBwDZtHTVvzTLZ8FMwjENHIDSz4RdLgGTo0jLTMkS3Q0PLICVCwjchMjSn4Bdh8VTVkUZmYEVuQiUOglKosjcHIDRpUjUgYGLogjcyfFS4gUZMMiY4wTLtLUSxPzPNECQ4wDZtfFVuEkLhgCRBwDcLkVSv.UZLoGQC4DLpMkS2gzPNICRogjYLcEVyEzQgsVRWgkdUY0Sn4RZKomYSwTLHMTS3I1TMoGTS0DMLMjS2gjPHYWRxDVaIcEVyQiUXMWUV8DZLolXzzzQic1cFgzP2YUVmkzQHIzZwjkYTsVXu0jLgQGNrgTcyLzS04RahU2XrI1YvDiX4XWdKoWQFEVNt3hKt3hKt3hKt3hKtQUUCUEQTg2ZrM1YQcUVDUjQicVPP4RPHQEY1UTLhkWPP4RPL4hKi4hKt3hKt3hKtXlTU0DUQAURWoULEYzXqEEUXoWQFwyKIMzasA2atUlaz4COuX0TTMCTrU2Yo41TzEFck4C."
      },
      "snapshotlist": {
       "current_snapshot": 0,
       "entries": [
        {
         "filetype": "C74Snapshot",
         "version": 2,
         "minorversion": 0,
         "name": "TAL Reverb 4 Plugin",
         "origin": "TAL-Reverb-4.vst3",
         "type": "VST3",
         "subtype": "AudioEffect",
         "embed": 0,
         "snapshot": {
          "pluginname": "TAL-Reverb-4.vst3",
          "plugindisplayname": "TAL Reverb 4 Plugin",
          "pluginsavedname": "",
          "pluginsaveduniqueid": 0,
          "version": 1,
          "isbank": 0,
          "isbase64": 1,
          "blob": "1431.VMjLg3XA...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9jCN43hUMczXWEjKt3hYt3hKt.kKt3hKt3BS5gEcyQjKtvDT2YTR5AkaA4hKtfjYhsVVE0jKP4hKD4hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKCoGZUMTRSgjaK4hKtXWdOMCLFElYXcUV30zUZUGMV8DZDk1R1gjPHsFMwfUcQYkVzMlUOgFUEUkQvHjSncSZOYlcCM1Y2YDRoUUahYWRxDVaIcEVyASZHYGRBgTLUwlX4sVLgQGLogTdyHDSnMyPOYWRxDVaIcEVy0TaOciKsIVciwlXmAiQHsVVrk0ZMYzX3UEaisVRsgUczX0SnQTZKYGRBgzZYwVVq0jQigWUrM1ZI0FVmASLgACMFMFNHIESz4RZHYFUrkEaUECV5kzUYESUrIFZMckVsQiUXIWQVEVcU0VX5ASZHY2LBwDZtHUVrkkUYkVTsI1ZYcUV3kjQYs1cVgEMvjFR1MiPLglKRkEaYYUVoEUahsVVWkEdIEiXu81UYgCRBwDcpkVS2QUdLcGRC4zcPkWS2gzTMgGTogjYTwVVrUULXoWRWkULUwlXncWLgICLogjcyHkS1wTZMYGRCwjcPMDSvPTZLYmYS0DZtHUVrkkUYkVTsI1ZYcUV3kjQZ81XFoENHIDSzgzTMMCQo0zcpkGS3gTZLQiZS4DLhkFRlQEaYwVUwfkdIcUVwTEahgVPWk0YyY0Sn4RZKkmK40zctLkSvvzPMICTCwjdPMjSn4hTYwVVVkUZQ0lXqk0UYgWRFI1ZEEiVmASLgACMFMFNHIDSzwTdMYGU4wjctjGSz3RdMgmK4wTLhkFRlQEaYwVUwfkdvDSXpUjQgo2ZwDFcMcjXqUkQYgCRBwDchMDS2I1TNMiX4wjLtLTSzPzPLgmYogjYTwVVrUULXoWTVkkcQcjV3fjPLQGR4wTdtLESwn1TMgmY40DdHkWSwvTZHYFUrkEaUECV5EkUZwVVVMVdUY0Sn4RZKkGRCwTLlkWSv3RZLECRowTLtLTS5gjPHoVUFIldmY0Sn4RZKYGRS0DdPkGS2gUdLcmKC4zLHMUSwXVZHYFTVkkcQcjVmASLgACMFMFNHIESz4RZHYFSGM1ZIcUV0ASZHc2LBwDZtHTVvzTLZ8FMwjENHIDSz4RdLgGTo0jLTMkS3Q0PLICVCwjchMjSn4Bdh8VTVkUZmYEVuQiUOglKosjcHIDRpUjUgYGLogjcyfFS4gUZMMiY4wTLtLUSxPzPNECQ4wDZtfFVuEkLhgCRBwDcLkVSv.UZLoGQC4DLpMkS2gzPNICRogjYLcEVyEzQgsVRWgkdUY0Sn4RZKomYSwTLHMTS3I1TMoGTS0DMLMjS2gjPHYWRxDVaIcEVyQiUXMWUV8DZLolXzzzQic1cFgzP2YUVmkzQHIzZwjkYTsVXu0jLgQGNrgTcyLzS04RahU2XrI1YvDiX4XWdKoWQFEVNt3hKt3hKt3hKt3hKtQUUCUEQTg2ZrM1YQcUVDUjQicVPP4RPHQEY1UTLhkWPP4RPL4hKi4hKt3hKt3hKtXlTU0DUQAURWoULEYzXqEEUXoWQFwyKIMzasA2atUlaz4COuX0TTMCTrU2Yo41TzEFck4C."
         },
         "fileref": {
          "name": "TAL Reverb 4 Plugin",
          "filename": "TAL Reverb 4 Plugin.maxsnap",
          "filepath": "~/Documents/Max 9/Snapshots",
          "filepos": -1,
          "snapshotfileid": "8a8e3c91aa6a09a6c57233b36c03bded"
         }
        }
       ]
      }
     },
     "text": "vst~ 2 2 @autosave 1",
     "varname": "vst~",
     "viewvisibility": 0
    }
   },
   {
    "box": {
     "autosave": 1,
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "id": "obj-87",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "",
      "list",
      "int",
      "",
      "",
      ""
     ],
     "patching_rect": [
      6100.0,
      300.0,
      160.0,
      22.0
     ],
     "save": [
      "#N",
      "vst~",
      "loaduniqueid",
      0,
      2,
      2,
      "@autosave",
      1,
      ";"
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_invisible": 1,
       "parameter_longname": "vst~[1]",
       "parameter_modmode": 0,
       "parameter_shortname": "vst~[1]",
       "parameter_type": 3
      }
     },
     "saved_object_attributes": {
      "parameter_enable": 1,
      "parameter_mappable": 0
     },
     "snapshot": {
      "filetype": "C74Snapshot",
      "version": 2,
      "minorversion": 0,
      "name": "snapshotlist",
      "origin": "vst~",
      "type": "list",
      "subtype": "Undefined",
      "embed": 1,
      "snapshot": {
       "pluginname": "Deelay.vst3",
       "plugindisplayname": "Deelay",
       "pluginsavedname": "",
       "pluginsaveduniqueid": 0,
       "version": 1,
       "isbank": 0,
       "isbase64": 1,
       "blob": "2860.VMjLgLxB...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9HCL1.iKV0jZLclX2DjKt3xSqX1UgIWPnM1ZIIiXugCaggCRRwDctjFRlQEagkFNFk0azDSV3fjTUQUVTszLHg2S43hPOAUQrI1YvDiXl4RahsVSWkkd3TzXmEzUYgCRBwDctjFRl4RahsVSWkkd3TTVukEaYEDLFMFNHIDSz4RZHYlKsI1ZMcUV5gSQY8VVrk0TqwFYqASZHY2LBwDZtHjX3UULhsVTxbkZUICVwASZHY2LBwDZtHjX3UULhsVTxbkZUICVwUDQioWQwfUbvjFR1MiTMglKBIFdUEiXqEkLWoVUxfUbIUUVxUkUXkWUV8DZtj1RvfjPHYWRWkUdUYzXkkkUYsVTrg0YMEiV3fjPLQGUogjYtzlXq0zUYoGNUEVcQYETyE0UOglKosjcHIDR1kzUYkWUFMVYvDSXpkTUXoWUV8DZtj1R1gjPHYWRWkUdUYzXkE0UZMWUVMUdvjFR2MiPLglKBIFdUEiXqEkLWoVRWQFNHIESz4RZHYlKsI1ZMcUV5gCLisVTW8DZDk1R1gjPHYWRWkUdUYzXkEkUZkWTxDFdQckV0QiUOglKosjcHIDR1kzUYkWUFMVY2ESXxzDUioGLogDdtj1R1gjPHYWRWkUdUYzXkclUZ01Yw.ELQc0SngzPLYmKCwDctjFRl4RahsVSWkkd3.iX1kzUYcVTV8DZtj1R1gjPHYWRWkUdUYzXkUULX4FNwLEaYEiXqE0UOglKosjcHIDR1kzUYkWUFMVYQckVyUEaSgGLV8DZtjFRl4RahsVSWkkd3TzXuAiUYQURWokcvjFR1gjPHYWRWkUdUYzXkE0UZMWUFEUcQc0Sn4RZHYlKsI1ZMcUV5gSUgUWTVkENHIESn4hPhgWUwH1ZQIyUpsVLhoWVTMFcMYzXugCaggCRRwDZtHjX3UULhsVTxbkZqwVVrUTUic1cVokdqc0SnYVZHYlKsI1ZMcUV5gyZYoVRrE0a2Y0Sn4RZHYlKsI1ZMcUV5gSQhUWSGMFQqEiX5ASZHYGRBgjcIcUV4UkQiUFLwHFNHIESn4hPhgWUwH1ZQIyUzkzUggCRBwDZtHjX3UULhsVTxbkdIckV1ASZHYGRBgjcIcUV4UkQiUVTwDldvjFR1gjPHYWRWkUdUYzXkEzUZYGNV8DZtjFRl4RahsVSWkkd3TUX0QSLggCRBwDZtHjX3UULhsVTsM0YvXUVAASZHomKRsjYHASX0AiUjAGRBgjcIcUV4UkQi4TQVE1ZIQ0SnomTZQ2ZFM1btgFRl4RahsVSWkkdqQTVAASZHMCTogjYtzlXq0zUYo2ZDkkPvjFR2gjPHYWRWkUdUYzXPUjQi4VQT8DZ2HzTukDahcVRWQVcDQjX1cmUZkVQFM1a3vVXlwTUiYWPxDFdQIyRSslQjo2YFgzTEYUX1cmUYUGTTk0Z2YEVzfiPTgWUwH1ZQIiX0MidggGLVgkbAITTqcmUXQCNB0jY5IDRRgSLgM2ZssTdMcjX3UULhsVTsgjYtzlXq0zUYoWPUgkdmwFT3fDZHYlcwDVZyYTT3slLUsVTW8DZtjFR4X2PTETRUAUSAIkVpASZHg1ZGI1YMIiXAcmQgglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPY8VVrkUPvXzXn4BZic1cVM1ZvjFR1MiPMQCRCwjctLDS2wzTMMiZC4DLpkFR0MyPOAUQpQUPvPDRuEkUOgFTVoEaYYEUvTjQg8VTWQFZtf1XmcmUisFLogDLyHDSncCZOciKUAkTEQ0TlolQYgCRBk0aYwVVSsFajsVRBgTLEYTXvTkUOglKosjdpkFS14xPLYGQ4wDLlMkSyP0TNg1Mn8zMtTETRUDUSYlZFkENHITVu0zQiYTUsEVZQckV0QCaHYFVWgkbUcUV3fjTLQmKogTcyLzSPUjZTEDLDgzaQY0SnAkUZkWTxDFdQckV0QCaHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnAEahQSRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHoVUxfUbIIDRwTjQgASUV8DZtj1R2g0PMYmKCwjctLTSvfzTNQCU4wDZ2f1S23RUPIUQTMkYpYTV3fjPYASSwnUPQczXm0TLZglKnM1Y2Y0XqASZHY2LR0DZ2f1S23RUPIUQTMkYpYTV3fjPYASSwnkTUYTXqUTLhsVRBgTLEYTXvTkUOglKosDLHg2R4X2PTETRUAUSAIkVpASZHsVSFoUc3nVVr0zUYoWRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHwVTrgkQqYTXn4BZic1cVM1ZvjFR2MiPLg1Mn8zMtTETRUDUSYlZFkENHgVVqUkQYgVQwfUbIIDRwTjQgASUV8DZtj1RvfDdKkicCQUPIUETMEjTZoFLogjaqESVt0DUioWRBgTLEYTXvTkUOglY40Tdtj1R4QzTLACR4wjdLkWSvfDdKkicCQUPIUETMEjTZoFLogjb3DyXCU0QiglKnM1Y2Y0XqASZHEiKosTdpMkS14xTMMiYS4zLpkFSvXVZHU2LC8DTEoFUAACQH8VTV8DZ5ESXpUDUgoWRBgTLEYTXvTkUOglKoszchkFS14xPLYmKS0zLPMES3Q0TMgGR3sTN1MDUAkTUP0TPRokZvjFRygiQYIUQFM1ZIIDRwTjQgASUV8DZtj1R3o1TLQiZS4DMpMUSx3xPNoGVS0TLHg2R4X2PTETRUAUSAIkVpASZHMGNFk0ZIIDRwTjQgASUV8DZDk1R1gDdKkicCQUPIUETMEjTZoFLogzb3vVX0kjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFR1slQhUWRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHYGNwHldQQkV4EUaHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnwzQhI2ZFMFUUEiX5sFag0VSUokZUwFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZLcjX3UkUXoVRBgTLEYTXvTkUOgldnwDcHkGSvPTdMoGQ40DMtjWSxPzPMMCUVszLHg2R4X2PTETRUAUSAIkVpASZHoWQFI1ZIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogjdqYUXqEkdgoWRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHo2ZVE1ZvnWXpUEaHYFVWgkbUcUV3fjTLQmKogTcyLzSPUjZTEDLDgzaQY0SnA0UZMWUVMUdIIDRwTjQgASUV8DZDk1R1gDdKkicCQUPIUETMEjTZoFLogjdqYUXqQiZhMWRBgTLEYTXvTkUOgFRosjcHg2R4X2PTETRUAUSAIkVpASZHo2ZVE1ZQslXuETaHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnI1UYoWRBgTLEYTXvTkUOgFQosjcHg2R4XWdKAUQrI1YvDiX43hKt3hKt3hKt3hKt3FUUMTUDQEdqw1XmE0UYQTQFM1YAAkKAgDUjYWQwHVdAAkKAwjKtLlKt3hKt3hKt3hYRUUSTEETIckVwTjQisVTTgkdEYDOujzPu0Fbu4VYtQmO77hUSQ0LPwVcmklaSQWXzUlO.."
      },
      "snapshotlist": {
       "current_snapshot": 0,
       "entries": [
        {
         "filetype": "C74Snapshot",
         "version": 2,
         "minorversion": 0,
         "name": "Deelay",
         "origin": "Deelay.vst3",
         "type": "VST3",
         "subtype": "AudioEffect",
         "embed": 0,
         "snapshot": {
          "pluginname": "Deelay.vst3",
          "plugindisplayname": "Deelay",
          "pluginsavedname": "",
          "pluginsaveduniqueid": 0,
          "version": 1,
          "isbank": 0,
          "isbase64": 1,
          "blob": "2860.VMjLgLxB...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9HCL1.iKV0jZLclX2DjKt3xSqX1UgIWPnM1ZIIiXugCaggCRRwDctjFRlQEagkFNFk0azDSV3fjTUQUVTszLHg2S43hPOAUQrI1YvDiXl4RahsVSWkkd3TzXmEzUYgCRBwDctjFRl4RahsVSWkkd3TTVukEaYEDLFMFNHIDSz4RZHYlKsI1ZMcUV5gSQY8VVrk0TqwFYqASZHY2LBwDZtHjX3UULhsVTxbkZUICVwASZHY2LBwDZtHjX3UULhsVTxbkZUICVwUDQioWQwfUbvjFR1MiTMglKBIFdUEiXqEkLWoVUxfUbIUUVxUkUXkWUV8DZtj1RvfjPHYWRWkUdUYzXkkkUYsVTrg0YMEiV3fjPLQGUogjYtzlXq0zUYoGNUEVcQYETyE0UOglKosjcHIDR1kzUYkWUFMVYvDSXpkTUXoWUV8DZtj1R1gjPHYWRWkUdUYzXkE0UZMWUVMUdvjFR2MiPLglKBIFdUEiXqEkLWoVRWQFNHIESz4RZHYlKsI1ZMcUV5gCLisVTW8DZDk1R1gjPHYWRWkUdUYzXkEkUZkWTxDFdQckV0QiUOglKosjcHIDR1kzUYkWUFMVY2ESXxzDUioGLogDdtj1R1gjPHYWRWkUdUYzXkclUZ01Yw.ELQc0SngzPLYmKCwDctjFRl4RahsVSWkkd3.iX1kzUYcVTV8DZtj1R1gjPHYWRWkUdUYzXkUULX4FNwLEaYEiXqE0UOglKosjcHIDR1kzUYkWUFMVYQckVyUEaSgGLV8DZtjFRl4RahsVSWkkd3TzXuAiUYQURWokcvjFR1gjPHYWRWkUdUYzXkE0UZMWUFEUcQc0Sn4RZHYlKsI1ZMcUV5gSUgUWTVkENHIESn4hPhgWUwH1ZQIyUpsVLhoWVTMFcMYzXugCaggCRRwDZtHjX3UULhsVTxbkZqwVVrUTUic1cVokdqc0SnYVZHYlKsI1ZMcUV5gyZYoVRrE0a2Y0Sn4RZHYlKsI1ZMcUV5gSQhUWSGMFQqEiX5ASZHYGRBgjcIcUV4UkQiUFLwHFNHIESn4hPhgWUwH1ZQIyUzkzUggCRBwDZtHjX3UULhsVTxbkdIckV1ASZHYGRBgjcIcUV4UkQiUVTwDldvjFR1gjPHYWRWkUdUYzXkEzUZYGNV8DZtjFRl4RahsVSWkkd3TUX0QSLggCRBwDZtHjX3UULhsVTsM0YvXUVAASZHomKRsjYHASX0AiUjAGRBgjcIcUV4UkQi4TQVE1ZIQ0SnomTZQ2ZFM1btgFRl4RahsVSWkkdqQTVAASZHMCTogjYtzlXq0zUYo2ZDkkPvjFR2gjPHYWRWkUdUYzXPUjQi4VQT8DZ2HzTukDahcVRWQVcDQjX1cmUZkVQFM1a3vVXlwTUiYWPxDFdQIyRSslQjo2YFgzTEYUX1cmUYUGTTk0Z2YEVzfiPTgWUwH1ZQIiX0MidggGLVgkbAITTqcmUXQCNB0jY5IDRRgSLgM2ZssTdMcjX3UULhsVTsgjYtzlXq0zUYoWPUgkdmwFT3fDZHYlcwDVZyYTT3slLUsVTW8DZtjFR4X2PTETRUAUSAIkVpASZHg1ZGI1YMIiXAcmQgglKnM1Y2Y0XqASZHY2LBwDZ2f1S23RUPIUQTMkYpYTV3fjPY8VVrkUPvXzXn4BZic1cVM1ZvjFR1MiPMQCRCwjctLDS2wzTMMiZC4DLpkFR0MyPOAUQpQUPvPDRuEkUOgFTVoEaYYEUvTjQg8VTWQFZtf1XmcmUisFLogDLyHDSncCZOciKUAkTEQ0TlolQYgCRBk0aYwVVSsFajsVRBgTLEYTXvTkUOglKosjdpkFS14xPLYGQ4wDLlMkSyP0TNg1Mn8zMtTETRUDUSYlZFkENHITVu0zQiYTUsEVZQckV0QCaHYFVWgkbUcUV3fjTLQmKogTcyLzSPUjZTEDLDgzaQY0SnAkUZkWTxDFdQckV0QCaHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnAEahQSRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHoVUxfUbIIDRwTjQgASUV8DZtj1R2g0PMYmKCwjctLTSvfzTNQCU4wDZ2f1S23RUPIUQTMkYpYTV3fjPYASSwnUPQczXm0TLZglKnM1Y2Y0XqASZHY2LR0DZ2f1S23RUPIUQTMkYpYTV3fjPYASSwnkTUYTXqUTLhsVRBgTLEYTXvTkUOglKosDLHg2R4X2PTETRUAUSAIkVpASZHsVSFoUc3nVVr0zUYoWRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHwVTrgkQqYTXn4BZic1cVM1ZvjFR2MiPLg1Mn8zMtTETRUDUSYlZFkENHgVVqUkQYgVQwfUbIIDRwTjQgASUV8DZtj1RvfDdKkicCQUPIUETMEjTZoFLogjaqESVt0DUioWRBgTLEYTXvTkUOglY40Tdtj1R4QzTLACR4wjdLkWSvfDdKkicCQUPIUETMEjTZoFLogjb3DyXCU0QiglKnM1Y2Y0XqASZHEiKosTdpMkS14xTMMiYS4zLpkFSvXVZHU2LC8DTEoFUAACQH8VTV8DZ5ESXpUDUgoWRBgTLEYTXvTkUOglKoszchkFS14xPLYmKS0zLPMES3Q0TMgGR3sTN1MDUAkTUP0TPRokZvjFRygiQYIUQFM1ZIIDRwTjQgASUV8DZtj1R3o1TLQiZS4DMpMUSx3xPNoGVS0TLHg2R4X2PTETRUAUSAIkVpASZHMGNFk0ZIIDRwTjQgASUV8DZDk1R1gDdKkicCQUPIUETMEjTZoFLogzb3vVX0kjPHESQFEFLUY0Sn4RZKYGR3sTN1MDUAkTUP0TPRokZvjFR1slQhUWRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHYGNwHldQQkV4EUaHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnwzQhI2ZFMFUUEiX5sFag0VSUokZUwFRlg0UXIWUWkENHIDSz4RZHU2LC8DTEoFUAACQH8VTV8DZLcjX3UkUXoVRBgTLEYTXvTkUOgldnwDcHkGSvPTdMoGQ40DMtjWSxPzPMMCUVszLHg2R4X2PTETRUAUSAIkVpASZHoWQFI1ZIIDRwTjQgASUV8DZtj1R1gDdKkicCQUPIUETMEjTZoFLogjdqYUXqEkdgoWRBgTLEYTXvTkUOglKosjcHg2R4X2PTETRUAUSAIkVpASZHo2ZVE1ZvnWXpUEaHYFVWgkbUcUV3fjTLQmKogTcyLzSPUjZTEDLDgzaQY0SnA0UZMWUVMUdIIDRwTjQgASUV8DZDk1R1gDdKkicCQUPIUETMEjTZoFLogjdqYUXqQiZhMWRBgTLEYTXvTkUOgFRosjcHg2R4X2PTETRUAUSAIkVpASZHo2ZVE1ZQslXuETaHYFVWgkbUcUV3fjPLQmKogTcyLzSPUjZTEDLDgzaQY0SnI1UYoWRBgTLEYTXvTkUOgFQosjcHg2R4XWdKAUQrI1YvDiX43hKt3hKt3hKt3hKt3FUUMTUDQEdqw1XmE0UYQTQFM1YAAkKAgDUjYWQwHVdAAkKAwjKtLlKt3hKt3hKt3hYRUUSTEETIckVwTjQisVTTgkdEYDOujzPu0Fbu4VYtQmO77hUSQ0LPwVcmklaSQWXzUlO.."
         },
         "fileref": {
          "name": "Deelay",
          "filename": "Deelay.maxsnap",
          "filepath": "~/Documents/Max 9/Snapshots",
          "filepos": -1,
          "snapshotfileid": "51e2207df63e45c8781d40b4b100e731"
         }
        }
       ]
      }
     },
     "text": "vst~ 2 2 @autosave 1",
     "varname": "vst~[1]",
     "viewvisibility": 0
    }
   },
   {
    "box": {
     "id": "obj-88",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      5800.0,
      260.0,
      22.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      122.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-89",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      90.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1176.0,
      124.0,
      90.0,
      18.0
     ],
     "text": "load reverb"
    }
   },
   {
    "box": {
     "id": "obj-90",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      5840.0,
      260.0,
      22.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      148.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-91",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      90.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1176.0,
      150.0,
      90.0,
      18.0
     ],
     "text": "show reverb"
    }
   },
   {
    "box": {
     "id": "obj-92",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5800.0,
      230.0,
      44.0,
      22.0
     ],
     "text": "plug"
    }
   },
   {
    "box": {
     "id": "obj-93",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5850.0,
      230.0,
      44.0,
      22.0
     ],
     "text": "open"
    }
   },
   {
    "box": {
     "id": "obj-94",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      6100.0,
      260.0,
      22.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1266.0,
      122.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-95",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      90.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1292.0,
      124.0,
      90.0,
      18.0
     ],
     "text": "load delay"
    }
   },
   {
    "box": {
     "id": "obj-96",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      6140.0,
      260.0,
      22.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1266.0,
      148.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-97",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      90.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1292.0,
      150.0,
      90.0,
      18.0
     ],
     "text": "show delay"
    }
   },
   {
    "box": {
     "id": "obj-98",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      6100.0,
      230.0,
      44.0,
      22.0
     ],
     "text": "plug"
    }
   },
   {
    "box": {
     "id": "obj-99",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      6150.0,
      230.0,
      44.0,
      22.0
     ],
     "text": "open"
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      6600.0,
      200.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      178.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "delay_to_reverb",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "dly\u2192rev",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "delay_to_reverb"
    }
   },
   {
    "box": {
     "id": "obj-101",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      6660.0,
      200.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1202.0,
      178.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "wash",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "WASH",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "wash"
    }
   },
   {
    "box": {
     "id": "obj-102",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      6720.0,
      200.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1254.0,
      178.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "echo",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "ECHO",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "echo"
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-103",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      100.0,
      37.0
     ],
     "presentation": 1,
     "presentation_linecount": 3,
     "presentation_rect": [
      1306.0,
      182.0,
      86.0,
      37.0
     ],
     "text": "WASH / ECHO add\nreverb / delay to\neverything"
    }
   },
   {
    "box": {
     "id": "obj-104",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      6660.0,
      260.0,
      100.0,
      22.0
     ],
     "text": "s chain_wash"
    }
   },
   {
    "box": {
     "id": "obj-105",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      6720.0,
      260.0,
      100.0,
      22.0
     ],
     "text": "s chain_echo"
    }
   },
   {
    "box": {
     "id": "obj-106",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "bang",
      ""
     ],
     "patching_rect": [
      5400.0,
      40.0,
      51.0,
      22.0
     ],
     "text": "t b s"
    }
   },
   {
    "box": {
     "id": "obj-107",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5460.0,
      70.0,
      121.0,
      22.0
     ],
     "text": "prepend replace"
    }
   },
   {
    "box": {
     "id": "obj-108",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "bang"
     ],
     "patching_rect": [
      5460.0,
      98.0,
      142.0,
      22.0
     ],
     "text": "buffer~ relay_ddsp"
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5400.0,
      70.0,
      79.0,
      22.0
     ],
     "text": "startloop"
    }
   },
   {
    "box": {
     "id": "obj-110",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5600.0,
      70.0,
      58.0,
      22.0
     ],
     "text": "loop 1"
    }
   },
   {
    "box": {
     "id": "obj-111",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      5600.0,
      40.0,
      72.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-112",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      5400.0,
      130.0,
      150.0,
      22.0
     ],
     "text": "groove~ relay_ddsp 1"
    }
   },
   {
    "box": {
     "id": "obj-113",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      5570.0,
      100.0,
      65.0,
      22.0
     ],
     "text": "sig~ 1."
    }
   },
   {
    "box": {
     "id": "obj-114",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5500.0,
      40.0,
      79.0,
      22.0
     ],
     "text": "ddsp_done"
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "id": "obj-115",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      44.0,
      220.0,
      600.0
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      44.0,
      220.0,
      600.0
     ],
     "rounded": 6
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.72,
      0.58,
      0.9,
      1.0
     ],
     "id": "obj-116",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      44.0,
      220.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      44.0,
      220.0,
      24.0
     ],
     "rounded": 0
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 13.0,
     "id": "obj-117",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      44.0,
      210.0,
      21.0
     ],
     "presentation": 1,
     "presentation_rect": [
      14.0,
      46.0,
      208.0,
      21.0
     ],
     "text": "PLAYER 1 \u00b7 dust"
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "id": "obj-118",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4160.0,
      10.0,
      60.0,
      40.0
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      68.0,
      220.0,
      190.0
     ],
     "rounded": 0
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      4100.0,
      10.0,
      44.0,
      22.0
     ],
     "text": "== 1"
    }
   },
   {
    "box": {
     "id": "obj-120",
     "ignoreclick": 1,
     "maxclass": "led",
     "numinlets": 1,
     "numoutlets": 1,
     "oncolor": [
      0.2,
      0.95,
      0.35,
      1.0
     ],
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      4100.0,
      40.0,
      40.0,
      40.0
     ],
     "presentation": 1,
     "presentation_rect": [
      182.0,
      76.0,
      36.0,
      36.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-121",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "outlettype": [
      "bang",
      "bang",
      ""
     ],
     "patching_rect": [
      4160.0,
      60.0,
      65.0,
      22.0
     ],
     "text": "sel 1 0"
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4160.0,
      90.0,
      191.0,
      22.0
     ],
     "text": "bgcolor 0.78 0.95 0.8 1."
    }
   },
   {
    "box": {
     "id": "obj-123",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4160.0,
      120.0,
      191.0,
      22.0
     ],
     "text": "bgcolor 0.96 0.96 0.95 1."
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-124",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      52.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      174.0,
      114.0,
      52.0,
      17.0
     ],
     "text": "your turn"
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "live.button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4000.0,
      40.0,
      50.0,
      50.0
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      76.0,
      50.0,
      50.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_longname": "pass_1",
       "parameter_mmax": 1,
       "parameter_modmode": 0,
       "parameter_shortname": "pass_1",
       "parameter_type": 2
      }
     },
     "varname": "pass_1"
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-126",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      30.0,
      128.0,
      40.0,
      18.0
     ],
     "text": "PASS"
    }
   },
   {
    "box": {
     "id": "obj-127",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      4000.0,
      100.0,
      40.0,
      22.0
     ],
     "text": "t b"
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4000.0,
      130.0,
      58.0,
      22.0
     ],
     "text": "pass 1"
    }
   },
   {
    "box": {
     "id": "obj-129",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4060.0,
      100.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      82.0,
      76.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "twist_1",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "twist",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "twist_1"
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4060.0,
      160.0,
      121.0,
      22.0
     ],
     "text": "prepend twist 1"
    }
   },
   {
    "box": {
     "id": "obj-131",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      3700.0,
      560.0,
      160.0,
      22.0
     ],
     "text": "chain_voice_body dust"
    }
   },
   {
    "box": {
     "id": "obj-132",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      3900.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        70.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "size_1",
       "parameter_mmax": 2000.0,
       "parameter_mmin": 20.0,
       "parameter_modmode": 0,
       "parameter_shortname": "size",
       "parameter_type": 0,
       "parameter_unitstyle": 2
      }
     },
     "varname": "size_1"
    }
   },
   {
    "box": {
     "id": "obj-133",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3900.0,
      520.0,
      100.0,
      22.0
     ],
     "text": "prepend size"
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      3960.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      68.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "spray_1",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "spray",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "spray_1"
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      3960.0,
      520.0,
      107.0,
      22.0
     ],
     "text": "prepend spray"
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4020.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      116.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "pitch_1",
       "parameter_mmax": 24.0,
       "parameter_mmin": -24.0,
       "parameter_modmode": 0,
       "parameter_shortname": "pitch",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "pitch_1"
    }
   },
   {
    "box": {
     "id": "obj-137",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4020.0,
      520.0,
      107.0,
      22.0
     ],
     "text": "prepend pitch"
    }
   },
   {
    "box": {
     "id": "obj-138",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4080.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      164.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "ring_1",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "ring",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "ring_1"
    }
   },
   {
    "box": {
     "id": "obj-139",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4080.0,
      520.0,
      100.0,
      22.0
     ],
     "text": "prepend ring"
    }
   },
   {
    "box": {
     "id": "obj-140",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      4160.0,
      460.0,
      20.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      202.0,
      20.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-141",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      180.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      44.0,
      203.0,
      34.0,
      17.0
     ],
     "text": "steps"
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4160.0,
      430.0,
      86.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-143",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4160.0,
      520.0,
      107.0,
      22.0
     ],
     "text": "prepend steps"
    }
   },
   {
    "box": {
     "args": [
      "VOICE1"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "id": "obj-144",
     "lockeddragscroll": 0,
     "lockedsize": 0,
     "maxclass": "bpatcher",
     "name": "chain_strip.maxpat",
     "numinlets": 2,
     "numoutlets": 6,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "patching_rect": [
      7000.0,
      40.0,
      150.0,
      370.0
     ],
     "presentation": 1,
     "presentation_rect": [
      43.0,
      220.0,
      150.0,
      370.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-145",
     "maxclass": "meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      8000.0,
      700.0,
      150.0,
      14.0
     ],
     "presentation": 1,
     "presentation_rect": [
      43.0,
      600.0,
      150.0,
      14.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-146",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      80.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      43.0,
      616.0,
      80.0,
      17.0
     ],
     "text": "speaker 1"
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "id": "obj-147",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      236.0,
      44.0,
      220.0,
      600.0
     ],
     "presentation": 1,
     "presentation_rect": [
      236.0,
      44.0,
      220.0,
      600.0
     ],
     "rounded": 6
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.72,
      0.58,
      0.9,
      1.0
     ],
     "id": "obj-148",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      236.0,
      44.0,
      220.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      236.0,
      44.0,
      220.0,
      24.0
     ],
     "rounded": 0
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 13.0,
     "id": "obj-149",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      236.0,
      44.0,
      210.0,
      21.0
     ],
     "presentation": 1,
     "presentation_rect": [
      242.0,
      46.0,
      208.0,
      21.0
     ],
     "text": "PLAYER 2 \u00b7 drift"
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "id": "obj-150",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4680.0,
      10.0,
      60.0,
      40.0
     ],
     "presentation": 1,
     "presentation_rect": [
      236.0,
      68.0,
      220.0,
      190.0
     ],
     "rounded": 0
    }
   },
   {
    "box": {
     "id": "obj-151",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      4620.0,
      10.0,
      44.0,
      22.0
     ],
     "text": "== 2"
    }
   },
   {
    "box": {
     "id": "obj-152",
     "ignoreclick": 1,
     "maxclass": "led",
     "numinlets": 1,
     "numoutlets": 1,
     "oncolor": [
      0.2,
      0.95,
      0.35,
      1.0
     ],
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      4620.0,
      40.0,
      40.0,
      40.0
     ],
     "presentation": 1,
     "presentation_rect": [
      410.0,
      76.0,
      36.0,
      36.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-153",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "outlettype": [
      "bang",
      "bang",
      ""
     ],
     "patching_rect": [
      4680.0,
      60.0,
      65.0,
      22.0
     ],
     "text": "sel 1 0"
    }
   },
   {
    "box": {
     "id": "obj-154",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4680.0,
      90.0,
      191.0,
      22.0
     ],
     "text": "bgcolor 0.78 0.95 0.8 1."
    }
   },
   {
    "box": {
     "id": "obj-155",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4680.0,
      120.0,
      191.0,
      22.0
     ],
     "text": "bgcolor 0.96 0.96 0.95 1."
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-156",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      52.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      402.0,
      114.0,
      52.0,
      17.0
     ],
     "text": "your turn"
    }
   },
   {
    "box": {
     "id": "obj-157",
     "maxclass": "live.button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4520.0,
      40.0,
      50.0,
      50.0
     ],
     "presentation": 1,
     "presentation_rect": [
      248.0,
      76.0,
      50.0,
      50.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_longname": "pass_2",
       "parameter_mmax": 1,
       "parameter_modmode": 0,
       "parameter_shortname": "pass_2",
       "parameter_type": 2
      }
     },
     "varname": "pass_2"
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-158",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      258.0,
      128.0,
      40.0,
      18.0
     ],
     "text": "PASS"
    }
   },
   {
    "box": {
     "id": "obj-159",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      4520.0,
      100.0,
      40.0,
      22.0
     ],
     "text": "t b"
    }
   },
   {
    "box": {
     "id": "obj-160",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4520.0,
      130.0,
      58.0,
      22.0
     ],
     "text": "pass 2"
    }
   },
   {
    "box": {
     "id": "obj-161",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4580.0,
      100.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      310.0,
      76.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "twist_2",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "twist",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "twist_2"
    }
   },
   {
    "box": {
     "id": "obj-162",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4580.0,
      160.0,
      121.0,
      22.0
     ],
     "text": "prepend twist 2"
    }
   },
   {
    "box": {
     "id": "obj-163",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      4220.0,
      560.0,
      160.0,
      22.0
     ],
     "text": "chain_voice_body drift"
    }
   },
   {
    "box": {
     "id": "obj-164",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4420.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      248.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        400.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "size_2",
       "parameter_mmax": 2000.0,
       "parameter_mmin": 20.0,
       "parameter_modmode": 0,
       "parameter_shortname": "size",
       "parameter_type": 0,
       "parameter_unitstyle": 2
      }
     },
     "varname": "size_2"
    }
   },
   {
    "box": {
     "id": "obj-165",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4420.0,
      520.0,
      100.0,
      22.0
     ],
     "text": "prepend size"
    }
   },
   {
    "box": {
     "id": "obj-166",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4480.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      296.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.15
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "spray_2",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "spray",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "spray_2"
    }
   },
   {
    "box": {
     "id": "obj-167",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4480.0,
      520.0,
      107.0,
      22.0
     ],
     "text": "prepend spray"
    }
   },
   {
    "box": {
     "id": "obj-168",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4540.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      344.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "pitch_2",
       "parameter_mmax": 24.0,
       "parameter_mmin": -24.0,
       "parameter_modmode": 0,
       "parameter_shortname": "pitch",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "pitch_2"
    }
   },
   {
    "box": {
     "id": "obj-169",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4540.0,
      520.0,
      107.0,
      22.0
     ],
     "text": "prepend pitch"
    }
   },
   {
    "box": {
     "id": "obj-170",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4600.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      392.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.8
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "ring_2",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "ring",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "ring_2"
    }
   },
   {
    "box": {
     "id": "obj-171",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4600.0,
      520.0,
      100.0,
      22.0
     ],
     "text": "prepend ring"
    }
   },
   {
    "box": {
     "id": "obj-172",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      4680.0,
      460.0,
      20.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      248.0,
      202.0,
      20.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-173",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      180.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      272.0,
      203.0,
      34.0,
      17.0
     ],
     "text": "steps"
    }
   },
   {
    "box": {
     "id": "obj-174",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4680.0,
      430.0,
      86.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-175",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4680.0,
      520.0,
      107.0,
      22.0
     ],
     "text": "prepend steps"
    }
   },
   {
    "box": {
     "args": [
      "VOICE2"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "id": "obj-176",
     "lockeddragscroll": 0,
     "lockedsize": 0,
     "maxclass": "bpatcher",
     "name": "chain_strip.maxpat",
     "numinlets": 2,
     "numoutlets": 6,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "patching_rect": [
      7170.0,
      40.0,
      150.0,
      370.0
     ],
     "presentation": 1,
     "presentation_rect": [
      271.0,
      220.0,
      150.0,
      370.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-177",
     "maxclass": "meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      8060.0,
      700.0,
      150.0,
      14.0
     ],
     "presentation": 1,
     "presentation_rect": [
      271.0,
      600.0,
      150.0,
      14.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-178",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      80.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      271.0,
      616.0,
      80.0,
      17.0
     ],
     "text": "speaker 2"
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "id": "obj-179",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      464.0,
      44.0,
      220.0,
      600.0
     ],
     "presentation": 1,
     "presentation_rect": [
      464.0,
      44.0,
      220.0,
      600.0
     ],
     "rounded": 6
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.72,
      0.58,
      0.9,
      1.0
     ],
     "id": "obj-180",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      464.0,
      44.0,
      220.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      464.0,
      44.0,
      220.0,
      24.0
     ],
     "rounded": 0
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 13.0,
     "id": "obj-181",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      464.0,
      44.0,
      210.0,
      21.0
     ],
     "presentation": 1,
     "presentation_rect": [
      470.0,
      46.0,
      208.0,
      21.0
     ],
     "text": "PLAYER 3 \u00b7 glass"
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "id": "obj-182",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      5200.0,
      10.0,
      60.0,
      40.0
     ],
     "presentation": 1,
     "presentation_rect": [
      464.0,
      68.0,
      220.0,
      190.0
     ],
     "rounded": 0
    }
   },
   {
    "box": {
     "id": "obj-183",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      5140.0,
      10.0,
      44.0,
      22.0
     ],
     "text": "== 3"
    }
   },
   {
    "box": {
     "id": "obj-184",
     "ignoreclick": 1,
     "maxclass": "led",
     "numinlets": 1,
     "numoutlets": 1,
     "oncolor": [
      0.2,
      0.95,
      0.35,
      1.0
     ],
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      5140.0,
      40.0,
      40.0,
      40.0
     ],
     "presentation": 1,
     "presentation_rect": [
      638.0,
      76.0,
      36.0,
      36.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-185",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "outlettype": [
      "bang",
      "bang",
      ""
     ],
     "patching_rect": [
      5200.0,
      60.0,
      65.0,
      22.0
     ],
     "text": "sel 1 0"
    }
   },
   {
    "box": {
     "id": "obj-186",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5200.0,
      90.0,
      191.0,
      22.0
     ],
     "text": "bgcolor 0.78 0.95 0.8 1."
    }
   },
   {
    "box": {
     "id": "obj-187",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5200.0,
      120.0,
      191.0,
      22.0
     ],
     "text": "bgcolor 0.96 0.96 0.95 1."
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-188",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      52.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      630.0,
      114.0,
      52.0,
      17.0
     ],
     "text": "your turn"
    }
   },
   {
    "box": {
     "id": "obj-189",
     "maxclass": "live.button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      5040.0,
      40.0,
      50.0,
      50.0
     ],
     "presentation": 1,
     "presentation_rect": [
      476.0,
      76.0,
      50.0,
      50.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_longname": "pass_3",
       "parameter_mmax": 1,
       "parameter_modmode": 0,
       "parameter_shortname": "pass_3",
       "parameter_type": 2
      }
     },
     "varname": "pass_3"
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-190",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      486.0,
      128.0,
      40.0,
      18.0
     ],
     "text": "PASS"
    }
   },
   {
    "box": {
     "id": "obj-191",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      5040.0,
      100.0,
      40.0,
      22.0
     ],
     "text": "t b"
    }
   },
   {
    "box": {
     "id": "obj-192",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5040.0,
      130.0,
      58.0,
      22.0
     ],
     "text": "pass 3"
    }
   },
   {
    "box": {
     "id": "obj-193",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      5100.0,
      100.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      538.0,
      76.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "twist_3",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "twist",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "twist_3"
    }
   },
   {
    "box": {
     "id": "obj-194",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5100.0,
      160.0,
      121.0,
      22.0
     ],
     "text": "prepend twist 3"
    }
   },
   {
    "box": {
     "id": "obj-195",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      4740.0,
      560.0,
      160.0,
      22.0
     ],
     "text": "chain_voice_body glass"
    }
   },
   {
    "box": {
     "id": "obj-196",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      4940.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      476.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        140.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "size_3",
       "parameter_mmax": 2000.0,
       "parameter_mmin": 20.0,
       "parameter_modmode": 0,
       "parameter_shortname": "size",
       "parameter_type": 0,
       "parameter_unitstyle": 2
      }
     },
     "varname": "size_3"
    }
   },
   {
    "box": {
     "id": "obj-197",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      4940.0,
      520.0,
      100.0,
      22.0
     ],
     "text": "prepend size"
    }
   },
   {
    "box": {
     "id": "obj-198",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      5000.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      524.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "spray_3",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "spray",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "spray_3"
    }
   },
   {
    "box": {
     "id": "obj-199",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5000.0,
      520.0,
      107.0,
      22.0
     ],
     "text": "prepend spray"
    }
   },
   {
    "box": {
     "id": "obj-200",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      5060.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      572.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "pitch_3",
       "parameter_mmax": 24.0,
       "parameter_mmin": -24.0,
       "parameter_modmode": 0,
       "parameter_shortname": "pitch",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "pitch_3"
    }
   },
   {
    "box": {
     "id": "obj-201",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5060.0,
      520.0,
      107.0,
      22.0
     ],
     "text": "prepend pitch"
    }
   },
   {
    "box": {
     "id": "obj-202",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      5120.0,
      460.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      620.0,
      148.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0.7
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "ring_3",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "ring",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "ring_3"
    }
   },
   {
    "box": {
     "id": "obj-203",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5120.0,
      520.0,
      100.0,
      22.0
     ],
     "text": "prepend ring"
    }
   },
   {
    "box": {
     "id": "obj-204",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      5200.0,
      460.0,
      20.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      476.0,
      202.0,
      20.0,
      20.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-205",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      180.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      500.0,
      203.0,
      34.0,
      17.0
     ],
     "text": "steps"
    }
   },
   {
    "box": {
     "id": "obj-206",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5200.0,
      430.0,
      86.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-207",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      5200.0,
      520.0,
      107.0,
      22.0
     ],
     "text": "prepend steps"
    }
   },
   {
    "box": {
     "args": [
      "VOICE3"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "id": "obj-208",
     "lockeddragscroll": 0,
     "lockedsize": 0,
     "maxclass": "bpatcher",
     "name": "chain_strip.maxpat",
     "numinlets": 2,
     "numoutlets": 6,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "patching_rect": [
      7340.0,
      40.0,
      150.0,
      370.0
     ],
     "presentation": 1,
     "presentation_rect": [
      499.0,
      220.0,
      150.0,
      370.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-209",
     "maxclass": "meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      8120.0,
      700.0,
      150.0,
      14.0
     ],
     "presentation": 1,
     "presentation_rect": [
      499.0,
      600.0,
      150.0,
      14.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-210",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      80.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      499.0,
      616.0,
      80.0,
      17.0
     ],
     "text": "speaker 3"
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "id": "obj-211",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      306.0,
      692.0,
      400.0
     ],
     "presentation": 1,
     "presentation_rect": [
      700.0,
      306.0,
      692.0,
      400.0
     ],
     "rounded": 6
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.45,
      0.8,
      0.7,
      1.0
     ],
     "id": "obj-212",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      306.0,
      692.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      700.0,
      306.0,
      692.0,
      24.0
     ],
     "rounded": 0
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 13.0,
     "id": "obj-213",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      306.0,
      682.0,
      21.0
     ],
     "presentation": 1,
     "presentation_rect": [
      706.0,
      308.0,
      680.0,
      21.0
     ],
     "text": "ROOM \u00b7 spread across the speakers (L \u00b7 middle \u00b7 R)"
    }
   },
   {
    "box": {
     "args": [
      "SOURCE"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "id": "obj-214",
     "lockeddragscroll": 0,
     "lockedsize": 0,
     "maxclass": "bpatcher",
     "name": "chain_strip.maxpat",
     "numinlets": 2,
     "numoutlets": 6,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "patching_rect": [
      7600.0,
      40.0,
      150.0,
      370.0
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      334.0,
      150.0,
      370.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "args": [
      "DDSP"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "id": "obj-215",
     "lockeddragscroll": 0,
     "lockedsize": 0,
     "maxclass": "bpatcher",
     "name": "chain_strip.maxpat",
     "numinlets": 2,
     "numoutlets": 6,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "patching_rect": [
      7770.0,
      40.0,
      150.0,
      370.0
     ],
     "presentation": 1,
     "presentation_rect": [
      870.0,
      334.0,
      150.0,
      370.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "args": [
      "REVERB"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "id": "obj-216",
     "lockeddragscroll": 0,
     "lockedsize": 0,
     "maxclass": "bpatcher",
     "name": "chain_return.maxpat",
     "numinlets": 2,
     "numoutlets": 2,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      7940.0,
      40.0,
      150.0,
      370.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1028.0,
      334.0,
      150.0,
      370.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "args": [
      "DELAY"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "id": "obj-217",
     "lockeddragscroll": 0,
     "lockedsize": 0,
     "maxclass": "bpatcher",
     "name": "chain_return.maxpat",
     "numinlets": 2,
     "numoutlets": 2,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      8110.0,
      40.0,
      150.0,
      370.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1186.0,
      334.0,
      150.0,
      370.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-218",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      6600.0,
      300.0,
      58.0,
      22.0
     ],
     "text": "*~ 0.3"
    }
   },
   {
    "box": {
     "id": "obj-219",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      6660.0,
      300.0,
      58.0,
      22.0
     ],
     "text": "*~ 0.3"
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "id": "obj-220",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      712.0,
      692.0,
      84.0
     ],
     "presentation": 1,
     "presentation_rect": [
      700.0,
      712.0,
      692.0,
      84.0
     ],
     "rounded": 6
    }
   },
   {
    "box": {
     "background": 1,
     "bgcolor": [
      0.3,
      0.3,
      0.33,
      1.0
     ],
     "id": "obj-221",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      712.0,
      692.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      700.0,
      712.0,
      692.0,
      24.0
     ],
     "rounded": 0
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 13.0,
     "id": "obj-222",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      712.0,
      682.0,
      21.0
     ],
     "presentation": 1,
     "presentation_rect": [
      706.0,
      714.0,
      680.0,
      21.0
     ],
     "text": "OUTPUT",
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-223",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      9000.0,
      40.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      740.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        -6.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "master",
       "parameter_mmax": 6.0,
       "parameter_mmin": -70.0,
       "parameter_modmode": 0,
       "parameter_shortname": "master",
       "parameter_type": 0,
       "parameter_unitstyle": 4
      }
     },
     "varname": "master"
    }
   },
   {
    "box": {
     "id": "obj-224",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      9060.0,
      40.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      764.0,
      740.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        -6.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "room",
       "parameter_mmax": 6.0,
       "parameter_mmin": -70.0,
       "parameter_modmode": 0,
       "parameter_shortname": "room",
       "parameter_type": 0,
       "parameter_unitstyle": 4
      }
     },
     "varname": "room"
    }
   },
   {
    "box": {
     "id": "obj-225",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9000.0,
      100.0,
      51.0,
      22.0
     ],
     "text": "dbtoa"
    }
   },
   {
    "box": {
     "id": "obj-226",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9000.0,
      130.0,
      86.0,
      22.0
     ],
     "text": "pack 0. 30"
    }
   },
   {
    "box": {
     "id": "obj-227",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "patching_rect": [
      9000.0,
      160.0,
      51.0,
      22.0
     ],
     "text": "line~"
    }
   },
   {
    "box": {
     "id": "obj-228",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9060.0,
      70.0,
      93.0,
      22.0
     ],
     "text": "loadmess -6"
    }
   },
   {
    "box": {
     "id": "obj-229",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9140.0,
      100.0,
      51.0,
      22.0
     ],
     "text": "dbtoa"
    }
   },
   {
    "box": {
     "id": "obj-230",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9140.0,
      130.0,
      86.0,
      22.0
     ],
     "text": "pack 0. 30"
    }
   },
   {
    "box": {
     "id": "obj-231",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "patching_rect": [
      9140.0,
      160.0,
      51.0,
      22.0
     ],
     "text": "line~"
    }
   },
   {
    "box": {
     "id": "obj-232",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9200.0,
      70.0,
      93.0,
      22.0
     ],
     "text": "loadmess -6"
    }
   },
   {
    "box": {
     "id": "obj-233",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      9280.0,
      200.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-234",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      9340.0,
      200.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-235",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      9280.0,
      230.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-236",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      9280.0,
      260.0,
      58.0,
      22.0
     ],
     "text": "*~ 0.5"
    }
   },
   {
    "box": {
     "id": "obj-237",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      9600.0,
      40.0,
      30.0,
      30.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      6.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 11.0,
     "id": "obj-238",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      110.0,
      31.0
     ],
     "presentation": 1,
     "presentation_linecount": 2,
     "presentation_rect": [
      1184.0,
      8.0,
      97.0,
      31.0
     ],
     "text": "STOP ALL AUDIO\n(Esc)"
    }
   },
   {
    "box": {
     "id": "obj-239",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9600.0,
      10.0,
      86.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-240",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 4,
     "outlettype": [
      "int",
      "int",
      "int",
      "int"
     ],
     "patching_rect": [
      9660.0,
      10.0,
      40.0,
      22.0
     ],
     "text": "key"
    }
   },
   {
    "box": {
     "id": "obj-241",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "bang",
      ""
     ],
     "patching_rect": [
      9660.0,
      40.0,
      58.0,
      22.0
     ],
     "text": "sel 27"
    }
   },
   {
    "box": {
     "id": "obj-242",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      9600.0,
      80.0,
      44.0,
      22.0
     ],
     "text": "== 0"
    }
   },
   {
    "box": {
     "id": "obj-243",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9600.0,
      110.0,
      86.0,
      22.0
     ],
     "text": "pack 0. 50"
    }
   },
   {
    "box": {
     "id": "obj-244",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9700.0,
      80.0,
      93.0,
      22.0
     ],
     "text": "loadmess 1."
    }
   },
   {
    "box": {
     "id": "obj-245",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "patching_rect": [
      9600.0,
      140.0,
      51.0,
      22.0
     ],
     "text": "line~"
    }
   },
   {
    "box": {
     "id": "obj-246",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      9800.0,
      40.0,
      22.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      820.0,
      742.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-247",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      110.0,
      27.0
     ],
     "presentation": 1,
     "presentation_linecount": 2,
     "presentation_rect": [
      846.0,
      744.0,
      83.0,
      27.0
     ],
     "text": "headphones mode\n(all to outs 1/2)"
    }
   },
   {
    "box": {
     "id": "obj-248",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9800.0,
      10.0,
      86.0,
      22.0
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-249",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      9800.0,
      80.0,
      44.0,
      22.0
     ],
     "text": "== 0"
    }
   },
   {
    "box": {
     "id": "obj-250",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9800.0,
      110.0,
      86.0,
      22.0
     ],
     "text": "pack 0. 30"
    }
   },
   {
    "box": {
     "id": "obj-251",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "patching_rect": [
      9800.0,
      140.0,
      51.0,
      22.0
     ],
     "text": "line~"
    }
   },
   {
    "box": {
     "id": "obj-252",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9900.0,
      80.0,
      93.0,
      22.0
     ],
     "text": "loadmess 1."
    }
   },
   {
    "box": {
     "id": "obj-253",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      9860.0,
      110.0,
      86.0,
      22.0
     ],
     "text": "pack 0. 30"
    }
   },
   {
    "box": {
     "id": "obj-254",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "patching_rect": [
      9860.0,
      140.0,
      51.0,
      22.0
     ],
     "text": "line~"
    }
   },
   {
    "box": {
     "id": "obj-255",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10000.0,
      200.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-256",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10000.0,
      230.0,
      58.0,
      22.0
     ],
     "text": "*~ 0.5"
    }
   },
   {
    "box": {
     "id": "obj-257",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10000.0,
      260.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-258",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10000.0,
      300.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-259",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10000.0,
      330.0,
      51.0,
      22.0
     ],
     "text": "tanh~"
    }
   },
   {
    "box": {
     "id": "obj-260",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10000.0,
      360.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-261",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      9958.0,
      390.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-262",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10120.0,
      200.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-263",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10120.0,
      230.0,
      58.0,
      22.0
     ],
     "text": "*~ 0.5"
    }
   },
   {
    "box": {
     "id": "obj-264",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10120.0,
      260.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-265",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10120.0,
      300.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-266",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10120.0,
      330.0,
      51.0,
      22.0
     ],
     "text": "tanh~"
    }
   },
   {
    "box": {
     "id": "obj-267",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10120.0,
      360.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-268",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10120.0,
      390.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-269",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10240.0,
      200.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-270",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10240.0,
      230.0,
      58.0,
      22.0
     ],
     "text": "*~ 0.5"
    }
   },
   {
    "box": {
     "id": "obj-271",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10240.0,
      260.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-272",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10240.0,
      300.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-273",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10240.0,
      330.0,
      51.0,
      22.0
     ],
     "text": "tanh~"
    }
   },
   {
    "box": {
     "id": "obj-274",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10240.0,
      360.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-275",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10240.0,
      390.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-276",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 0,
     "patching_rect": [
      10000.0,
      471.4285669326782,
      120.0,
      22.0
     ],
     "text": "dac~ 1 2 3"
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-277",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      110.0,
      27.0
     ],
     "presentation": 1,
     "presentation_linecount": 2,
     "presentation_rect": [
      968.0,
      738.0,
      84.0,
      27.0
     ],
     "text": "speaker outputs\nfor players 1 \u00b7 2 \u00b7 3"
    }
   },
   {
    "box": {
     "id": "obj-278",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      10000.0,
      420.0,
      36.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1080.0,
      744.0,
      36.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-279",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      10000.0,
      390.0,
      86.0,
      22.0
     ],
     "text": "loadmess 1"
    }
   },
   {
    "box": {
     "id": "obj-280",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      10050.0,
      420.0,
      36.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1120.0,
      744.0,
      36.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-281",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      10050.0,
      390.0,
      86.0,
      22.0
     ],
     "text": "loadmess 2"
    }
   },
   {
    "box": {
     "id": "obj-282",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      10100.0,
      420.0,
      36.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1160.0,
      744.0,
      36.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-283",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      10100.0,
      390.0,
      86.0,
      22.0
     ],
     "text": "loadmess 3"
    }
   },
   {
    "box": {
     "id": "obj-284",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      10000.0,
      445.0,
      79.0,
      22.0
     ],
     "text": "pak 1 2 3"
    }
   },
   {
    "box": {
     "id": "obj-285",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      10150.0,
      445.0,
      93.0,
      22.0
     ],
     "text": "prepend set"
    }
   },
   {
    "box": {
     "id": "obj-286",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10400.0,
      200.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-287",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10460.0,
      200.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-288",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10400.0,
      300.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-289",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10400.0,
      330.0,
      51.0,
      22.0
     ],
     "text": "tanh~"
    }
   },
   {
    "box": {
     "id": "obj-290",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10400.0,
      360.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-291",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10400.0,
      390.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-292",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10460.0,
      300.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-293",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10460.0,
      330.0,
      51.0,
      22.0
     ],
     "text": "tanh~"
    }
   },
   {
    "box": {
     "id": "obj-294",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10460.0,
      360.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-295",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10460.0,
      390.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-296",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      10400.0,
      460.0,
      72.0,
      22.0
     ],
     "text": "dac~ 1 2"
    }
   },
   {
    "box": {
     "id": "obj-297",
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      10600.0,
      300.0,
      45.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1212.0,
      734.0,
      45.0,
      45.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-298",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1206.0,
      778.0,
      70.0,
      17.0
     ],
     "text": "audio on/off"
    }
   },
   {
    "box": {
     "id": "obj-299",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      10600.0,
      400.0,
      93.0,
      22.0
     ],
     "text": "sfrecord~ 2"
    }
   },
   {
    "box": {
     "id": "obj-300",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      10600.0,
      360.0,
      22.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1290.0,
      740.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 9.0,
     "id": "obj-301",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      60.0,
      17.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1316.0,
      742.0,
      60.0,
      17.0
     ],
     "text": "rec file"
    }
   },
   {
    "box": {
     "id": "obj-302",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      10600.0,
      330.0,
      44.0,
      22.0
     ],
     "text": "open"
    }
   },
   {
    "box": {
     "id": "obj-303",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      10640.0,
      360.0,
      22.0,
      22.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1290.0,
      766.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontsize": 10.0,
     "id": "obj-304",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1316.0,
      768.0,
      40.0,
      18.0
     ],
     "text": "REC"
    }
   },
   {
    "box": {
     "id": "obj-305",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      8300.0,
      440.0,
      120.0,
      22.0
     ],
     "saved_object_attributes": {
      "filename": "chain_solo.js",
      "parameter_enable": 0
     },
     "text": "js chain_solo.js"
    }
   },
   {
    "box": {
     "id": "obj-306",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      8300.0,
      410.0,
      100.0,
      22.0
     ],
     "text": "r chain_solo"
    }
   },
   {
    "box": {
     "id": "obj-307",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      8800.0,
      400.0,
      72.0,
      22.0
     ],
     "text": "loadbang"
    }
   },
   {
    "box": {
     "id": "obj-308",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      4000.0,
      560.0,
      160.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "text": "vst~ 2 2 @autosave 1"
    }
   },
   {
    "box": {
     "id": "obj-309",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4200.0,
      560.0,
      18.0,
      18.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      78.0,
      203.0,
      18.0,
      18.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-310",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      15.0
     ],
     "text": "load fx",
     "presentation": 1,
     "presentation_rect": [
      98.0,
      204.0,
      40.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-311",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4240.0,
      560.0,
      18.0,
      18.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      140.0,
      203.0,
      18.0,
      18.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-312",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      30.0,
      15.0
     ],
     "text": "show",
     "presentation": 1,
     "presentation_rect": [
      160.0,
      204.0,
      30.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-313",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4200.0,
      590.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "plug"
    }
   },
   {
    "box": {
     "id": "obj-314",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4240.0,
      590.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "open"
    }
   },
   {
    "box": {
     "id": "obj-315",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4280.0,
      560.0,
      18.0,
      18.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      190.0,
      203.0,
      18.0,
      18.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-316",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      18.0,
      15.0
     ],
     "text": "on",
     "presentation": 1,
     "presentation_rect": [
      209.0,
      204.0,
      18.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-317",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4280.0,
      530.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-318",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4280.0,
      590.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pack 0. 50"
    }
   },
   {
    "box": {
     "id": "obj-319",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4280.0,
      620.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "line~"
    }
   },
   {
    "box": {
     "id": "obj-320",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4280.0,
      650.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "!-~ 1."
    }
   },
   {
    "box": {
     "id": "obj-321",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4000.0,
      680.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-322",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4000.0,
      710.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-323",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4000.0,
      740.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-324",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4080.0,
      680.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-325",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4080.0,
      710.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-326",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4080.0,
      740.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-327",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      4520.0,
      560.0,
      160.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "text": "vst~ 2 2 @autosave 1"
    }
   },
   {
    "box": {
     "id": "obj-328",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4720.0,
      560.0,
      18.0,
      18.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      306.0,
      203.0,
      18.0,
      18.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-329",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      15.0
     ],
     "text": "load fx",
     "presentation": 1,
     "presentation_rect": [
      326.0,
      204.0,
      40.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-330",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4760.0,
      560.0,
      18.0,
      18.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      368.0,
      203.0,
      18.0,
      18.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-331",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      30.0,
      15.0
     ],
     "text": "show",
     "presentation": 1,
     "presentation_rect": [
      388.0,
      204.0,
      30.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-332",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4720.0,
      590.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "plug"
    }
   },
   {
    "box": {
     "id": "obj-333",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4760.0,
      590.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "open"
    }
   },
   {
    "box": {
     "id": "obj-334",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4800.0,
      560.0,
      18.0,
      18.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      418.0,
      203.0,
      18.0,
      18.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-335",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      18.0,
      15.0
     ],
     "text": "on",
     "presentation": 1,
     "presentation_rect": [
      437.0,
      204.0,
      18.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-336",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4800.0,
      530.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-337",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4800.0,
      590.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pack 0. 50"
    }
   },
   {
    "box": {
     "id": "obj-338",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4800.0,
      620.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "line~"
    }
   },
   {
    "box": {
     "id": "obj-339",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4800.0,
      650.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "!-~ 1."
    }
   },
   {
    "box": {
     "id": "obj-340",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4520.0,
      680.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-341",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4520.0,
      710.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-342",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4520.0,
      740.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-343",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4600.0,
      680.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-344",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4600.0,
      710.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-345",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4600.0,
      740.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-346",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      5040.0,
      560.0,
      160.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "text": "vst~ 2 2 @autosave 1"
    }
   },
   {
    "box": {
     "id": "obj-347",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5240.0,
      560.0,
      18.0,
      18.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      534.0,
      203.0,
      18.0,
      18.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-348",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      15.0
     ],
     "text": "load fx",
     "presentation": 1,
     "presentation_rect": [
      554.0,
      204.0,
      40.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-349",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5280.0,
      560.0,
      18.0,
      18.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      596.0,
      203.0,
      18.0,
      18.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-350",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      30.0,
      15.0
     ],
     "text": "show",
     "presentation": 1,
     "presentation_rect": [
      616.0,
      204.0,
      30.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-351",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5240.0,
      590.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "plug"
    }
   },
   {
    "box": {
     "id": "obj-352",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5280.0,
      590.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "open"
    }
   },
   {
    "box": {
     "id": "obj-353",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5320.0,
      560.0,
      18.0,
      18.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      646.0,
      203.0,
      18.0,
      18.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-354",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      18.0,
      15.0
     ],
     "text": "on",
     "presentation": 1,
     "presentation_rect": [
      665.0,
      204.0,
      18.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-355",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5320.0,
      530.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 0"
    }
   },
   {
    "box": {
     "id": "obj-356",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5320.0,
      590.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pack 0. 50"
    }
   },
   {
    "box": {
     "id": "obj-357",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      5320.0,
      620.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "bang"
     ],
     "text": "line~"
    }
   },
   {
    "box": {
     "id": "obj-358",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5320.0,
      650.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "!-~ 1."
    }
   },
   {
    "box": {
     "id": "obj-359",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5040.0,
      680.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-360",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5040.0,
      710.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-361",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5040.0,
      740.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "id": "obj-362",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5120.0,
      680.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-363",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5120.0,
      710.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "id": "obj-364",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5120.0,
      740.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "+~"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "destination": [
      "obj-11",
      0
     ],
     "midpoints": [
      1609.5,
      144.0,
      1587.0,
      144.0,
      1587.0,
      105.0,
      1759.5,
      105.0
     ],
     "order": 0,
     "source": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-12",
      0
     ],
     "midpoints": [
      1609.5,
      144.0,
      1609.5,
      144.0
     ],
     "order": 1,
     "source": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-218",
      1
     ],
     "midpoints": [
      6609.5,
      285.0,
      6645.0,
      285.0,
      6645.0,
      297.0,
      6648.5,
      297.0
     ],
     "order": 1,
     "source": [
      "obj-100",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-219",
      1
     ],
     "midpoints": [
      6609.5,
      285.0,
      6705.0,
      285.0,
      6705.0,
      297.0,
      6708.5,
      297.0
     ],
     "order": 0,
     "source": [
      "obj-100",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-104",
      0
     ],
     "midpoints": [
      6669.5,
      249.0,
      6669.5,
      249.0
     ],
     "source": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-105",
      0
     ],
     "midpoints": [
      6729.5,
      249.0,
      6729.5,
      249.0
     ],
     "source": [
      "obj-102",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-107",
      0
     ],
     "midpoints": [
      5441.5,
      63.0,
      5469.5,
      63.0
     ],
     "source": [
      "obj-106",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-109",
      0
     ],
     "midpoints": [
      5409.5,
      63.0,
      5409.5,
      63.0
     ],
     "order": 1,
     "source": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-114",
      0
     ],
     "midpoints": [
      5409.5,
      63.0,
      5463.0,
      63.0,
      5463.0,
      36.0,
      5509.5,
      36.0
     ],
     "order": 0,
     "source": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-108",
      0
     ],
     "midpoints": [
      5469.5,
      93.0,
      5469.5,
      93.0
     ],
     "source": [
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-112",
      0
     ],
     "midpoints": [
      5409.5,
      93.0,
      5409.5,
      93.0
     ],
     "source": [
      "obj-109",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-112",
      0
     ],
     "midpoints": [
      5609.5,
      93.0,
      5445.0,
      93.0,
      5445.0,
      117.0,
      5409.5,
      117.0
     ],
     "source": [
      "obj-110",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-110",
      0
     ],
     "midpoints": [
      5609.5,
      63.0,
      5609.5,
      63.0
     ],
     "source": [
      "obj-111",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-215",
      1
     ],
     "midpoints": [
      5409.5,
      162.0,
      6987.0,
      162.0,
      6987.0,
      27.0,
      7910.5,
      27.0
     ],
     "order": 0,
     "source": [
      "obj-112",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-215",
      0
     ],
     "midpoints": [
      5409.5,
      162.0,
      6987.0,
      162.0,
      6987.0,
      27.0,
      7779.5,
      27.0
     ],
     "order": 1,
     "source": [
      "obj-112",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-112",
      0
     ],
     "midpoints": [
      5579.5,
      162.0,
      5397.0,
      162.0,
      5397.0,
      126.0,
      5409.5,
      126.0
     ],
     "source": [
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      5509.5,
      251.0,
      1609.5,
      251.0
     ],
     "source": [
      "obj-114",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-120",
      0
     ],
     "midpoints": [
      4109.5,
      33.0,
      4109.5,
      33.0
     ],
     "order": 1,
     "source": [
      "obj-119",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-121",
      0
     ],
     "midpoints": [
      4109.5,
      33.0,
      4155.0,
      33.0,
      4155.0,
      54.0,
      4169.5,
      54.0
     ],
     "order": 0,
     "source": [
      "obj-119",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-106",
      0
     ],
     "midpoints": [
      1809.8333333333333,
      183.0,
      2787.0,
      183.0,
      2787.0,
      156.0,
      3987.0,
      156.0,
      3987.0,
      192.0,
      5397.0,
      192.0,
      5397.0,
      36.0,
      5409.5,
      36.0
     ],
     "source": [
      "obj-12",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-16",
      0
     ],
     "midpoints": [
      2110.3333333333335,
      246.0,
      1739.5,
      246.0
     ],
     "source": [
      "obj-12",
      5
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-17",
      0
     ],
     "midpoints": [
      1910.0,
      186.0,
      1956.0,
      186.0,
      1956.0,
      246.0,
      1869.5,
      246.0
     ],
     "order": 1,
     "source": [
      "obj-12",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-38",
      0
     ],
     "midpoints": [
      1609.5,
      183.0,
      2385.0,
      183.0,
      2385.0,
      36.0,
      2409.5,
      36.0
     ],
     "order": 0,
     "source": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-47",
      0
     ],
     "midpoints": [
      1609.5,
      186.0,
      1587.0,
      186.0,
      1587.0,
      276.0,
      1609.5,
      276.0
     ],
     "order": 1,
     "source": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-84",
      0
     ],
     "midpoints": [
      1910.0,
      186.0,
      2009.5,
      186.0
     ],
     "order": 0,
     "source": [
      "obj-12",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-122",
      0
     ],
     "midpoints": [
      4169.5,
      84.0,
      4169.5,
      84.0
     ],
     "source": [
      "obj-121",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-123",
      0
     ],
     "midpoints": [
      4192.5,
      84.0,
      4155.0,
      84.0,
      4155.0,
      114.0,
      4169.5,
      114.0
     ],
     "source": [
      "obj-121",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-118",
      0
     ],
     "midpoints": [
      4169.5,
      114.0,
      4155.0,
      114.0,
      4155.0,
      6.0,
      4169.5,
      6.0
     ],
     "source": [
      "obj-122",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-118",
      0
     ],
     "midpoints": [
      4169.5,
      144.0,
      4146.0,
      144.0,
      4146.0,
      6.0,
      4169.5,
      6.0
     ],
     "source": [
      "obj-123",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-127",
      0
     ],
     "midpoints": [
      4009.5,
      93.0,
      4009.5,
      93.0
     ],
     "source": [
      "obj-125",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-128",
      0
     ],
     "midpoints": [
      4009.5,
      123.0,
      4009.5,
      123.0
     ],
     "source": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      4009.5,
      336.0,
      1609.5,
      336.0
     ],
     "source": [
      "obj-128",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-130",
      0
     ],
     "midpoints": [
      4069.5,
      150.0,
      4069.5,
      150.0
     ],
     "source": [
      "obj-129",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-119",
      0
     ],
     "midpoints": [
      1760.5,
      472.0,
      2935.0,
      472.0,
      2935.0,
      0.0,
      4109.5,
      0.0
     ],
     "order": 2,
     "source": [
      "obj-13",
      4
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-14",
      0
     ],
     "midpoints": [
      1609.5,
      465.0,
      1609.5,
      465.0
     ],
     "source": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-15",
      0
     ],
     "midpoints": [
      1647.25,
      474.0,
      1789.5,
      474.0
     ],
     "source": [
      "obj-13",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-151",
      0
     ],
     "midpoints": [
      1760.5,
      472.0,
      3195.0,
      472.0,
      3195.0,
      0.0,
      4629.5,
      0.0
     ],
     "order": 1,
     "source": [
      "obj-13",
      4
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-183",
      0
     ],
     "midpoints": [
      1760.5,
      472.0,
      3455.0,
      472.0,
      3455.0,
      0.0,
      5149.5,
      0.0
     ],
     "order": 0,
     "source": [
      "obj-13",
      4
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-80",
      0
     ],
     "midpoints": [
      1722.75,
      627.0,
      1909.5,
      627.0
     ],
     "source": [
      "obj-13",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-82",
      0
     ],
     "midpoints": [
      1685.0,
      474.0,
      1767.0,
      474.0,
      1767.0,
      627.0,
      2009.5,
      627.0
     ],
     "source": [
      "obj-13",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      4069.5,
      336.0,
      1609.5,
      336.0
     ],
     "source": [
      "obj-130",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-133",
      0
     ],
     "midpoints": [
      3909.5,
      510.0,
      3909.5,
      510.0
     ],
     "source": [
      "obj-132",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-131",
      0
     ],
     "midpoints": [
      3909.5,
      543.0,
      3709.5,
      543.0
     ],
     "source": [
      "obj-133",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-135",
      0
     ],
     "midpoints": [
      3969.5,
      510.0,
      3969.5,
      510.0
     ],
     "source": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-131",
      0
     ],
     "midpoints": [
      3969.5,
      552.0,
      3870.0,
      552.0,
      3870.0,
      546.0,
      3709.5,
      546.0
     ],
     "source": [
      "obj-135",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-137",
      0
     ],
     "midpoints": [
      4029.5,
      510.0,
      4029.5,
      510.0
     ],
     "source": [
      "obj-136",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-131",
      0
     ],
     "midpoints": [
      4029.5,
      552.0,
      3870.0,
      552.0,
      3870.0,
      546.0,
      3709.5,
      546.0
     ],
     "source": [
      "obj-137",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-139",
      0
     ],
     "midpoints": [
      4089.5,
      510.0,
      4089.5,
      510.0
     ],
     "source": [
      "obj-138",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-131",
      0
     ],
     "midpoints": [
      4089.5,
      552.0,
      3870.0,
      552.0,
      3870.0,
      546.0,
      3709.5,
      546.0
     ],
     "source": [
      "obj-139",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-143",
      0
     ],
     "midpoints": [
      4169.5,
      483.0,
      4169.5,
      483.0
     ],
     "source": [
      "obj-140",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-140",
      0
     ],
     "midpoints": [
      4169.5,
      453.0,
      4169.5,
      453.0
     ],
     "source": [
      "obj-142",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-131",
      0
     ],
     "midpoints": [
      4169.5,
      552.0,
      3870.0,
      552.0,
      3870.0,
      546.0,
      3709.5,
      546.0
     ],
     "source": [
      "obj-143",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-255",
      1
     ],
     "midpoints": [
      7035.7,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      186.0,
      10030.5,
      186.0
     ],
     "order": 1,
     "source": [
      "obj-144",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-255",
      0
     ],
     "midpoints": [
      7009.5,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      195.0,
      10009.5,
      195.0
     ],
     "order": 1,
     "source": [
      "obj-144",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-286",
      0
     ],
     "midpoints": [
      7009.5,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      186.0,
      10409.5,
      186.0
     ],
     "order": 0,
     "source": [
      "obj-144",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-287",
      0
     ],
     "midpoints": [
      7035.7,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      186.0,
      10469.5,
      186.0
     ],
     "order": 0,
     "source": [
      "obj-144",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      1
     ],
     "midpoints": [
      7088.1,
      420.0,
      5970.0,
      420.0,
      5970.0,
      297.0,
      5950.5,
      297.0
     ],
     "source": [
      "obj-144",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      0
     ],
     "midpoints": [
      7061.9,
      420.0,
      5787.0,
      420.0,
      5787.0,
      297.0,
      5809.5,
      297.0
     ],
     "source": [
      "obj-144",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      1
     ],
     "midpoints": [
      7140.5,
      420.0,
      6270.0,
      420.0,
      6270.0,
      297.0,
      6250.5,
      297.0
     ],
     "source": [
      "obj-144",
      5
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      0
     ],
     "midpoints": [
      7114.3,
      420.0,
      6087.0,
      420.0,
      6087.0,
      297.0,
      6109.5,
      297.0
     ],
     "source": [
      "obj-144",
      4
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-131",
      0
     ],
     "midpoints": [
      1789.5,
      513.0,
      2067.0,
      513.0,
      2067.0,
      477.0,
      2886.0,
      477.0,
      2886.0,
      546.0,
      3709.5,
      546.0
     ],
     "source": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-163",
      0
     ],
     "midpoints": [
      1814.1666666666667,
      513.0,
      2067.0,
      513.0,
      2067.0,
      477.0,
      2886.0,
      477.0,
      2886.0,
      546.0,
      3885.0,
      546.0,
      3885.0,
      555.0,
      4229.5,
      555.0
     ],
     "source": [
      "obj-15",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-195",
      0
     ],
     "midpoints": [
      1838.8333333333333,
      612.0,
      4725.0,
      612.0,
      4725.0,
      555.0,
      4749.5,
      555.0
     ],
     "source": [
      "obj-15",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-152",
      0
     ],
     "midpoints": [
      4629.5,
      33.0,
      4629.5,
      33.0
     ],
     "order": 1,
     "source": [
      "obj-151",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-153",
      0
     ],
     "midpoints": [
      4629.5,
      33.0,
      4677.0,
      33.0,
      4677.0,
      54.0,
      4689.5,
      54.0
     ],
     "order": 0,
     "source": [
      "obj-151",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-154",
      0
     ],
     "midpoints": [
      4689.5,
      84.0,
      4689.5,
      84.0
     ],
     "source": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-155",
      0
     ],
     "midpoints": [
      4712.5,
      84.0,
      4677.0,
      84.0,
      4677.0,
      114.0,
      4689.5,
      114.0
     ],
     "source": [
      "obj-153",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-150",
      0
     ],
     "midpoints": [
      4689.5,
      114.0,
      4677.0,
      114.0,
      4677.0,
      6.0,
      4689.5,
      6.0
     ],
     "source": [
      "obj-154",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-150",
      0
     ],
     "midpoints": [
      4689.5,
      144.0,
      4665.0,
      144.0,
      4665.0,
      6.0,
      4689.5,
      6.0
     ],
     "source": [
      "obj-155",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-159",
      0
     ],
     "midpoints": [
      4529.5,
      93.0,
      4529.5,
      93.0
     ],
     "source": [
      "obj-157",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-160",
      0
     ],
     "midpoints": [
      4529.5,
      123.0,
      4529.5,
      123.0
     ],
     "source": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      1739.5,
      426.0,
      1609.5,
      426.0
     ],
     "source": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      4529.5,
      336.0,
      1609.5,
      336.0
     ],
     "source": [
      "obj-160",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-162",
      0
     ],
     "midpoints": [
      4589.5,
      150.0,
      4589.5,
      150.0
     ],
     "source": [
      "obj-161",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      4589.5,
      336.0,
      1609.5,
      336.0
     ],
     "source": [
      "obj-162",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-165",
      0
     ],
     "midpoints": [
      4429.5,
      510.0,
      4429.5,
      510.0
     ],
     "source": [
      "obj-164",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-163",
      0
     ],
     "midpoints": [
      4429.5,
      543.0,
      4230.0,
      543.0,
      4230.0,
      555.0,
      4229.5,
      555.0
     ],
     "source": [
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-167",
      0
     ],
     "midpoints": [
      4489.5,
      510.0,
      4489.5,
      510.0
     ],
     "source": [
      "obj-166",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-163",
      0
     ],
     "midpoints": [
      4489.5,
      552.0,
      4392.0,
      552.0,
      4392.0,
      546.0,
      4229.5,
      546.0
     ],
     "source": [
      "obj-167",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-169",
      0
     ],
     "midpoints": [
      4549.5,
      510.0,
      4549.5,
      510.0
     ],
     "source": [
      "obj-168",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-163",
      0
     ],
     "midpoints": [
      4549.5,
      552.0,
      4392.0,
      552.0,
      4392.0,
      546.0,
      4229.5,
      546.0
     ],
     "source": [
      "obj-169",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      1869.5,
      426.0,
      1609.5,
      426.0
     ],
     "source": [
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-171",
      0
     ],
     "midpoints": [
      4609.5,
      510.0,
      4609.5,
      510.0
     ],
     "source": [
      "obj-170",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-163",
      0
     ],
     "midpoints": [
      4609.5,
      552.0,
      4392.0,
      552.0,
      4392.0,
      546.0,
      4229.5,
      546.0
     ],
     "source": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-175",
      0
     ],
     "midpoints": [
      4689.5,
      483.0,
      4689.5,
      483.0
     ],
     "source": [
      "obj-172",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-172",
      0
     ],
     "midpoints": [
      4689.5,
      453.0,
      4689.5,
      453.0
     ],
     "source": [
      "obj-174",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-163",
      0
     ],
     "midpoints": [
      4689.5,
      552.0,
      4392.0,
      552.0,
      4392.0,
      546.0,
      4229.5,
      546.0
     ],
     "source": [
      "obj-175",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-262",
      1
     ],
     "midpoints": [
      7205.7,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      186.0,
      10150.5,
      186.0
     ],
     "order": 1,
     "source": [
      "obj-176",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-262",
      0
     ],
     "midpoints": [
      7179.5,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      186.0,
      10129.5,
      186.0
     ],
     "order": 1,
     "source": [
      "obj-176",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-286",
      0
     ],
     "midpoints": [
      7179.5,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      186.0,
      10409.5,
      186.0
     ],
     "order": 0,
     "source": [
      "obj-176",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-287",
      0
     ],
     "midpoints": [
      7205.7,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      186.0,
      10469.5,
      186.0
     ],
     "order": 0,
     "source": [
      "obj-176",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      1
     ],
     "midpoints": [
      7258.1,
      420.0,
      5970.0,
      420.0,
      5970.0,
      297.0,
      5950.5,
      297.0
     ],
     "source": [
      "obj-176",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      0
     ],
     "midpoints": [
      7231.9,
      420.0,
      5787.0,
      420.0,
      5787.0,
      297.0,
      5809.5,
      297.0
     ],
     "source": [
      "obj-176",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      1
     ],
     "midpoints": [
      7310.5,
      420.0,
      6270.0,
      420.0,
      6270.0,
      297.0,
      6250.5,
      297.0
     ],
     "source": [
      "obj-176",
      5
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      0
     ],
     "midpoints": [
      7284.3,
      420.0,
      6087.0,
      420.0,
      6087.0,
      297.0,
      6109.5,
      297.0
     ],
     "source": [
      "obj-176",
      4
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      2009.5,
      435.0,
      1782.0,
      435.0,
      1782.0,
      426.0,
      1609.5,
      426.0
     ],
     "source": [
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-184",
      0
     ],
     "midpoints": [
      5149.5,
      33.0,
      5149.5,
      33.0
     ],
     "order": 1,
     "source": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-185",
      0
     ],
     "midpoints": [
      5149.5,
      33.0,
      5196.0,
      33.0,
      5196.0,
      54.0,
      5209.5,
      54.0
     ],
     "order": 0,
     "source": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-186",
      0
     ],
     "midpoints": [
      5209.5,
      84.0,
      5209.5,
      84.0
     ],
     "source": [
      "obj-185",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-187",
      0
     ],
     "midpoints": [
      5232.5,
      84.0,
      5196.0,
      84.0,
      5196.0,
      114.0,
      5209.5,
      114.0
     ],
     "source": [
      "obj-185",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-182",
      0
     ],
     "midpoints": [
      5209.5,
      114.0,
      5196.0,
      114.0,
      5196.0,
      6.0,
      5209.5,
      6.0
     ],
     "source": [
      "obj-186",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-182",
      0
     ],
     "midpoints": [
      5209.5,
      144.0,
      5187.0,
      144.0,
      5187.0,
      6.0,
      5209.5,
      6.0
     ],
     "source": [
      "obj-187",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-191",
      0
     ],
     "midpoints": [
      5049.5,
      93.0,
      5049.5,
      93.0
     ],
     "source": [
      "obj-189",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-192",
      0
     ],
     "midpoints": [
      5049.5,
      123.0,
      5049.5,
      123.0
     ],
     "source": [
      "obj-191",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      5049.5,
      296.0,
      1609.5,
      296.0
     ],
     "source": [
      "obj-192",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-194",
      0
     ],
     "midpoints": [
      5109.5,
      150.0,
      5109.5,
      150.0
     ],
     "source": [
      "obj-193",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      5109.5,
      311.0,
      1609.5,
      311.0
     ],
     "source": [
      "obj-194",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-197",
      0
     ],
     "midpoints": [
      4949.5,
      510.0,
      4949.5,
      510.0
     ],
     "source": [
      "obj-196",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-195",
      0
     ],
     "midpoints": [
      4949.5,
      543.0,
      4752.0,
      543.0,
      4752.0,
      555.0,
      4749.5,
      555.0
     ],
     "source": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-199",
      0
     ],
     "midpoints": [
      5009.5,
      510.0,
      5009.5,
      510.0
     ],
     "source": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-195",
      0
     ],
     "midpoints": [
      5009.5,
      552.0,
      4911.0,
      552.0,
      4911.0,
      546.0,
      4749.5,
      546.0
     ],
     "source": [
      "obj-199",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-201",
      0
     ],
     "midpoints": [
      5069.5,
      510.0,
      5069.5,
      510.0
     ],
     "source": [
      "obj-200",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-195",
      0
     ],
     "midpoints": [
      5069.5,
      552.0,
      4911.0,
      552.0,
      4911.0,
      546.0,
      4749.5,
      546.0
     ],
     "source": [
      "obj-201",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-203",
      0
     ],
     "midpoints": [
      5129.5,
      510.0,
      5129.5,
      510.0
     ],
     "source": [
      "obj-202",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-195",
      0
     ],
     "midpoints": [
      5129.5,
      552.0,
      4911.0,
      552.0,
      4911.0,
      546.0,
      4749.5,
      546.0
     ],
     "source": [
      "obj-203",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-207",
      0
     ],
     "midpoints": [
      5209.5,
      483.0,
      5209.5,
      483.0
     ],
     "source": [
      "obj-204",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-204",
      0
     ],
     "midpoints": [
      5209.5,
      453.0,
      5209.5,
      453.0
     ],
     "source": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-195",
      0
     ],
     "midpoints": [
      5209.5,
      552.0,
      4911.0,
      552.0,
      4911.0,
      546.0,
      4749.5,
      546.0
     ],
     "source": [
      "obj-207",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-269",
      1
     ],
     "midpoints": [
      7375.7,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      186.0,
      10270.5,
      186.0
     ],
     "order": 1,
     "source": [
      "obj-208",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-269",
      0
     ],
     "midpoints": [
      7349.5,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      186.0,
      10249.5,
      186.0
     ],
     "order": 1,
     "source": [
      "obj-208",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-286",
      0
     ],
     "midpoints": [
      7349.5,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      186.0,
      10409.5,
      186.0
     ],
     "order": 0,
     "source": [
      "obj-208",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-287",
      0
     ],
     "midpoints": [
      7375.7,
      420.0,
      8286.0,
      420.0,
      8286.0,
      294.0,
      9987.0,
      294.0,
      9987.0,
      186.0,
      10469.5,
      186.0
     ],
     "order": 0,
     "source": [
      "obj-208",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      1
     ],
     "midpoints": [
      7428.1,
      420.0,
      5970.0,
      420.0,
      5970.0,
      297.0,
      5950.5,
      297.0
     ],
     "source": [
      "obj-208",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      0
     ],
     "midpoints": [
      7401.9,
      420.0,
      5787.0,
      420.0,
      5787.0,
      297.0,
      5809.5,
      297.0
     ],
     "source": [
      "obj-208",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      1
     ],
     "midpoints": [
      7480.5,
      420.0,
      6270.0,
      420.0,
      6270.0,
      297.0,
      6250.5,
      297.0
     ],
     "source": [
      "obj-208",
      5
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      0
     ],
     "midpoints": [
      7454.3,
      420.0,
      6087.0,
      420.0,
      6087.0,
      297.0,
      6109.5,
      297.0
     ],
     "source": [
      "obj-208",
      4
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-233",
      0
     ],
     "midpoints": [
      7609.5,
      420.0,
      8286.0,
      420.0,
      8286.0,
      195.0,
      9289.5,
      195.0
     ],
     "source": [
      "obj-214",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-234",
      0
     ],
     "midpoints": [
      7635.7,
      420.0,
      8286.0,
      420.0,
      8286.0,
      192.0,
      9267.0,
      192.0,
      9267.0,
      186.0,
      9349.5,
      186.0
     ],
     "source": [
      "obj-214",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      1
     ],
     "midpoints": [
      7688.1,
      420.0,
      5970.0,
      420.0,
      5970.0,
      297.0,
      5950.5,
      297.0
     ],
     "source": [
      "obj-214",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      0
     ],
     "midpoints": [
      7661.9,
      420.0,
      5787.0,
      420.0,
      5787.0,
      297.0,
      5809.5,
      297.0
     ],
     "source": [
      "obj-214",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      1
     ],
     "midpoints": [
      7740.5,
      420.0,
      6270.0,
      420.0,
      6270.0,
      297.0,
      6250.5,
      297.0
     ],
     "source": [
      "obj-214",
      5
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      0
     ],
     "midpoints": [
      7714.3,
      420.0,
      6087.0,
      420.0,
      6087.0,
      297.0,
      6109.5,
      297.0
     ],
     "source": [
      "obj-214",
      4
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-233",
      0
     ],
     "midpoints": [
      7779.5,
      420.0,
      8286.0,
      420.0,
      8286.0,
      195.0,
      9289.5,
      195.0
     ],
     "source": [
      "obj-215",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-234",
      0
     ],
     "midpoints": [
      7805.7,
      420.0,
      8286.0,
      420.0,
      8286.0,
      192.0,
      9267.0,
      192.0,
      9267.0,
      186.0,
      9349.5,
      186.0
     ],
     "source": [
      "obj-215",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      1
     ],
     "midpoints": [
      7858.1,
      420.0,
      5970.0,
      420.0,
      5970.0,
      297.0,
      5950.5,
      297.0
     ],
     "source": [
      "obj-215",
      3
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      0
     ],
     "midpoints": [
      7831.9,
      420.0,
      5787.0,
      420.0,
      5787.0,
      297.0,
      5809.5,
      297.0
     ],
     "source": [
      "obj-215",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      1
     ],
     "midpoints": [
      7910.5,
      420.0,
      6270.0,
      420.0,
      6270.0,
      297.0,
      6250.5,
      297.0
     ],
     "source": [
      "obj-215",
      5
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      0
     ],
     "midpoints": [
      7884.3,
      420.0,
      6087.0,
      420.0,
      6087.0,
      297.0,
      6109.5,
      297.0
     ],
     "source": [
      "obj-215",
      4
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-233",
      0
     ],
     "midpoints": [
      7949.5,
      420.0,
      8286.0,
      420.0,
      8286.0,
      195.0,
      9289.5,
      195.0
     ],
     "source": [
      "obj-216",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-234",
      0
     ],
     "midpoints": [
      8080.5,
      420.0,
      8286.0,
      420.0,
      8286.0,
      192.0,
      9267.0,
      192.0,
      9267.0,
      186.0,
      9349.5,
      186.0
     ],
     "source": [
      "obj-216",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-233",
      0
     ],
     "midpoints": [
      8119.5,
      420.0,
      8286.0,
      420.0,
      8286.0,
      195.0,
      9289.5,
      195.0
     ],
     "source": [
      "obj-217",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-234",
      0
     ],
     "midpoints": [
      8250.5,
      411.0,
      8286.0,
      411.0,
      8286.0,
      192.0,
      9267.0,
      192.0,
      9267.0,
      186.0,
      9349.5,
      186.0
     ],
     "source": [
      "obj-217",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      0
     ],
     "midpoints": [
      6609.5,
      333.0,
      5787.0,
      333.0,
      5787.0,
      297.0,
      5809.5,
      297.0
     ],
     "source": [
      "obj-218",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      1
     ],
     "midpoints": [
      6669.5,
      333.0,
      5970.0,
      333.0,
      5970.0,
      297.0,
      5950.5,
      297.0
     ],
     "source": [
      "obj-219",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-33",
      0
     ],
     "midpoints": [
      1609.5,
      738.0,
      1549.5,
      738.0
     ],
     "source": [
      "obj-22",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-225",
      0
     ],
     "midpoints": [
      9009.5,
      90.0,
      9009.5,
      90.0
     ],
     "source": [
      "obj-223",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-229",
      0
     ],
     "midpoints": [
      9069.5,
      102.0,
      9135.0,
      102.0,
      9135.0,
      96.0,
      9149.5,
      96.0
     ],
     "source": [
      "obj-224",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-226",
      0
     ],
     "midpoints": [
      9009.5,
      123.0,
      9009.5,
      123.0
     ],
     "source": [
      "obj-225",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-227",
      0
     ],
     "midpoints": [
      9009.5,
      153.0,
      9009.5,
      153.0
     ],
     "source": [
      "obj-226",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-258",
      1
     ],
     "midpoints": [
      9009.5,
      297.0,
      10030.5,
      297.0
     ],
     "order": 4,
     "source": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-265",
      1
     ],
     "midpoints": [
      9009.5,
      192.0,
      9267.0,
      192.0,
      9267.0,
      186.0,
      10107.0,
      186.0,
      10107.0,
      297.0,
      10150.5,
      297.0
     ],
     "order": 3,
     "source": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-272",
      1
     ],
     "midpoints": [
      9009.5,
      192.0,
      9267.0,
      192.0,
      9267.0,
      186.0,
      10227.0,
      186.0,
      10227.0,
      297.0,
      10270.5,
      297.0
     ],
     "order": 2,
     "source": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-288",
      1
     ],
     "midpoints": [
      9009.5,
      192.0,
      9267.0,
      192.0,
      9267.0,
      186.0,
      10386.0,
      186.0,
      10386.0,
      285.0,
      10430.5,
      285.0
     ],
     "order": 1,
     "source": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-292",
      1
     ],
     "midpoints": [
      9009.5,
      192.0,
      9267.0,
      192.0,
      9267.0,
      186.0,
      10386.0,
      186.0,
      10386.0,
      285.0,
      10490.5,
      285.0
     ],
     "order": 0,
     "source": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-225",
      0
     ],
     "midpoints": [
      9069.5,
      93.0,
      9009.5,
      93.0
     ],
     "source": [
      "obj-228",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-230",
      0
     ],
     "midpoints": [
      9149.5,
      123.0,
      9149.5,
      123.0
     ],
     "source": [
      "obj-229",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-231",
      0
     ],
     "midpoints": [
      9149.5,
      153.0,
      9149.5,
      153.0
     ],
     "source": [
      "obj-230",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-233",
      1
     ],
     "midpoints": [
      9149.5,
      192.0,
      9267.0,
      192.0,
      9267.0,
      186.0,
      9310.5,
      186.0
     ],
     "order": 1,
     "source": [
      "obj-231",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-234",
      1
     ],
     "midpoints": [
      9149.5,
      192.0,
      9267.0,
      192.0,
      9267.0,
      186.0,
      9370.5,
      186.0
     ],
     "order": 0,
     "source": [
      "obj-231",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-229",
      0
     ],
     "midpoints": [
      9209.5,
      93.0,
      9149.5,
      93.0
     ],
     "source": [
      "obj-232",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-235",
      0
     ],
     "midpoints": [
      9289.5,
      225.0,
      9289.5,
      225.0
     ],
     "order": 2,
     "source": [
      "obj-233",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-257",
      1
     ],
     "midpoints": [
      9289.5,
      225.0,
      9330.0,
      225.0,
      9330.0,
      246.0,
      9987.0,
      246.0,
      9987.0,
      255.0,
      10030.5,
      255.0
     ],
     "order": 1,
     "source": [
      "obj-233",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-286",
      1
     ],
     "midpoints": [
      9289.5,
      225.0,
      9267.0,
      225.0,
      9267.0,
      186.0,
      10430.5,
      186.0
     ],
     "order": 0,
     "source": [
      "obj-233",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-235",
      1
     ],
     "midpoints": [
      9349.5,
      225.0,
      9310.5,
      225.0
     ],
     "order": 2,
     "source": [
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-271",
      1
     ],
     "midpoints": [
      9349.5,
      234.0,
      9987.0,
      234.0,
      9987.0,
      186.0,
      10227.0,
      186.0,
      10227.0,
      255.0,
      10270.5,
      255.0
     ],
     "order": 1,
     "source": [
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-287",
      1
     ],
     "midpoints": [
      9349.5,
      234.0,
      9987.0,
      234.0,
      9987.0,
      186.0,
      10490.5,
      186.0
     ],
     "order": 0,
     "source": [
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-236",
      0
     ],
     "midpoints": [
      9289.5,
      255.0,
      9289.5,
      255.0
     ],
     "source": [
      "obj-235",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-264",
      1
     ],
     "midpoints": [
      9289.5,
      294.0,
      10107.0,
      294.0,
      10107.0,
      255.0,
      10150.5,
      255.0
     ],
     "source": [
      "obj-236",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-242",
      0
     ],
     "midpoints": [
      9609.5,
      72.0,
      9609.5,
      72.0
     ],
     "source": [
      "obj-237",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-237",
      0
     ],
     "midpoints": [
      9609.5,
      33.0,
      9609.5,
      33.0
     ],
     "source": [
      "obj-239",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-37",
      0
     ],
     "midpoints": [
      1640.0,
      777.0,
      1809.5,
      777.0
     ],
     "source": [
      "obj-24",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-241",
      0
     ],
     "midpoints": [
      9669.5,
      33.0,
      9669.5,
      33.0
     ],
     "source": [
      "obj-240",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-237",
      0
     ],
     "midpoints": [
      9669.5,
      63.0,
      9642.0,
      63.0,
      9642.0,
      36.0,
      9609.5,
      36.0
     ],
     "source": [
      "obj-241",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-243",
      0
     ],
     "midpoints": [
      9609.5,
      105.0,
      9609.5,
      105.0
     ],
     "source": [
      "obj-242",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-245",
      0
     ],
     "midpoints": [
      9609.5,
      135.0,
      9609.5,
      135.0
     ],
     "source": [
      "obj-243",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-243",
      0
     ],
     "midpoints": [
      9709.5,
      105.0,
      9609.5,
      105.0
     ],
     "source": [
      "obj-244",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-260",
      1
     ],
     "midpoints": [
      9609.5,
      357.0,
      10030.5,
      357.0
     ],
     "order": 4,
     "source": [
      "obj-245",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-267",
      1
     ],
     "midpoints": [
      9609.5,
      186.0,
      10107.0,
      186.0,
      10107.0,
      357.0,
      10150.5,
      357.0
     ],
     "order": 3,
     "source": [
      "obj-245",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-274",
      1
     ],
     "midpoints": [
      9609.5,
      186.0,
      10227.0,
      186.0,
      10227.0,
      357.0,
      10270.5,
      357.0
     ],
     "order": 2,
     "source": [
      "obj-245",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-290",
      1
     ],
     "midpoints": [
      9609.5,
      186.0,
      10386.0,
      186.0,
      10386.0,
      357.0,
      10430.5,
      357.0
     ],
     "order": 1,
     "source": [
      "obj-245",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-294",
      1
     ],
     "midpoints": [
      9609.5,
      186.0,
      10521.0,
      186.0,
      10521.0,
      357.0,
      10490.5,
      357.0
     ],
     "order": 0,
     "source": [
      "obj-245",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-249",
      0
     ],
     "midpoints": [
      9809.5,
      63.0,
      9809.5,
      63.0
     ],
     "order": 1,
     "source": [
      "obj-246",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-253",
      0
     ],
     "midpoints": [
      9809.5,
      63.0,
      9869.5,
      63.0
     ],
     "order": 0,
     "source": [
      "obj-246",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-246",
      0
     ],
     "midpoints": [
      9809.5,
      33.0,
      9809.5,
      33.0
     ],
     "source": [
      "obj-248",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-250",
      0
     ],
     "midpoints": [
      9809.5,
      105.0,
      9809.5,
      105.0
     ],
     "source": [
      "obj-249",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-24",
      0
     ],
     "midpoints": [
      1709.5,
      774.0,
      1587.0,
      774.0,
      1587.0,
      735.0,
      1609.5,
      735.0
     ],
     "source": [
      "obj-25",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-251",
      0
     ],
     "midpoints": [
      9809.5,
      135.0,
      9809.5,
      135.0
     ],
     "source": [
      "obj-250",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-261",
      1
     ],
     "midpoints": [
      9809.5,
      387.0,
      9988.5,
      387.0
     ],
     "order": 2,
     "source": [
      "obj-251",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-268",
      1
     ],
     "midpoints": [
      9809.5,
      186.0,
      10107.0,
      186.0,
      10107.0,
      384.0,
      10150.5,
      384.0
     ],
     "order": 1,
     "source": [
      "obj-251",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-275",
      1
     ],
     "midpoints": [
      9809.5,
      186.0,
      10227.0,
      186.0,
      10227.0,
      387.0,
      10270.5,
      387.0
     ],
     "order": 0,
     "source": [
      "obj-251",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-250",
      0
     ],
     "midpoints": [
      9909.5,
      105.0,
      9809.5,
      105.0
     ],
     "source": [
      "obj-252",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-254",
      0
     ],
     "midpoints": [
      9869.5,
      135.0,
      9869.5,
      135.0
     ],
     "source": [
      "obj-253",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-291",
      1
     ],
     "midpoints": [
      9869.5,
      186.0,
      10386.0,
      186.0,
      10386.0,
      387.0,
      10430.5,
      387.0
     ],
     "order": 1,
     "source": [
      "obj-254",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-295",
      1
     ],
     "midpoints": [
      9869.5,
      186.0,
      10521.0,
      186.0,
      10521.0,
      387.0,
      10490.5,
      387.0
     ],
     "order": 0,
     "source": [
      "obj-254",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-256",
      0
     ],
     "midpoints": [
      10009.5,
      225.0,
      10009.5,
      225.0
     ],
     "source": [
      "obj-255",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-257",
      0
     ],
     "midpoints": [
      10009.5,
      255.0,
      10009.5,
      255.0
     ],
     "source": [
      "obj-256",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-258",
      0
     ],
     "midpoints": [
      10009.5,
      285.0,
      10009.5,
      285.0
     ],
     "source": [
      "obj-257",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-259",
      0
     ],
     "midpoints": [
      10009.5,
      324.0,
      10009.5,
      324.0
     ],
     "source": [
      "obj-258",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-260",
      0
     ],
     "midpoints": [
      10009.5,
      354.0,
      10009.5,
      354.0
     ],
     "source": [
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-34",
      1
     ],
     "midpoints": [
      1609.5,
      915.0,
      1666.5,
      915.0
     ],
     "source": [
      "obj-26",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-145",
      0
     ],
     "midpoints": [
      10009.5,
      541.0,
      8009.5,
      541.0
     ],
     "order": 1,
     "source": [
      "obj-260",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-261",
      0
     ],
     "midpoints": [
      10009.5,
      384.0,
      9967.5,
      384.0
     ],
     "order": 0,
     "source": [
      "obj-260",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-276",
      0
     ],
     "midpoints": [
      9967.5,
      414.0,
      9987.0,
      414.0,
      9987.0,
      456.0,
      10009.5,
      456.0
     ],
     "source": [
      "obj-261",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-263",
      0
     ],
     "midpoints": [
      10129.5,
      225.0,
      10129.5,
      225.0
     ],
     "source": [
      "obj-262",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-264",
      0
     ],
     "midpoints": [
      10129.5,
      255.0,
      10129.5,
      255.0
     ],
     "source": [
      "obj-263",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-265",
      0
     ],
     "midpoints": [
      10129.5,
      285.0,
      10129.5,
      285.0
     ],
     "source": [
      "obj-264",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-266",
      0
     ],
     "midpoints": [
      10129.5,
      324.0,
      10129.5,
      324.0
     ],
     "source": [
      "obj-265",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-267",
      0
     ],
     "midpoints": [
      10129.5,
      354.0,
      10129.5,
      354.0
     ],
     "source": [
      "obj-266",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-177",
      0
     ],
     "midpoints": [
      10129.5,
      384.0,
      8271.0,
      384.0,
      8271.0,
      687.0,
      8069.5,
      687.0
     ],
     "order": 1,
     "source": [
      "obj-267",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-268",
      0
     ],
     "midpoints": [
      10129.5,
      384.0,
      10129.5,
      384.0
     ],
     "order": 0,
     "source": [
      "obj-267",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-276",
      1
     ],
     "midpoints": [
      10129.5,
      414.0,
      10086.0,
      414.0,
      10086.0,
      456.0,
      10060.0,
      456.0
     ],
     "source": [
      "obj-268",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-270",
      0
     ],
     "midpoints": [
      10249.5,
      225.0,
      10249.5,
      225.0
     ],
     "source": [
      "obj-269",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-34",
      2
     ],
     "midpoints": [
      1669.5,
      915.0,
      1723.5,
      915.0
     ],
     "source": [
      "obj-27",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-271",
      0
     ],
     "midpoints": [
      10249.5,
      255.0,
      10249.5,
      255.0
     ],
     "source": [
      "obj-270",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-272",
      0
     ],
     "midpoints": [
      10249.5,
      285.0,
      10249.5,
      285.0
     ],
     "source": [
      "obj-271",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-273",
      0
     ],
     "midpoints": [
      10249.5,
      324.0,
      10249.5,
      324.0
     ],
     "source": [
      "obj-272",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-274",
      0
     ],
     "midpoints": [
      10249.5,
      354.0,
      10249.5,
      354.0
     ],
     "source": [
      "obj-273",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-209",
      0
     ],
     "midpoints": [
      10249.5,
      384.0,
      10197.0,
      384.0,
      10197.0,
      432.0,
      10137.0,
      432.0,
      10137.0,
      687.0,
      8129.5,
      687.0
     ],
     "order": 1,
     "source": [
      "obj-274",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-275",
      0
     ],
     "midpoints": [
      10249.5,
      384.0,
      10249.5,
      384.0
     ],
     "order": 0,
     "source": [
      "obj-274",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-276",
      2
     ],
     "midpoints": [
      10249.5,
      432.0,
      10137.0,
      432.0,
      10137.0,
      456.0,
      10110.5,
      456.0
     ],
     "source": [
      "obj-275",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-284",
      0
     ],
     "midpoints": [
      10009.5,
      444.0,
      10009.5,
      444.0
     ],
     "source": [
      "obj-278",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-278",
      0
     ],
     "midpoints": [
      10009.5,
      414.0,
      10009.5,
      414.0
     ],
     "source": [
      "obj-279",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-27",
      0
     ],
     "midpoints": [
      1669.5,
      813.0,
      1669.5,
      813.0
     ],
     "source": [
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-284",
      1
     ],
     "midpoints": [
      10059.5,
      444.0,
      10047.0,
      444.0,
      10047.0,
      441.0,
      10039.5,
      441.0
     ],
     "source": [
      "obj-280",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-280",
      0
     ],
     "midpoints": [
      10059.5,
      414.0,
      10059.5,
      414.0
     ],
     "source": [
      "obj-281",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-284",
      2
     ],
     "midpoints": [
      10109.5,
      444.0,
      10069.5,
      444.0
     ],
     "source": [
      "obj-282",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-282",
      0
     ],
     "midpoints": [
      10109.5,
      414.0,
      10109.5,
      414.0
     ],
     "source": [
      "obj-283",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-285",
      0
     ],
     "midpoints": [
      10009.5,
      468.0,
      9996.0,
      468.0,
      9996.0,
      492.0,
      10137.0,
      492.0,
      10137.0,
      441.0,
      10159.5,
      441.0
     ],
     "source": [
      "obj-284",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-276",
      0
     ],
     "midpoints": [
      10159.5,
      492.0,
      9987.0,
      492.0,
      9987.0,
      456.0,
      10009.5,
      456.0
     ],
     "source": [
      "obj-285",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-288",
      0
     ],
     "midpoints": [
      10409.5,
      225.0,
      10409.5,
      225.0
     ],
     "source": [
      "obj-286",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-292",
      0
     ],
     "midpoints": [
      10469.5,
      225.0,
      10469.5,
      225.0
     ],
     "source": [
      "obj-287",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-289",
      0
     ],
     "midpoints": [
      10409.5,
      324.0,
      10409.5,
      324.0
     ],
     "source": [
      "obj-288",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-290",
      0
     ],
     "midpoints": [
      10409.5,
      354.0,
      10409.5,
      354.0
     ],
     "source": [
      "obj-289",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-291",
      0
     ],
     "midpoints": [
      10409.5,
      384.0,
      10409.5,
      384.0
     ],
     "order": 1,
     "source": [
      "obj-290",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-299",
      0
     ],
     "midpoints": [
      10409.5,
      384.0,
      10587.0,
      384.0,
      10587.0,
      396.0,
      10609.5,
      396.0
     ],
     "order": 0,
     "source": [
      "obj-290",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-296",
      0
     ],
     "midpoints": [
      10409.5,
      414.0,
      10409.5,
      414.0
     ],
     "source": [
      "obj-291",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-293",
      0
     ],
     "midpoints": [
      10469.5,
      324.0,
      10469.5,
      324.0
     ],
     "source": [
      "obj-292",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-294",
      0
     ],
     "midpoints": [
      10469.5,
      354.0,
      10469.5,
      354.0
     ],
     "source": [
      "obj-293",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-295",
      0
     ],
     "midpoints": [
      10469.5,
      384.0,
      10469.5,
      384.0
     ],
     "order": 1,
     "source": [
      "obj-294",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-299",
      1
     ],
     "midpoints": [
      10469.5,
      384.0,
      10683.5,
      384.0
     ],
     "order": 0,
     "source": [
      "obj-294",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-296",
      1
     ],
     "midpoints": [
      10469.5,
      447.0,
      10462.5,
      447.0
     ],
     "source": [
      "obj-295",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-32",
      0
     ],
     "midpoints": [
      1729.5,
      870.0,
      1729.5,
      870.0
     ],
     "source": [
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-302",
      0
     ],
     "midpoints": [
      10609.5,
      384.0,
      10587.0,
      384.0,
      10587.0,
      327.0,
      10609.5,
      327.0
     ],
     "source": [
      "obj-300",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-299",
      0
     ],
     "midpoints": [
      10609.5,
      354.0,
      10587.0,
      354.0,
      10587.0,
      396.0,
      10609.5,
      396.0
     ],
     "source": [
      "obj-302",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-299",
      0
     ],
     "midpoints": [
      10649.5,
      384.0,
      10611.0,
      384.0,
      10611.0,
      396.0,
      10609.5,
      396.0
     ],
     "source": [
      "obj-303",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-305",
      0
     ],
     "midpoints": [
      8309.5,
      435.0,
      8309.5,
      435.0
     ],
     "source": [
      "obj-306",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-100",
      0
     ],
     "midpoints": [
      8809.5,
      423.0,
      8412.0,
      423.0,
      8412.0,
      396.0,
      8271.0,
      396.0,
      8271.0,
      420.0,
      6831.0,
      420.0,
      6831.0,
      186.0,
      6609.5,
      186.0
     ],
     "order": 4,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-101",
      0
     ],
     "midpoints": [
      8809.5,
      423.0,
      8412.0,
      423.0,
      8412.0,
      396.0,
      8271.0,
      396.0,
      8271.0,
      420.0,
      6831.0,
      420.0,
      6831.0,
      186.0,
      6669.5,
      186.0
     ],
     "order": 3,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-102",
      0
     ],
     "midpoints": [
      8809.5,
      423.0,
      8412.0,
      423.0,
      8412.0,
      396.0,
      8271.0,
      396.0,
      8271.0,
      420.0,
      6831.0,
      420.0,
      6831.0,
      186.0,
      6729.5,
      186.0
     ],
     "order": 2,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-129",
      0
     ],
     "midpoints": [
      8809.5,
      432.0,
      6439.5,
      432.0,
      6439.5,
      90.0,
      4069.5,
      90.0
     ],
     "order": 16,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-132",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      417.0,
      3909.5,
      417.0
     ],
     "order": 19,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-134",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      417.0,
      3969.5,
      417.0
     ],
     "order": 18,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-136",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      417.0,
      4029.5,
      417.0
     ],
     "order": 17,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-138",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      417.0,
      4089.5,
      417.0
     ],
     "order": 15,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-161",
      0
     ],
     "midpoints": [
      8809.5,
      432.0,
      6699.5,
      432.0,
      6699.5,
      90.0,
      4589.5,
      90.0
     ],
     "order": 11,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-164",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      417.0,
      4429.5,
      417.0
     ],
     "order": 14,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-166",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      417.0,
      4489.5,
      417.0
     ],
     "order": 13,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-168",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      417.0,
      4549.5,
      417.0
     ],
     "order": 12,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-170",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      417.0,
      4609.5,
      417.0
     ],
     "order": 10,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-193",
      0
     ],
     "midpoints": [
      8809.5,
      432.0,
      6959.5,
      432.0,
      6959.5,
      90.0,
      5109.5,
      90.0
     ],
     "order": 6,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-196",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      447.0,
      4949.5,
      447.0
     ],
     "order": 9,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-198",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      447.0,
      5009.5,
      447.0
     ],
     "order": 8,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-200",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      447.0,
      5069.5,
      447.0
     ],
     "order": 7,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-202",
      0
     ],
     "midpoints": [
      8809.5,
      492.0,
      5175.0,
      492.0,
      5175.0,
      447.0,
      5129.5,
      447.0
     ],
     "order": 5,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-223",
      0
     ],
     "midpoints": [
      8809.5,
      432.0,
      8985.0,
      432.0,
      8985.0,
      36.0,
      9009.5,
      36.0
     ],
     "order": 1,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-224",
      0
     ],
     "midpoints": [
      8809.5,
      432.0,
      8985.0,
      432.0,
      8985.0,
      27.0,
      9069.5,
      27.0
     ],
     "order": 0,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-26",
      0
     ],
     "midpoints": [
      8809.5,
      621.0,
      1609.5,
      621.0
     ],
     "order": 22,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-30",
      0
     ],
     "midpoints": [
      8809.5,
      621.0,
      1729.5,
      621.0
     ],
     "order": 21,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-77",
      0
     ],
     "midpoints": [
      8809.5,
      471.0,
      2309.5,
      471.0
     ],
     "order": 20,
     "source": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      1729.5,
      903.0,
      1656.0,
      903.0,
      1656.0,
      807.0,
      1587.0,
      807.0,
      1587.0,
      435.0,
      1609.5,
      435.0
     ],
     "source": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-34",
      0
     ],
     "midpoints": [
      1549.5,
      933.0,
      1596.0,
      933.0,
      1596.0,
      927.0,
      1609.5,
      927.0
     ],
     "source": [
      "obj-33",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-35",
      0
     ],
     "midpoints": [
      1609.5,
      954.0,
      1609.5,
      954.0
     ],
     "source": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-36",
      0
     ],
     "midpoints": [
      1609.5,
      984.0,
      1609.5,
      984.0
     ],
     "source": [
      "obj-35",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-34",
      3
     ],
     "midpoints": [
      1809.5,
      924.0,
      1780.5,
      924.0
     ],
     "source": [
      "obj-37",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-39",
      0
     ],
     "midpoints": [
      2455.5,
      63.0,
      2559.5,
      63.0
     ],
     "source": [
      "obj-38",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-41",
      0
     ],
     "midpoints": [
      2432.5,
      63.0,
      2535.0,
      63.0,
      2535.0,
      57.0,
      2699.5,
      57.0
     ],
     "source": [
      "obj-38",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-42",
      0
     ],
     "midpoints": [
      2409.5,
      63.0,
      2409.5,
      63.0
     ],
     "source": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-40",
      0
     ],
     "midpoints": [
      2559.5,
      93.0,
      2559.5,
      93.0
     ],
     "source": [
      "obj-39",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-6",
      0
     ],
     "midpoints": [
      9.5,
      33.0,
      0.0,
      33.0,
      0.0,
      30.0,
      -3.0,
      30.0,
      -3.0,
      -3.0,
      49.5,
      -3.0
     ],
     "source": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-43",
      0
     ],
     "midpoints": [
      2696.5,
      123.0,
      2559.5,
      123.0
     ],
     "source": [
      "obj-40",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-40",
      0
     ],
     "midpoints": [
      2699.5,
      93.0,
      2559.5,
      93.0
     ],
     "source": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-46",
      0
     ],
     "midpoints": [
      2409.5,
      93.0,
      2409.5,
      93.0
     ],
     "source": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-46",
      0
     ],
     "midpoints": [
      2699.5,
      186.0,
      2409.5,
      186.0
     ],
     "source": [
      "obj-44",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-44",
      0
     ],
     "midpoints": [
      2699.5,
      123.0,
      2699.5,
      123.0
     ],
     "source": [
      "obj-45",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-53",
      0
     ],
     "midpoints": [
      2409.5,
      225.0,
      2409.5,
      225.0
     ],
     "source": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-54",
      0
     ],
     "midpoints": [
      2490.0,
      336.0,
      2474.5,
      336.0
     ],
     "source": [
      "obj-46",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      1609.5,
      315.0,
      1609.5,
      315.0
     ],
     "source": [
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-51",
      0
     ],
     "midpoints": [
      2809.5,
      225.0,
      2809.5,
      225.0
     ],
     "source": [
      "obj-48",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-48",
      0
     ],
     "midpoints": [
      2809.5,
      195.0,
      2809.5,
      195.0
     ],
     "source": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-52",
      0
     ],
     "midpoints": [
      2809.5,
      255.0,
      2809.5,
      255.0
     ],
     "source": [
      "obj-51",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-53",
      1
     ],
     "midpoints": [
      2809.5,
      336.0,
      2430.5,
      336.0
     ],
     "order": 1,
     "source": [
      "obj-52",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-54",
      1
     ],
     "midpoints": [
      2809.5,
      336.0,
      2495.5,
      336.0
     ],
     "order": 0,
     "source": [
      "obj-52",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-214",
      0
     ],
     "midpoints": [
      2409.5,
      382.0,
      5009.5,
      382.0,
      5009.5,
      30.0,
      7609.5,
      30.0
     ],
     "source": [
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-214",
      1
     ],
     "midpoints": [
      2474.5,
      382.0,
      5107.5,
      382.0,
      5107.5,
      30.0,
      7740.5,
      30.0
     ],
     "source": [
      "obj-54",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-57",
      0
     ],
     "midpoints": [
      2909.5,
      441.0,
      2886.0,
      441.0,
      2886.0,
      405.0,
      3075.0,
      405.0,
      3075.0,
      414.0,
      3089.5,
      414.0
     ],
     "source": [
      "obj-56",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-58",
      0
     ],
     "midpoints": [
      3089.5,
      444.0,
      3075.0,
      444.0,
      3075.0,
      474.0,
      3089.5,
      474.0
     ],
     "order": 0,
     "source": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-60",
      0
     ],
     "midpoints": [
      3089.5,
      444.0,
      3075.0,
      444.0,
      3075.0,
      483.0,
      2994.0,
      483.0,
      2994.0,
      477.0,
      2909.5,
      477.0
     ],
     "order": 1,
     "source": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-46",
      0
     ],
     "midpoints": [
      3089.5,
      513.0,
      2592.0,
      513.0,
      2592.0,
      186.0,
      2409.5,
      186.0
     ],
     "source": [
      "obj-58",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-57",
      0
     ],
     "midpoints": [
      3089.5,
      414.0,
      3089.5,
      414.0
     ],
     "source": [
      "obj-59",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-56",
      0
     ],
     "midpoints": [
      2909.5,
      504.0,
      2886.0,
      504.0,
      2886.0,
      417.0,
      2909.5,
      417.0
     ],
     "source": [
      "obj-60",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-57",
      0
     ],
     "midpoints": [
      2909.5,
      474.0,
      2886.0,
      474.0,
      2886.0,
      405.0,
      3075.0,
      405.0,
      3075.0,
      414.0,
      3089.5,
      414.0
     ],
     "source": [
      "obj-61",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-57",
      0
     ],
     "midpoints": [
      2954.5,
      474.0,
      3075.0,
      474.0,
      3075.0,
      417.0,
      3089.5,
      417.0
     ],
     "source": [
      "obj-62",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-57",
      0
     ],
     "midpoints": [
      2999.5,
      474.0,
      3075.0,
      474.0,
      3075.0,
      417.0,
      3089.5,
      417.0
     ],
     "source": [
      "obj-63",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-57",
      0
     ],
     "midpoints": [
      3044.5,
      474.0,
      3075.0,
      474.0,
      3075.0,
      417.0,
      3089.5,
      417.0
     ],
     "source": [
      "obj-64",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-57",
      0
     ],
     "midpoints": [
      3089.5,
      474.0,
      3075.0,
      474.0,
      3075.0,
      417.0,
      3089.5,
      417.0
     ],
     "source": [
      "obj-65",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-69",
      0
     ],
     "midpoints": [
      2089.5,
      543.0,
      2089.5,
      543.0
     ],
     "source": [
      "obj-66",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-66",
      0
     ],
     "midpoints": [
      2089.5,
      513.0,
      2089.5,
      513.0
     ],
     "source": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      2089.5,
      603.0,
      1884.0,
      603.0,
      1884.0,
      426.0,
      1609.5,
      426.0
     ],
     "source": [
      "obj-69",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-72",
      0
     ],
     "midpoints": [
      2169.5,
      543.0,
      2169.5,
      543.0
     ],
     "source": [
      "obj-70",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      2169.5,
      573.0,
      2145.0,
      573.0,
      2145.0,
      552.0,
      1884.0,
      552.0,
      1884.0,
      426.0,
      1609.5,
      426.0
     ],
     "source": [
      "obj-72",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-76",
      0
     ],
     "midpoints": [
      2209.5,
      546.0,
      2211.0,
      546.0,
      2211.0,
      576.0,
      2209.5,
      576.0
     ],
     "source": [
      "obj-73",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-73",
      0
     ],
     "midpoints": [
      2209.5,
      513.0,
      2209.5,
      513.0
     ],
     "source": [
      "obj-74",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "midpoints": [
      2209.5,
      612.0,
      1884.0,
      612.0,
      1884.0,
      426.0,
      1609.5,
      426.0
     ],
     "source": [
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-79",
      0
     ],
     "midpoints": [
      2309.5,
      570.0,
      2309.5,
      570.0
     ],
     "source": [
      "obj-77",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-9",
      0
     ],
     "midpoints": [
      1609.5,
      63.0,
      1609.5,
      63.0
     ],
     "source": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-83",
      0
     ],
     "midpoints": [
      2009.5,
      225.0,
      1956.0,
      225.0,
      1956.0,
      186.0,
      1609.5,
      186.0
     ],
     "source": [
      "obj-84",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-216",
      1
     ],
     "midpoints": [
      5829.642857142857,
      333.0,
      6987.0,
      333.0,
      6987.0,
      27.0,
      8080.5,
      27.0
     ],
     "source": [
      "obj-86",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-216",
      0
     ],
     "midpoints": [
      5809.5,
      333.0,
      6987.0,
      333.0,
      6987.0,
      27.0,
      7949.5,
      27.0
     ],
     "source": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-217",
      1
     ],
     "midpoints": [
      6129.642857142857,
      333.0,
      6987.0,
      333.0,
      6987.0,
      27.0,
      8250.5,
      27.0
     ],
     "order": 1,
     "source": [
      "obj-87",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-217",
      0
     ],
     "midpoints": [
      6109.5,
      333.0,
      6987.0,
      333.0,
      6987.0,
      27.0,
      8119.5,
      27.0
     ],
     "order": 1,
     "source": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-218",
      0
     ],
     "midpoints": [
      6109.5,
      333.0,
      6585.0,
      333.0,
      6585.0,
      297.0,
      6609.5,
      297.0
     ],
     "order": 0,
     "source": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-219",
      0
     ],
     "midpoints": [
      6129.642857142857,
      333.0,
      6585.0,
      333.0,
      6585.0,
      285.0,
      6666.0,
      285.0,
      6666.0,
      297.0,
      6669.5,
      297.0
     ],
     "order": 0,
     "source": [
      "obj-87",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-92",
      0
     ],
     "midpoints": [
      5809.5,
      285.0,
      5787.0,
      285.0,
      5787.0,
      225.0,
      5809.5,
      225.0
     ],
     "source": [
      "obj-88",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-93",
      0
     ],
     "midpoints": [
      5849.5,
      285.0,
      5835.0,
      285.0,
      5835.0,
      252.0,
      5847.0,
      252.0,
      5847.0,
      225.0,
      5859.5,
      225.0
     ],
     "source": [
      "obj-90",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      0
     ],
     "midpoints": [
      5809.5,
      255.0,
      5787.0,
      255.0,
      5787.0,
      297.0,
      5809.5,
      297.0
     ],
     "source": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-86",
      0
     ],
     "midpoints": [
      5859.5,
      255.0,
      5823.0,
      255.0,
      5823.0,
      297.0,
      5809.5,
      297.0
     ],
     "source": [
      "obj-93",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-98",
      0
     ],
     "midpoints": [
      6109.5,
      285.0,
      6087.0,
      285.0,
      6087.0,
      225.0,
      6109.5,
      225.0
     ],
     "source": [
      "obj-94",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-99",
      0
     ],
     "midpoints": [
      6149.5,
      285.0,
      6135.0,
      285.0,
      6135.0,
      252.0,
      6147.0,
      252.0,
      6147.0,
      225.0,
      6159.5,
      225.0
     ],
     "source": [
      "obj-96",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      0
     ],
     "midpoints": [
      6109.5,
      255.0,
      6087.0,
      255.0,
      6087.0,
      297.0,
      6109.5,
      297.0
     ],
     "source": [
      "obj-98",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-87",
      0
     ],
     "midpoints": [
      6159.5,
      255.0,
      6123.0,
      255.0,
      6123.0,
      297.0,
      6109.5,
      297.0
     ],
     "source": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-309",
      0
     ],
     "destination": [
      "obj-313",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-313",
      0
     ],
     "destination": [
      "obj-308",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-311",
      0
     ],
     "destination": [
      "obj-314",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-314",
      0
     ],
     "destination": [
      "obj-308",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-317",
      0
     ],
     "destination": [
      "obj-315",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-315",
      0
     ],
     "destination": [
      "obj-318",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-318",
      0
     ],
     "destination": [
      "obj-319",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-319",
      0
     ],
     "destination": [
      "obj-320",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-131",
      0
     ],
     "destination": [
      "obj-321",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-320",
      0
     ],
     "destination": [
      "obj-321",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-131",
      0
     ],
     "destination": [
      "obj-308",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-308",
      0
     ],
     "destination": [
      "obj-322",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-319",
      0
     ],
     "destination": [
      "obj-322",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-321",
      0
     ],
     "destination": [
      "obj-323",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-322",
      0
     ],
     "destination": [
      "obj-323",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-323",
      0
     ],
     "destination": [
      "obj-144",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-131",
      1
     ],
     "destination": [
      "obj-324",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-320",
      0
     ],
     "destination": [
      "obj-324",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-131",
      1
     ],
     "destination": [
      "obj-308",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-308",
      1
     ],
     "destination": [
      "obj-325",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-319",
      0
     ],
     "destination": [
      "obj-325",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-324",
      0
     ],
     "destination": [
      "obj-326",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-325",
      0
     ],
     "destination": [
      "obj-326",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-326",
      0
     ],
     "destination": [
      "obj-144",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-328",
      0
     ],
     "destination": [
      "obj-332",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-332",
      0
     ],
     "destination": [
      "obj-327",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-330",
      0
     ],
     "destination": [
      "obj-333",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-333",
      0
     ],
     "destination": [
      "obj-327",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-336",
      0
     ],
     "destination": [
      "obj-334",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-334",
      0
     ],
     "destination": [
      "obj-337",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-337",
      0
     ],
     "destination": [
      "obj-338",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-338",
      0
     ],
     "destination": [
      "obj-339",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      0
     ],
     "destination": [
      "obj-340",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-339",
      0
     ],
     "destination": [
      "obj-340",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      0
     ],
     "destination": [
      "obj-327",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-327",
      0
     ],
     "destination": [
      "obj-341",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-338",
      0
     ],
     "destination": [
      "obj-341",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-340",
      0
     ],
     "destination": [
      "obj-342",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-341",
      0
     ],
     "destination": [
      "obj-342",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-342",
      0
     ],
     "destination": [
      "obj-176",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      1
     ],
     "destination": [
      "obj-343",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-339",
      0
     ],
     "destination": [
      "obj-343",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      1
     ],
     "destination": [
      "obj-327",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-327",
      1
     ],
     "destination": [
      "obj-344",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-338",
      0
     ],
     "destination": [
      "obj-344",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-343",
      0
     ],
     "destination": [
      "obj-345",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-344",
      0
     ],
     "destination": [
      "obj-345",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-345",
      0
     ],
     "destination": [
      "obj-176",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-347",
      0
     ],
     "destination": [
      "obj-351",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-351",
      0
     ],
     "destination": [
      "obj-346",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-349",
      0
     ],
     "destination": [
      "obj-352",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-352",
      0
     ],
     "destination": [
      "obj-346",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-355",
      0
     ],
     "destination": [
      "obj-353",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-353",
      0
     ],
     "destination": [
      "obj-356",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-356",
      0
     ],
     "destination": [
      "obj-357",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-357",
      0
     ],
     "destination": [
      "obj-358",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-195",
      0
     ],
     "destination": [
      "obj-359",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-358",
      0
     ],
     "destination": [
      "obj-359",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-195",
      0
     ],
     "destination": [
      "obj-346",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-346",
      0
     ],
     "destination": [
      "obj-360",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-357",
      0
     ],
     "destination": [
      "obj-360",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-359",
      0
     ],
     "destination": [
      "obj-361",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-360",
      0
     ],
     "destination": [
      "obj-361",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-361",
      0
     ],
     "destination": [
      "obj-208",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-195",
      1
     ],
     "destination": [
      "obj-362",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-358",
      0
     ],
     "destination": [
      "obj-362",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-195",
      1
     ],
     "destination": [
      "obj-346",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-346",
      1
     ],
     "destination": [
      "obj-363",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-357",
      0
     ],
     "destination": [
      "obj-363",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-362",
      0
     ],
     "destination": [
      "obj-364",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-363",
      0
     ],
     "destination": [
      "obj-364",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-364",
      0
     ],
     "destination": [
      "obj-208",
      1
     ]
    }
   }
  ],
  "parameters": {
   "obj-100": [
    "delay_to_reverb",
    "dly\u2192rev",
    0
   ],
   "obj-101": [
    "wash",
    "WASH",
    0
   ],
   "obj-102": [
    "echo",
    "ECHO",
    0
   ],
   "obj-125": [
    "pass_1",
    "pass_1",
    0
   ],
   "obj-129": [
    "twist_1",
    "twist",
    0
   ],
   "obj-132": [
    "size_1",
    "size",
    0
   ],
   "obj-134": [
    "spray_1",
    "spray",
    0
   ],
   "obj-136": [
    "pitch_1",
    "pitch",
    0
   ],
   "obj-138": [
    "ring_1",
    "ring",
    0
   ],
   "obj-144::obj-10": [
    "level[6]",
    "level",
    0
   ],
   "obj-144::obj-20": [
    "drive[6]",
    "drive",
    0
   ],
   "obj-144::obj-22": [
    "crush[6]",
    "crush",
    0
   ],
   "obj-144::obj-24": [
    "shift[6]",
    "shift",
    0
   ],
   "obj-144::obj-26": [
    "filter[6]",
    "LP\u00b7filter\u00b7HP",
    0
   ],
   "obj-144::obj-28": [
    "reso[6]",
    "reso",
    0
   ],
   "obj-144::obj-30": [
    "evolve[6]",
    "evolve",
    0
   ],
   "obj-144::obj-32": [
    "rev[4]",
    "reverb",
    0
   ],
   "obj-144::obj-34": [
    "dly[4]",
    "delay",
    0
   ],
   "obj-157": [
    "pass_2",
    "pass_2",
    0
   ],
   "obj-161": [
    "twist_2",
    "twist",
    0
   ],
   "obj-164": [
    "size_2",
    "size",
    0
   ],
   "obj-166": [
    "spray_2",
    "spray",
    0
   ],
   "obj-168": [
    "pitch_2",
    "pitch",
    0
   ],
   "obj-170": [
    "ring_2",
    "ring",
    0
   ],
   "obj-176::obj-10": [
    "level[5]",
    "level",
    0
   ],
   "obj-176::obj-20": [
    "drive[5]",
    "drive",
    0
   ],
   "obj-176::obj-22": [
    "crush[5]",
    "crush",
    0
   ],
   "obj-176::obj-24": [
    "shift[5]",
    "shift",
    0
   ],
   "obj-176::obj-26": [
    "filter[5]",
    "LP\u00b7filter\u00b7HP",
    0
   ],
   "obj-176::obj-28": [
    "reso[5]",
    "reso",
    0
   ],
   "obj-176::obj-30": [
    "evolve[5]",
    "evolve",
    0
   ],
   "obj-176::obj-32": [
    "rev[3]",
    "reverb",
    0
   ],
   "obj-176::obj-34": [
    "dly[3]",
    "delay",
    0
   ],
   "obj-189": [
    "pass_3",
    "pass_3",
    0
   ],
   "obj-193": [
    "twist_3",
    "twist",
    0
   ],
   "obj-196": [
    "size_3",
    "size",
    0
   ],
   "obj-198": [
    "spray_3",
    "spray",
    0
   ],
   "obj-200": [
    "pitch_3",
    "pitch",
    0
   ],
   "obj-202": [
    "ring_3",
    "ring",
    0
   ],
   "obj-208::obj-10": [
    "level[4]",
    "level",
    0
   ],
   "obj-208::obj-20": [
    "drive[4]",
    "drive",
    0
   ],
   "obj-208::obj-22": [
    "crush[4]",
    "crush",
    0
   ],
   "obj-208::obj-24": [
    "shift[4]",
    "shift",
    0
   ],
   "obj-208::obj-26": [
    "filter[4]",
    "LP\u00b7filter\u00b7HP",
    0
   ],
   "obj-208::obj-28": [
    "reso[4]",
    "reso",
    0
   ],
   "obj-208::obj-30": [
    "evolve[4]",
    "evolve",
    0
   ],
   "obj-208::obj-32": [
    "rev[2]",
    "reverb",
    0
   ],
   "obj-208::obj-34": [
    "dly[2]",
    "delay",
    0
   ],
   "obj-214::obj-10": [
    "level[3]",
    "level",
    0
   ],
   "obj-214::obj-20": [
    "drive[3]",
    "drive",
    0
   ],
   "obj-214::obj-22": [
    "crush[3]",
    "crush",
    0
   ],
   "obj-214::obj-24": [
    "shift[3]",
    "shift",
    0
   ],
   "obj-214::obj-26": [
    "filter[3]",
    "LP\u00b7filter\u00b7HP",
    0
   ],
   "obj-214::obj-28": [
    "reso[3]",
    "reso",
    0
   ],
   "obj-214::obj-30": [
    "evolve[3]",
    "evolve",
    0
   ],
   "obj-214::obj-32": [
    "rev[1]",
    "reverb",
    0
   ],
   "obj-214::obj-34": [
    "dly[1]",
    "delay",
    0
   ],
   "obj-215::obj-10": [
    "level[2]",
    "level",
    0
   ],
   "obj-215::obj-20": [
    "drive[2]",
    "drive",
    0
   ],
   "obj-215::obj-22": [
    "crush[2]",
    "crush",
    0
   ],
   "obj-215::obj-24": [
    "shift[2]",
    "shift",
    0
   ],
   "obj-215::obj-26": [
    "filter[2]",
    "LP\u00b7filter\u00b7HP",
    0
   ],
   "obj-215::obj-28": [
    "reso[2]",
    "reso",
    0
   ],
   "obj-215::obj-30": [
    "evolve[2]",
    "evolve",
    0
   ],
   "obj-215::obj-32": [
    "rev",
    "reverb",
    0
   ],
   "obj-215::obj-34": [
    "dly",
    "delay",
    0
   ],
   "obj-216::obj-10": [
    "level[1]",
    "level",
    0
   ],
   "obj-216::obj-20": [
    "drive[1]",
    "drive",
    0
   ],
   "obj-216::obj-22": [
    "crush[1]",
    "crush",
    0
   ],
   "obj-216::obj-24": [
    "shift[1]",
    "shift",
    0
   ],
   "obj-216::obj-26": [
    "filter[1]",
    "LP\u00b7filter\u00b7HP",
    0
   ],
   "obj-216::obj-28": [
    "reso[1]",
    "reso",
    0
   ],
   "obj-216::obj-30": [
    "evolve[1]",
    "evolve",
    0
   ],
   "obj-217::obj-10": [
    "level",
    "level",
    0
   ],
   "obj-217::obj-20": [
    "drive",
    "drive",
    0
   ],
   "obj-217::obj-22": [
    "crush",
    "crush",
    0
   ],
   "obj-217::obj-24": [
    "shift",
    "shift",
    0
   ],
   "obj-217::obj-26": [
    "filter",
    "LP\u00b7filter\u00b7HP",
    0
   ],
   "obj-217::obj-28": [
    "reso",
    "reso",
    0
   ],
   "obj-217::obj-30": [
    "evolve",
    "evolve",
    0
   ],
   "obj-22": [
    "new_source",
    "new_source",
    0
   ],
   "obj-223": [
    "master",
    "master",
    0
   ],
   "obj-224": [
    "room",
    "room",
    0
   ],
   "obj-26": [
    "truncation",
    "wildness",
    0
   ],
   "obj-30": [
    "density",
    "density",
    0
   ],
   "obj-77": [
    "floor",
    "floor",
    0
   ],
   "obj-86": [
    "vst~",
    "vst~",
    0
   ],
   "obj-87": [
    "vst~[1]",
    "vst~[1]",
    0
   ],
   "parameterbanks": {
    "0": {
     "index": 0,
     "name": "",
     "parameters": [
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-"
     ]
    }
   },
   "parameter_overrides": {
    "obj-144::obj-10": {
     "parameter_longname": "level[6]"
    },
    "obj-144::obj-20": {
     "parameter_longname": "drive[6]"
    },
    "obj-144::obj-22": {
     "parameter_longname": "crush[6]"
    },
    "obj-144::obj-24": {
     "parameter_longname": "shift[6]"
    },
    "obj-144::obj-26": {
     "parameter_longname": "filter[6]"
    },
    "obj-144::obj-28": {
     "parameter_longname": "reso[6]"
    },
    "obj-144::obj-30": {
     "parameter_longname": "evolve[6]"
    },
    "obj-144::obj-32": {
     "parameter_longname": "rev[4]"
    },
    "obj-144::obj-34": {
     "parameter_longname": "dly[4]"
    },
    "obj-176::obj-10": {
     "parameter_longname": "level[5]"
    },
    "obj-176::obj-20": {
     "parameter_longname": "drive[5]"
    },
    "obj-176::obj-22": {
     "parameter_longname": "crush[5]"
    },
    "obj-176::obj-24": {
     "parameter_longname": "shift[5]"
    },
    "obj-176::obj-26": {
     "parameter_longname": "filter[5]"
    },
    "obj-176::obj-28": {
     "parameter_longname": "reso[5]"
    },
    "obj-176::obj-30": {
     "parameter_longname": "evolve[5]"
    },
    "obj-176::obj-32": {
     "parameter_longname": "rev[3]"
    },
    "obj-176::obj-34": {
     "parameter_longname": "dly[3]"
    },
    "obj-208::obj-10": {
     "parameter_longname": "level[4]"
    },
    "obj-208::obj-20": {
     "parameter_longname": "drive[4]"
    },
    "obj-208::obj-22": {
     "parameter_longname": "crush[4]"
    },
    "obj-208::obj-24": {
     "parameter_longname": "shift[4]"
    },
    "obj-208::obj-26": {
     "parameter_longname": "filter[4]"
    },
    "obj-208::obj-28": {
     "parameter_longname": "reso[4]"
    },
    "obj-208::obj-30": {
     "parameter_longname": "evolve[4]"
    },
    "obj-208::obj-32": {
     "parameter_longname": "rev[2]"
    },
    "obj-208::obj-34": {
     "parameter_longname": "dly[2]"
    },
    "obj-214::obj-10": {
     "parameter_longname": "level[3]"
    },
    "obj-214::obj-20": {
     "parameter_longname": "drive[3]"
    },
    "obj-214::obj-22": {
     "parameter_longname": "crush[3]"
    },
    "obj-214::obj-24": {
     "parameter_longname": "shift[3]"
    },
    "obj-214::obj-26": {
     "parameter_longname": "filter[3]"
    },
    "obj-214::obj-28": {
     "parameter_longname": "reso[3]"
    },
    "obj-214::obj-30": {
     "parameter_longname": "evolve[3]"
    },
    "obj-214::obj-32": {
     "parameter_longname": "rev[1]"
    },
    "obj-214::obj-34": {
     "parameter_longname": "dly[1]"
    },
    "obj-215::obj-10": {
     "parameter_longname": "level[2]"
    },
    "obj-215::obj-20": {
     "parameter_longname": "drive[2]"
    },
    "obj-215::obj-22": {
     "parameter_longname": "crush[2]"
    },
    "obj-215::obj-24": {
     "parameter_longname": "shift[2]"
    },
    "obj-215::obj-26": {
     "parameter_longname": "filter[2]"
    },
    "obj-215::obj-28": {
     "parameter_longname": "reso[2]"
    },
    "obj-215::obj-30": {
     "parameter_longname": "evolve[2]"
    },
    "obj-216::obj-10": {
     "parameter_longname": "level[1]"
    },
    "obj-216::obj-20": {
     "parameter_longname": "drive[1]"
    },
    "obj-216::obj-22": {
     "parameter_longname": "crush[1]"
    },
    "obj-216::obj-24": {
     "parameter_longname": "shift[1]"
    },
    "obj-216::obj-26": {
     "parameter_longname": "filter[1]"
    },
    "obj-216::obj-28": {
     "parameter_longname": "reso[1]"
    },
    "obj-216::obj-30": {
     "parameter_longname": "evolve[1]"
    }
   },
   "inherited_shortname": 1
  },
  "dependency_cache": [
   {
    "name": "Deelay.maxsnap",
    "bootpath": "~/Documents/Max 9/Snapshots",
    "patcherrelativepath": "../../../../../Documents/Max 9/Snapshots",
    "type": "mx@s",
    "implicit": 1
   },
   {
    "name": "TAL Reverb 4 Plugin.maxsnap",
    "bootpath": "~/Documents/Max 9/Snapshots",
    "patcherrelativepath": "../../../../../Documents/Max 9/Snapshots",
    "type": "mx@s",
    "implicit": 1
   },
   {
    "name": "chain_relay_clouds.js",
    "bootpath": "~/repos/aimat/resources/examples/max",
    "patcherrelativepath": ".",
    "type": "TEXT",
    "implicit": 1
   },
   {
    "name": "chain_return.maxpat",
    "bootpath": "~/repos/aimat/resources/examples/max",
    "patcherrelativepath": ".",
    "type": "JSON",
    "implicit": 1
   },
   {
    "name": "chain_solo.js",
    "bootpath": "~/repos/aimat/resources/examples/max",
    "patcherrelativepath": ".",
    "type": "TEXT",
    "implicit": 1
   },
   {
    "name": "chain_strip.js",
    "bootpath": "~/repos/aimat/resources/examples/max",
    "patcherrelativepath": ".",
    "type": "TEXT",
    "implicit": 1
   },
   {
    "name": "chain_strip.maxpat",
    "bootpath": "~/repos/aimat/resources/examples/max",
    "patcherrelativepath": ".",
    "type": "JSON",
    "implicit": 1
   },
   {
    "name": "chain_voice.js",
    "bootpath": "~/repos/aimat/resources/examples/max",
    "patcherrelativepath": ".",
    "type": "TEXT",
    "implicit": 1
   },
   {
    "name": "chain_voice.maxpat",
    "bootpath": "~/repos/aimat/resources/examples/max",
    "patcherrelativepath": ".",
    "type": "JSON",
    "implicit": 1
   },
   {
    "name": "grainflow~.mxo",
    "type": "iLaX"
   }
  ],
  "autosave": 0
 }
}