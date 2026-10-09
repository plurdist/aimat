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
   20.0,
   40.0,
   1410.0,
   840.0
  ],
  "gridsize": [
   15.0,
   15.0
  ],
  "openinpresentation": 1,
  "boxes": [
   {
    "box": {
     "id": "obj-1",
     "maxclass": "panel",
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
     "bgcolor": [
      0.86,
      0.86,
      0.84,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-2",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      300.0,
      28.0
     ],
     "text": "AIMAT RELAY \u00b7 INHERIT",
     "presentation": 1,
     "presentation_rect": [
      12.0,
      6.0,
      300.0,
      30.0
     ],
     "fontsize": 22.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      560.0,
      17.0
     ],
     "text": "one phrase, three clouds: when your panel is green it's yours, until you PASS",
     "presentation": 1,
     "presentation_rect": [
      330.0,
      14.0,
      560.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      0.0,
      0.0,
      30.0,
      30.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1300.0,
      6.0,
      30.0,
      30.0
     ],
     "parameter_enable": 0,
     "blinkcolor": [
      1,
      0.2,
      0.2,
      1
     ]
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      60.0,
      18.0
     ],
     "text": "PANIC",
     "presentation": 1,
     "presentation_rect": [
      1334.0,
      12.0,
      60.0,
      20.0
     ],
     "fontsize": 12.0,
     "linecount": 1
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
     "id": "obj-7",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1600.0,
      10.0,
      200.0,
      20.0
     ],
     "text": "AIMAT connection",
     "fontsize": 14.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      40.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      1600.0,
      120.0,
      121.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      1600.0,
      150.0,
      620.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      ""
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
     "patching_rect": [
      1600.0,
      440.0,
      170.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      "",
      ""
     ],
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
     "patching_rect": [
      1780.0,
      480.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      ""
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
     "patching_rect": [
      1730.0,
      260.0,
      121.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      1860.0,
      260.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2000.0,
      410.0,
      114.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess reset"
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "panel",
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
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "mode": 0,
     "rounded": 6,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "panel",
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
     "bgcolor": [
      0.93,
      0.42,
      0.4,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      44.0,
      682.0,
      19.0
     ],
     "text": "MACHINE \u00b7 the source and the relay",
     "presentation": 1,
     "presentation_rect": [
      706.0,
      46.0,
      680.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "live.button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      700.0,
      36.0,
      36.0
     ],
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      76.0,
      36.0,
      36.0
     ],
     "parameter_enable": 1,
     "varname": "new_source",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "new_source",
       "parameter_shortname": "new_source",
       "parameter_type": 2,
       "parameter_mmax": 1,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      34.0
     ],
     "text": "NEW\nSOURCE",
     "presentation": 1,
     "presentation_rect": [
      752.0,
      78.0,
      70.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      1600.0,
      740.0,
      80.0,
      22.0
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      826.0,
      82.0,
      80.0,
      22.0
     ],
     "items": [
      "pipes",
      ",",
      "misc",
      ",",
      "techno"
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1700.0,
      740.0,
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
     "id": "obj-26",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1600.0,
      820.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      916.0,
      74.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "truncation",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "truncation",
       "parameter_shortname": "wildness",
       "parameter_type": 0,
       "parameter_mmin": 0.1,
       "parameter_mmax": 4.0,
       "parameter_initial": [
        1.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-27",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1660.0,
      820.0,
      44.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      968.0,
      84.0,
      44.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1660.0,
      790.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 20"
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      50.0,
      15.0
     ],
     "text": "seconds",
     "presentation": 1,
     "presentation_rect": [
      968.0,
      106.0,
      50.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1720.0,
      820.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1022.0,
      74.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "density",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "density",
       "parameter_shortname": "density",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      64.0,
      60.0
     ],
     "text": "density:\nnotes heard\n(techno\nneeds more)",
     "presentation": 1,
     "presentation_rect": [
      1070.0,
      76.0,
      64.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 4
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1720.0,
      880.0,
      121.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      1540.0,
      900.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "bang"
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
     "patching_rect": [
      1600.0,
      930.0,
      190.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      1600.0,
      960.0,
      170.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      1800.0,
      900.0,
      114.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2400.0,
      40.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "bang",
      ""
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
     "patching_rect": [
      2550.0,
      70.0,
      121.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2550.0,
      98.0,
      156.0,
      22.0
     ],
     "outlettype": [
      "float",
      "bang"
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
     "patching_rect": [
      2690.0,
      70.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2400.0,
      70.0,
      79.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2690.0,
      126.0,
      58.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2690.0,
      98.0,
      72.0,
      22.0
     ],
     "outlettype": [
      "bang"
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
     "patching_rect": [
      2400.0,
      200.0,
      180.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal"
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
     "patching_rect": [
      1600.0,
      290.0,
      114.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2800.0,
      200.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      76.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-49",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      140.0,
      16.0
     ],
     "text": "source bed in the room",
     "presentation": 1,
     "presentation_rect": [
      1176.0,
      78.0,
      140.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2800.0,
      170.0,
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
     "id": "obj-51",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2800.0,
      230.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2800.0,
      260.0,
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
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      350.0,
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
     "id": "obj-54",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2465.0,
      350.0,
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
     "id": "obj-55",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      50.0,
      30.0
     ],
     "text": "BED\nSPEED",
     "presentation": 1,
     "presentation_rect": [
      712.0,
      142.0,
      50.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-56",
     "maxclass": "slider",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2900.0,
      420.0,
      170.0,
      20.0
     ],
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      764.0,
      140.0,
      170.0,
      20.0
     ],
     "floatoutput": 1,
     "size": 4.0,
     "min": -2.0,
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-57",
     "maxclass": "flonum",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3080.0,
      420.0,
      56.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      940.0,
      139.0,
      56.0,
      22.0
     ],
     "format": 6,
     "parameter_enable": 0,
     "minimum": -4.0,
     "maximum": 4.0
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3080.0,
      480.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
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
     "patching_rect": [
      3080.0,
      390.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2900.0,
      480.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2900.0,
      450.0,
      40.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "0.25",
     "presentation": 1,
     "presentation_rect": [
      764.0,
      166.0,
      42.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2945.0,
      450.0,
      40.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "0.5",
     "presentation": 1,
     "presentation_rect": [
      810.0,
      166.0,
      42.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-63",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2990.0,
      450.0,
      40.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "1",
     "presentation": 1,
     "presentation_rect": [
      856.0,
      166.0,
      42.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3035.0,
      450.0,
      40.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "2",
     "presentation": 1,
     "presentation_rect": [
      902.0,
      166.0,
      42.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3080.0,
      450.0,
      40.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "-1",
     "presentation": 1,
     "presentation_rect": [
      948.0,
      166.0,
      42.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2080.0,
      520.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      200.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2080.0,
      490.0,
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
     "id": "obj-68",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      220.0,
      16.0
     ],
     "text": "auto-pass every 25 s (practising alone)",
     "presentation": 1,
     "presentation_rect": [
      738.0,
      202.0,
      220.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2080.0,
      580.0,
      128.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2160.0,
      520.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      962.0,
      200.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-71",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      80.0,
      16.0
     ],
     "text": "reset relay",
     "presentation": 1,
     "presentation_rect": [
      988.0,
      202.0,
      80.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2160.0,
      550.0,
      51.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2200.0,
      520.0,
      36.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      228.0,
      36.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2200.0,
      490.0,
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
     "id": "obj-75",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      200.0,
      16.0
     ],
     "text": "MIDI-DDSP every n gens (0 = off)",
     "presentation": 1,
     "presentation_rect": [
      752.0,
      230.0,
      200.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2200.0,
      580.0,
      142.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      2300.0,
      520.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      240.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "floor",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "floor",
       "parameter_shortname": "floor",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 0.5,
       "parameter_initial": [
        0.15
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      130.0,
      30.0
     ],
     "text": "floor: how loud a cloud\nstays after its PASS",
     "presentation": 1,
     "presentation_rect": [
      1198.0,
      248.0,
      130.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
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
     "id": "obj-80",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1900.0,
      640.0,
      64.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1050.0,
      164.0,
      64.0,
      34.0
     ],
     "parameter_enable": 0,
     "fontsize": 22.0
    }
   },
   {
    "box": {
     "id": "obj-81",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      16.0
     ],
     "text": "generation",
     "presentation": 1,
     "presentation_rect": [
      1050.0,
      200.0,
      70.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2000.0,
      640.0,
      416.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "ready: NEW SOURCE",
     "presentation": 1,
     "presentation_rect": [
      712.0,
      254.0,
      430.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      200.0,
      344.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "waiting\u2026",
     "presentation": 1,
     "presentation_rect": [
      712.0,
      278.0,
      430.0,
      20.0
     ],
     "fontsize": 10.0
    }
   },
   {
    "box": {
     "id": "obj-84",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2000.0,
      200.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend set"
    }
   },
   {
    "box": {
     "id": "obj-85",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      240.0,
      16.0
     ],
     "text": "EFFECTS (plug-ins, 100% wet)",
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      104.0,
      240.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-86",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      5800.0,
      300.0,
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
     "id": "obj-87",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      6100.0,
      300.0,
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
     "id": "obj-88",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5800.0,
      260.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      122.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-89",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      90.0,
      16.0
     ],
     "text": "load reverb",
     "presentation": 1,
     "presentation_rect": [
      1176.0,
      124.0,
      90.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-90",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5840.0,
      260.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      148.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-91",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      90.0,
      16.0
     ],
     "text": "show reverb",
     "presentation": 1,
     "presentation_rect": [
      1176.0,
      150.0,
      90.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-92",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5800.0,
      230.0,
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
     "id": "obj-93",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5850.0,
      230.0,
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
     "id": "obj-94",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      260.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1266.0,
      122.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-95",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      90.0,
      16.0
     ],
     "text": "load delay",
     "presentation": 1,
     "presentation_rect": [
      1292.0,
      124.0,
      90.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-96",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6140.0,
      260.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1266.0,
      148.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-97",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      90.0,
      16.0
     ],
     "text": "show delay",
     "presentation": 1,
     "presentation_rect": [
      1292.0,
      150.0,
      90.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-98",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      230.0,
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
     "id": "obj-99",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6150.0,
      230.0,
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
     "id": "obj-100",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      6600.0,
      200.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      178.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "delay_to_reverb",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "delay_to_reverb",
       "parameter_shortname": "dly\u2192rev",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-101",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      6660.0,
      200.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1202.0,
      178.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "wash",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "wash",
       "parameter_shortname": "WASH",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-102",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      6720.0,
      200.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1254.0,
      178.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "echo",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "echo",
       "parameter_shortname": "ECHO",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-103",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      100.0,
      45.0
     ],
     "text": "WASH / ECHO add\nreverb / delay to\neverything",
     "presentation": 1,
     "presentation_rect": [
      1306.0,
      182.0,
      100.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 3
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
     "patching_rect": [
      5400.0,
      40.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "bang",
      ""
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
     "patching_rect": [
      5460.0,
      70.0,
      121.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      5460.0,
      98.0,
      142.0,
      22.0
     ],
     "outlettype": [
      "float",
      "bang"
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
     "patching_rect": [
      5400.0,
      70.0,
      79.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      5600.0,
      70.0,
      58.0,
      22.0
     ],
     "outlettype": [
      ""
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
     "patching_rect": [
      5600.0,
      40.0,
      72.0,
      22.0
     ],
     "outlettype": [
      "bang"
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
     "patching_rect": [
      5400.0,
      130.0,
      150.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal"
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
     "patching_rect": [
      5570.0,
      100.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
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
     "patching_rect": [
      5500.0,
      40.0,
      79.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "ddsp_done"
    }
   },
   {
    "box": {
     "id": "obj-115",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      440.0,
      150.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "js chain_inherit.js"
    }
   },
   {
    "box": {
     "id": "obj-116",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      410.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend voice"
    }
   },
   {
    "box": {
     "id": "obj-117",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2550.0,
      410.0,
      79.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "newsource"
    }
   },
   {
    "box": {
     "id": "obj-118",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2550.0,
      380.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "text": "t b"
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 5,
     "patching_rect": [
      2400.0,
      480.0,
      200.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      "",
      ""
     ],
     "text": "route voice label rec buffer"
    }
   },
   {
    "box": {
     "id": "obj-120",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 4,
     "patching_rect": [
      2400.0,
      510.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "text": "route 1 2 3"
    }
   },
   {
    "box": {
     "id": "obj-121",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 4,
     "patching_rect": [
      2500.0,
      510.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "text": "route 1 2 3"
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 4,
     "patching_rect": [
      2600.0,
      510.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "text": "route 1 2 3"
    }
   },
   {
    "box": {
     "id": "obj-123",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 5,
     "patching_rect": [
      2700.0,
      510.0,
      107.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      "",
      ""
     ],
     "text": "route 0 1 2 3"
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2700.0,
      560.0,
      150.0,
      22.0
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ relay_gen_0 60000 2"
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2860.0,
      560.0,
      150.0,
      22.0
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ relay_gen_1 60000 2"
    }
   },
   {
    "box": {
     "id": "obj-126",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3020.0,
      560.0,
      150.0,
      22.0
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ relay_gen_2 60000 2"
    }
   },
   {
    "box": {
     "id": "obj-127",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3180.0,
      560.0,
      150.0,
      22.0
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ relay_gen_3 60000 2"
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 5,
     "patching_rect": [
      2400.0,
      560.0,
      140.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "filtercoeff~ highpass"
    }
   },
   {
    "box": {
     "id": "obj-129",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      530.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 80."
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2560.0,
      600.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      962.0,
      228.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-131",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      90.0,
      16.0
     ],
     "text": "inherit audio",
     "presentation": 1,
     "presentation_rect": [
      988.0,
      230.0,
      90.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-132",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2560.0,
      570.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 1"
    }
   },
   {
    "box": {
     "id": "obj-133",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2560.0,
      630.0,
      121.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend inherit"
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "panel",
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
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "mode": 0,
     "rounded": 6,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-135",
     "maxclass": "panel",
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
     "bgcolor": [
      0.72,
      0.58,
      0.9,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      44.0,
      210.0,
      19.0
     ],
     "text": "PLAYER 1 \u00b7 regulators",
     "presentation": 1,
     "presentation_rect": [
      14.0,
      46.0,
      208.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-137",
     "maxclass": "panel",
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
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-138",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4100.0,
      10.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "== 1"
    }
   },
   {
    "box": {
     "id": "obj-139",
     "maxclass": "led",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4100.0,
      40.0,
      40.0,
      40.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      182.0,
      76.0,
      36.0,
      36.0
     ],
     "oncolor": [
      0.2,
      0.95,
      0.35,
      1.0
     ],
     "parameter_enable": 0,
     "ignoreclick": 1
    }
   },
   {
    "box": {
     "id": "obj-140",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4160.0,
      60.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "bang",
      ""
     ],
     "text": "sel 1 0"
    }
   },
   {
    "box": {
     "id": "obj-141",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4160.0,
      90.0,
      191.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "bgcolor 0.78 0.95 0.80 1."
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4160.0,
      120.0,
      191.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "bgcolor 0.96 0.96 0.95 1."
    }
   },
   {
    "box": {
     "id": "obj-143",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      52.0,
      15.0
     ],
     "text": "your turn",
     "presentation": 1,
     "presentation_rect": [
      174.0,
      114.0,
      52.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-144",
     "maxclass": "live.button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4000.0,
      40.0,
      50.0,
      50.0
     ],
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      76.0,
      50.0,
      50.0
     ],
     "parameter_enable": 1,
     "varname": "pass_1",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "pass_1",
       "parameter_shortname": "pass_1",
       "parameter_type": 2,
       "parameter_mmax": 1,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-145",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      16.0
     ],
     "text": "PASS",
     "presentation": 1,
     "presentation_rect": [
      30.0,
      128.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-146",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4000.0,
      100.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "text": "t b"
    }
   },
   {
    "box": {
     "id": "obj-147",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4000.0,
      130.0,
      58.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pass 1"
    }
   },
   {
    "box": {
     "id": "obj-148",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4060.0,
      100.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      82.0,
      76.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "twist_1",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "twist_1",
       "parameter_shortname": "twist",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-149",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4060.0,
      160.0,
      121.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend twist 1"
    }
   },
   {
    "box": {
     "id": "obj-150",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3700.0,
      560.0,
      160.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "text": "chain_voice_inherit regulators"
    }
   },
   {
    "box": {
     "id": "obj-151",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3900.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "size_1",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "size_1",
       "parameter_shortname": "size",
       "parameter_type": 0,
       "parameter_mmin": 20.0,
       "parameter_mmax": 2000.0,
       "parameter_initial": [
        70.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-152",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3900.0,
      520.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend size"
    }
   },
   {
    "box": {
     "id": "obj-153",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3960.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      68.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "spray_1",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "spray_1",
       "parameter_shortname": "spray",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-154",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3960.0,
      520.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend spray"
    }
   },
   {
    "box": {
     "id": "obj-155",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4020.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      116.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "pitch_1",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "pitch_1",
       "parameter_shortname": "pitch",
       "parameter_type": 0,
       "parameter_mmin": -24.0,
       "parameter_mmax": 24.0,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-156",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4020.0,
      520.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend pitch"
    }
   },
   {
    "box": {
     "id": "obj-157",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4080.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      164.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "ring_1",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "ring_1",
       "parameter_shortname": "ring",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-158",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4080.0,
      520.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend ring"
    }
   },
   {
    "box": {
     "id": "obj-159",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4160.0,
      460.0,
      20.0,
      20.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      202.0,
      20.0,
      20.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-160",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      34.0,
      15.0
     ],
     "text": "steps",
     "presentation": 1,
     "presentation_rect": [
      42.0,
      204.0,
      34.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-161",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4160.0,
      430.0,
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
     "id": "obj-162",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4160.0,
      520.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend steps"
    }
   },
   {
    "box": {
     "id": "obj-163",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      7000.0,
      40.0,
      150.0,
      370.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      43.0,
      220.0,
      150.0,
      370.0
     ],
     "name": "chain_strip_tap.maxpat",
     "args": [
      "VOICE1"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-164",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      3700.0,
      600.0,
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
     "id": "obj-165",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3900.0,
      600.0,
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
     "id": "obj-166",
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
     "id": "obj-167",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3940.0,
      600.0,
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
     "id": "obj-168",
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
     "id": "obj-169",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3900.0,
      630.0,
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
     "id": "obj-170",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3940.0,
      630.0,
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
     "id": "obj-171",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3980.0,
      600.0,
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
     "id": "obj-172",
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
     "id": "obj-173",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3980.0,
      570.0,
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
     "id": "obj-174",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3980.0,
      630.0,
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
     "id": "obj-175",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      3980.0,
      660.0,
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
     "id": "obj-176",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3980.0,
      690.0,
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
     "id": "obj-177",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      720.0,
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
     "id": "obj-178",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      750.0,
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
     "id": "obj-179",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      780.0,
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
     "id": "obj-180",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3780.0,
      720.0,
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
     "id": "obj-181",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3780.0,
      750.0,
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
     "id": "obj-182",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3780.0,
      780.0,
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
     "id": "obj-183",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      7000.0,
      520.0,
      150.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ relay_gen_0 2"
    }
   },
   {
    "box": {
     "id": "obj-184",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      7000.0,
      480.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "biquad~"
    }
   },
   {
    "box": {
     "id": "obj-185",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      7070.0,
      480.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "biquad~"
    }
   },
   {
    "box": {
     "id": "obj-186",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4100.0,
      700.0,
      115.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "src: new source",
     "presentation": 1,
     "presentation_rect": [
      108.0,
      618.0,
      112.0,
      18.0
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "id": "obj-187",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4100.0,
      670.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend set"
    }
   },
   {
    "box": {
     "id": "obj-188",
     "maxclass": "meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      8000.0,
      700.0,
      150.0,
      14.0
     ],
     "outlettype": [
      "float"
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
     "id": "obj-189",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      60.0,
      15.0
     ],
     "text": "speaker 1",
     "presentation": 1,
     "presentation_rect": [
      43.0,
      616.0,
      60.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-190",
     "maxclass": "panel",
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
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "mode": 0,
     "rounded": 6,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-191",
     "maxclass": "panel",
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
     "bgcolor": [
      0.72,
      0.58,
      0.9,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-192",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      236.0,
      44.0,
      210.0,
      19.0
     ],
     "text": "PLAYER 2 \u00b7 drones",
     "presentation": 1,
     "presentation_rect": [
      242.0,
      46.0,
      208.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-193",
     "maxclass": "panel",
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
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-194",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4620.0,
      10.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "== 2"
    }
   },
   {
    "box": {
     "id": "obj-195",
     "maxclass": "led",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4620.0,
      40.0,
      40.0,
      40.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      410.0,
      76.0,
      36.0,
      36.0
     ],
     "oncolor": [
      0.2,
      0.95,
      0.35,
      1.0
     ],
     "parameter_enable": 0,
     "ignoreclick": 1
    }
   },
   {
    "box": {
     "id": "obj-196",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4680.0,
      60.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "bang",
      ""
     ],
     "text": "sel 1 0"
    }
   },
   {
    "box": {
     "id": "obj-197",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4680.0,
      90.0,
      191.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "bgcolor 0.78 0.95 0.80 1."
    }
   },
   {
    "box": {
     "id": "obj-198",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4680.0,
      120.0,
      191.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "bgcolor 0.96 0.96 0.95 1."
    }
   },
   {
    "box": {
     "id": "obj-199",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      52.0,
      15.0
     ],
     "text": "your turn",
     "presentation": 1,
     "presentation_rect": [
      402.0,
      114.0,
      52.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-200",
     "maxclass": "live.button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4520.0,
      40.0,
      50.0,
      50.0
     ],
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      248.0,
      76.0,
      50.0,
      50.0
     ],
     "parameter_enable": 1,
     "varname": "pass_2",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "pass_2",
       "parameter_shortname": "pass_2",
       "parameter_type": 2,
       "parameter_mmax": 1,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-201",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      16.0
     ],
     "text": "PASS",
     "presentation": 1,
     "presentation_rect": [
      258.0,
      128.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-202",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4520.0,
      100.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "text": "t b"
    }
   },
   {
    "box": {
     "id": "obj-203",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4520.0,
      130.0,
      58.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pass 2"
    }
   },
   {
    "box": {
     "id": "obj-204",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4580.0,
      100.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      310.0,
      76.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "twist_2",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "twist_2",
       "parameter_shortname": "twist",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-205",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4580.0,
      160.0,
      121.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend twist 2"
    }
   },
   {
    "box": {
     "id": "obj-206",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4220.0,
      560.0,
      160.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "text": "chain_voice_inherit drones"
    }
   },
   {
    "box": {
     "id": "obj-207",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4420.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      248.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "size_2",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "size_2",
       "parameter_shortname": "size",
       "parameter_type": 0,
       "parameter_mmin": 20.0,
       "parameter_mmax": 2000.0,
       "parameter_initial": [
        600.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-208",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4420.0,
      520.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend size"
    }
   },
   {
    "box": {
     "id": "obj-209",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4480.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      296.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "spray_2",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "spray_2",
       "parameter_shortname": "spray",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.1
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-210",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4480.0,
      520.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend spray"
    }
   },
   {
    "box": {
     "id": "obj-211",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4540.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      344.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "pitch_2",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "pitch_2",
       "parameter_shortname": "pitch",
       "parameter_type": 0,
       "parameter_mmin": -24.0,
       "parameter_mmax": 24.0,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-212",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4540.0,
      520.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend pitch"
    }
   },
   {
    "box": {
     "id": "obj-213",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4600.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      392.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "ring_2",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "ring_2",
       "parameter_shortname": "ring",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.85
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-214",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4600.0,
      520.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend ring"
    }
   },
   {
    "box": {
     "id": "obj-215",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4680.0,
      460.0,
      20.0,
      20.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      248.0,
      202.0,
      20.0,
      20.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-216",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      34.0,
      15.0
     ],
     "text": "steps",
     "presentation": 1,
     "presentation_rect": [
      270.0,
      204.0,
      34.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-217",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4680.0,
      430.0,
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
     "id": "obj-218",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4680.0,
      520.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend steps"
    }
   },
   {
    "box": {
     "id": "obj-219",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      7170.0,
      40.0,
      150.0,
      370.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      271.0,
      220.0,
      150.0,
      370.0
     ],
     "name": "chain_strip_tap.maxpat",
     "args": [
      "VOICE2"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-220",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      4220.0,
      600.0,
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
     "id": "obj-221",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4420.0,
      600.0,
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
     "id": "obj-222",
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
     "id": "obj-223",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4460.0,
      600.0,
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
     "id": "obj-224",
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
     "id": "obj-225",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4420.0,
      630.0,
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
     "id": "obj-226",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4460.0,
      630.0,
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
     "id": "obj-227",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4500.0,
      600.0,
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
     "id": "obj-228",
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
     "id": "obj-229",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4500.0,
      570.0,
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
     "id": "obj-230",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4500.0,
      630.0,
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
     "id": "obj-231",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      4500.0,
      660.0,
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
     "id": "obj-232",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4500.0,
      690.0,
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
     "id": "obj-233",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4220.0,
      720.0,
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
     "id": "obj-234",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4220.0,
      750.0,
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
     "id": "obj-235",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4220.0,
      780.0,
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
     "id": "obj-236",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4300.0,
      720.0,
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
     "id": "obj-237",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4300.0,
      750.0,
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
     "id": "obj-238",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4300.0,
      780.0,
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
     "id": "obj-239",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      7170.0,
      520.0,
      150.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ relay_gen_0 2"
    }
   },
   {
    "box": {
     "id": "obj-240",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      7170.0,
      480.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "biquad~"
    }
   },
   {
    "box": {
     "id": "obj-241",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      7240.0,
      480.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "biquad~"
    }
   },
   {
    "box": {
     "id": "obj-242",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4620.0,
      700.0,
      115.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "src: new source",
     "presentation": 1,
     "presentation_rect": [
      336.0,
      618.0,
      112.0,
      18.0
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "id": "obj-243",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4620.0,
      670.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend set"
    }
   },
   {
    "box": {
     "id": "obj-244",
     "maxclass": "meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      8060.0,
      700.0,
      150.0,
      14.0
     ],
     "outlettype": [
      "float"
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
     "id": "obj-245",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      60.0,
      15.0
     ],
     "text": "speaker 2",
     "presentation": 1,
     "presentation_rect": [
      271.0,
      616.0,
      60.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-246",
     "maxclass": "panel",
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
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "mode": 0,
     "rounded": 6,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-247",
     "maxclass": "panel",
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
     "bgcolor": [
      0.72,
      0.58,
      0.9,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-248",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      464.0,
      44.0,
      210.0,
      19.0
     ],
     "text": "PLAYER 3 \u00b7 chanter",
     "presentation": 1,
     "presentation_rect": [
      470.0,
      46.0,
      208.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-249",
     "maxclass": "panel",
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
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-250",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5140.0,
      10.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "== 3"
    }
   },
   {
    "box": {
     "id": "obj-251",
     "maxclass": "led",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5140.0,
      40.0,
      40.0,
      40.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      638.0,
      76.0,
      36.0,
      36.0
     ],
     "oncolor": [
      0.2,
      0.95,
      0.35,
      1.0
     ],
     "parameter_enable": 0,
     "ignoreclick": 1
    }
   },
   {
    "box": {
     "id": "obj-252",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      5200.0,
      60.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "bang",
      ""
     ],
     "text": "sel 1 0"
    }
   },
   {
    "box": {
     "id": "obj-253",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5200.0,
      90.0,
      191.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "bgcolor 0.78 0.95 0.80 1."
    }
   },
   {
    "box": {
     "id": "obj-254",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5200.0,
      120.0,
      191.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "bgcolor 0.96 0.96 0.95 1."
    }
   },
   {
    "box": {
     "id": "obj-255",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      52.0,
      15.0
     ],
     "text": "your turn",
     "presentation": 1,
     "presentation_rect": [
      630.0,
      114.0,
      52.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-256",
     "maxclass": "live.button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5040.0,
      40.0,
      50.0,
      50.0
     ],
     "outlettype": [
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      476.0,
      76.0,
      50.0,
      50.0
     ],
     "parameter_enable": 1,
     "varname": "pass_3",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "pass_3",
       "parameter_shortname": "pass_3",
       "parameter_type": 2,
       "parameter_mmax": 1,
       "parameter_enum": [
        "off",
        "on"
       ]
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-257",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      16.0
     ],
     "text": "PASS",
     "presentation": 1,
     "presentation_rect": [
      486.0,
      128.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-258",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5040.0,
      100.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "text": "t b"
    }
   },
   {
    "box": {
     "id": "obj-259",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5040.0,
      130.0,
      58.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pass 3"
    }
   },
   {
    "box": {
     "id": "obj-260",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5100.0,
      100.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      538.0,
      76.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "twist_3",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "twist_3",
       "parameter_shortname": "twist",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-261",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5100.0,
      160.0,
      121.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend twist 3"
    }
   },
   {
    "box": {
     "id": "obj-262",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4740.0,
      560.0,
      160.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "text": "chain_voice_inherit chanter"
    }
   },
   {
    "box": {
     "id": "obj-263",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4940.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      476.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "size_3",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "size_3",
       "parameter_shortname": "size",
       "parameter_type": 0,
       "parameter_mmin": 20.0,
       "parameter_mmax": 2000.0,
       "parameter_initial": [
        140.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-264",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4940.0,
      520.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend size"
    }
   },
   {
    "box": {
     "id": "obj-265",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5000.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      524.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "spray_3",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "spray_3",
       "parameter_shortname": "spray",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.3
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-266",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5000.0,
      520.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend spray"
    }
   },
   {
    "box": {
     "id": "obj-267",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5060.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      572.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "pitch_3",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "pitch_3",
       "parameter_shortname": "pitch",
       "parameter_type": 0,
       "parameter_mmin": -24.0,
       "parameter_mmax": 24.0,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-268",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5060.0,
      520.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend pitch"
    }
   },
   {
    "box": {
     "id": "obj-269",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5120.0,
      460.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      620.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "ring_3",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "ring_3",
       "parameter_shortname": "ring",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.75
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-270",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5120.0,
      520.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend ring"
    }
   },
   {
    "box": {
     "id": "obj-271",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5200.0,
      460.0,
      20.0,
      20.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      476.0,
      202.0,
      20.0,
      20.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-272",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      34.0,
      15.0
     ],
     "text": "steps",
     "presentation": 1,
     "presentation_rect": [
      498.0,
      204.0,
      34.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-273",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5200.0,
      430.0,
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
     "id": "obj-274",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5200.0,
      520.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend steps"
    }
   },
   {
    "box": {
     "id": "obj-275",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      7340.0,
      40.0,
      150.0,
      370.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      499.0,
      220.0,
      150.0,
      370.0
     ],
     "name": "chain_strip_tap.maxpat",
     "args": [
      "VOICE3"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-276",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      4740.0,
      600.0,
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
     "id": "obj-277",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4940.0,
      600.0,
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
     "id": "obj-278",
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
     "id": "obj-279",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4980.0,
      600.0,
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
     "id": "obj-280",
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
     "id": "obj-281",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4940.0,
      630.0,
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
     "id": "obj-282",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4980.0,
      630.0,
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
     "id": "obj-283",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5020.0,
      600.0,
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
     "id": "obj-284",
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
     "id": "obj-285",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5020.0,
      570.0,
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
     "id": "obj-286",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5020.0,
      630.0,
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
     "id": "obj-287",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      5020.0,
      660.0,
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
     "id": "obj-288",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5020.0,
      690.0,
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
     "id": "obj-289",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4740.0,
      720.0,
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
     "id": "obj-290",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4740.0,
      750.0,
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
     "id": "obj-291",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4740.0,
      780.0,
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
     "id": "obj-292",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4820.0,
      720.0,
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
     "id": "obj-293",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4820.0,
      750.0,
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
     "id": "obj-294",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4820.0,
      780.0,
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
     "id": "obj-295",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      7340.0,
      520.0,
      150.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "record~ relay_gen_0 2"
    }
   },
   {
    "box": {
     "id": "obj-296",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      7340.0,
      480.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "biquad~"
    }
   },
   {
    "box": {
     "id": "obj-297",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      7410.0,
      480.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "biquad~"
    }
   },
   {
    "box": {
     "id": "obj-298",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5140.0,
      700.0,
      115.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "src: new source",
     "presentation": 1,
     "presentation_rect": [
      564.0,
      618.0,
      112.0,
      18.0
     ],
     "fontsize": 9.0
    }
   },
   {
    "box": {
     "id": "obj-299",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5140.0,
      670.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend set"
    }
   },
   {
    "box": {
     "id": "obj-300",
     "maxclass": "meter~",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      8120.0,
      700.0,
      150.0,
      14.0
     ],
     "outlettype": [
      "float"
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
     "id": "obj-301",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      60.0,
      15.0
     ],
     "text": "speaker 3",
     "presentation": 1,
     "presentation_rect": [
      499.0,
      616.0,
      60.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-302",
     "maxclass": "panel",
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
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "mode": 0,
     "rounded": 6,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-303",
     "maxclass": "panel",
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
     "bgcolor": [
      0.45,
      0.8,
      0.7,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-304",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      306.0,
      682.0,
      19.0
     ],
     "text": "ROOM \u00b7 spread across the speakers (L \u00b7 middle \u00b7 R)",
     "presentation": 1,
     "presentation_rect": [
      706.0,
      308.0,
      680.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-305",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      7600.0,
      40.0,
      150.0,
      370.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      334.0,
      150.0,
      370.0
     ],
     "name": "chain_strip.maxpat",
     "args": [
      "SOURCE"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-306",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      7770.0,
      40.0,
      150.0,
      370.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      870.0,
      334.0,
      150.0,
      370.0
     ],
     "name": "chain_strip.maxpat",
     "args": [
      "DDSP"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-307",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      7940.0,
      40.0,
      150.0,
      370.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      1028.0,
      334.0,
      150.0,
      370.0
     ],
     "name": "chain_return.maxpat",
     "args": [
      "REVERB"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-308",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      8110.0,
      40.0,
      150.0,
      370.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      1186.0,
      334.0,
      150.0,
      370.0
     ],
     "name": "chain_return.maxpat",
     "args": [
      "DELAY"
     ],
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "id": "obj-309",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6600.0,
      300.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.3"
    }
   },
   {
    "box": {
     "id": "obj-310",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6660.0,
      300.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.3"
    }
   },
   {
    "box": {
     "id": "obj-311",
     "maxclass": "panel",
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
     "bgcolor": [
      0.96,
      0.96,
      0.95,
      1.0
     ],
     "mode": 0,
     "rounded": 6,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-312",
     "maxclass": "panel",
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
     "bgcolor": [
      0.3,
      0.3,
      0.33,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-313",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      712.0,
      682.0,
      19.0
     ],
     "text": "OUTPUT",
     "presentation": 1,
     "presentation_rect": [
      706.0,
      714.0,
      680.0,
      20.0
     ],
     "textcolor": [
      1,
      1,
      1,
      1
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-314",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      9000.0,
      40.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      712.0,
      740.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "master",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "master",
       "parameter_shortname": "master",
       "parameter_type": 0,
       "parameter_mmin": -70.0,
       "parameter_mmax": 6.0,
       "parameter_initial": [
        -6.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-315",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      9060.0,
      40.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      764.0,
      740.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "room",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "room",
       "parameter_shortname": "room",
       "parameter_type": 0,
       "parameter_mmin": -70.0,
       "parameter_mmax": 6.0,
       "parameter_initial": [
        -6.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 4
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-316",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      9000.0,
      100.0,
      51.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "dbtoa"
    }
   },
   {
    "box": {
     "id": "obj-317",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      9000.0,
      130.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pack 0. 30"
    }
   },
   {
    "box": {
     "id": "obj-318",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      9000.0,
      160.0,
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
     "id": "obj-319",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      9060.0,
      70.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess -6"
    }
   },
   {
    "box": {
     "id": "obj-320",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      9140.0,
      100.0,
      51.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "dbtoa"
    }
   },
   {
    "box": {
     "id": "obj-321",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      9140.0,
      130.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pack 0. 30"
    }
   },
   {
    "box": {
     "id": "obj-322",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      9140.0,
      160.0,
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
     "id": "obj-323",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      9200.0,
      70.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess -6"
    }
   },
   {
    "box": {
     "id": "obj-324",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      9280.0,
      200.0,
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
      9340.0,
      200.0,
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
      9280.0,
      230.0,
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
     "numoutlets": 1,
     "patching_rect": [
      9280.0,
      260.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.5"
    }
   },
   {
    "box": {
     "id": "obj-328",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      9600.0,
      40.0,
      30.0,
      30.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      6.0,
      30.0,
      30.0
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
      110.0,
      34.0
     ],
     "text": "STOP ALL AUDIO\n(Esc)",
     "presentation": 1,
     "presentation_rect": [
      1184.0,
      8.0,
      110.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-330",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      9600.0,
      10.0,
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
     "id": "obj-331",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 4,
     "patching_rect": [
      9660.0,
      10.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "int",
      "int",
      "int",
      "int"
     ],
     "text": "key"
    }
   },
   {
    "box": {
     "id": "obj-332",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      9660.0,
      40.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "bang",
      ""
     ],
     "text": "sel 27"
    }
   },
   {
    "box": {
     "id": "obj-333",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      9600.0,
      80.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "== 0"
    }
   },
   {
    "box": {
     "id": "obj-334",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      9600.0,
      110.0,
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
     "id": "obj-335",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      9700.0,
      80.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 1."
    }
   },
   {
    "box": {
     "id": "obj-336",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      9600.0,
      140.0,
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
     "id": "obj-337",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      9800.0,
      40.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      820.0,
      742.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-338",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      110.0,
      30.0
     ],
     "text": "headphones mode\n(all to outs 1/2)",
     "presentation": 1,
     "presentation_rect": [
      846.0,
      744.0,
      110.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-339",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      9800.0,
      10.0,
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
     "id": "obj-340",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      9800.0,
      80.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "== 0"
    }
   },
   {
    "box": {
     "id": "obj-341",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      9800.0,
      110.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pack 0. 30"
    }
   },
   {
    "box": {
     "id": "obj-342",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      9800.0,
      140.0,
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
     "id": "obj-343",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      9900.0,
      80.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 1."
    }
   },
   {
    "box": {
     "id": "obj-344",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      9860.0,
      110.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pack 0. 30"
    }
   },
   {
    "box": {
     "id": "obj-345",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      9860.0,
      140.0,
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
     "id": "obj-346",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10000.0,
      200.0,
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
     "id": "obj-347",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10000.0,
      230.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.5"
    }
   },
   {
    "box": {
     "id": "obj-348",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10000.0,
      260.0,
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
     "id": "obj-349",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10000.0,
      300.0,
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
     "id": "obj-350",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      10000.0,
      330.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "tanh~"
    }
   },
   {
    "box": {
     "id": "obj-351",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10000.0,
      360.0,
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
     "id": "obj-352",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10000.0,
      390.0,
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
     "id": "obj-353",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10120.0,
      200.0,
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
     "id": "obj-354",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10120.0,
      230.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.5"
    }
   },
   {
    "box": {
     "id": "obj-355",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10120.0,
      260.0,
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
     "id": "obj-356",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10120.0,
      300.0,
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
     "id": "obj-357",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      10120.0,
      330.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "tanh~"
    }
   },
   {
    "box": {
     "id": "obj-358",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10120.0,
      360.0,
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
     "id": "obj-359",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10120.0,
      390.0,
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
      10240.0,
      200.0,
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
     "id": "obj-361",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10240.0,
      230.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.5"
    }
   },
   {
    "box": {
     "id": "obj-362",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10240.0,
      260.0,
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
     "id": "obj-363",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10240.0,
      300.0,
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
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      10240.0,
      330.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "tanh~"
    }
   },
   {
    "box": {
     "id": "obj-365",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10240.0,
      360.0,
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
     "id": "obj-366",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10240.0,
      390.0,
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
     "id": "obj-367",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 0,
     "patching_rect": [
      10000.0,
      460.0,
      120.0,
      22.0
     ],
     "text": "dac~ 1 2 3"
    }
   },
   {
    "box": {
     "id": "obj-368",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      110.0,
      30.0
     ],
     "text": "speaker outputs\nfor players 1 \u00b7 2 \u00b7 3",
     "presentation": 1,
     "presentation_rect": [
      968.0,
      738.0,
      110.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-369",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      10000.0,
      420.0,
      36.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1080.0,
      744.0,
      36.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-370",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      10000.0,
      390.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 1"
    }
   },
   {
    "box": {
     "id": "obj-371",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      10050.0,
      420.0,
      36.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1120.0,
      744.0,
      36.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-372",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      10050.0,
      390.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 2"
    }
   },
   {
    "box": {
     "id": "obj-373",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      10100.0,
      420.0,
      36.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1160.0,
      744.0,
      36.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-374",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      10100.0,
      390.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 3"
    }
   },
   {
    "box": {
     "id": "obj-375",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      10000.0,
      445.0,
      79.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pak 1 2 3"
    }
   },
   {
    "box": {
     "id": "obj-376",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      10150.0,
      445.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend set"
    }
   },
   {
    "box": {
     "id": "obj-377",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10400.0,
      200.0,
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
     "id": "obj-378",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10460.0,
      200.0,
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
     "id": "obj-379",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10400.0,
      300.0,
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
     "id": "obj-380",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      10400.0,
      330.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "tanh~"
    }
   },
   {
    "box": {
     "id": "obj-381",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10400.0,
      360.0,
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
     "id": "obj-382",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10400.0,
      390.0,
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
     "id": "obj-383",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10460.0,
      300.0,
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
     "id": "obj-384",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      10460.0,
      330.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "tanh~"
    }
   },
   {
    "box": {
     "id": "obj-385",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10460.0,
      360.0,
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
     "id": "obj-386",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10460.0,
      390.0,
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
     "id": "obj-387",
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
     "id": "obj-388",
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
     "id": "obj-389",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      15.0
     ],
     "text": "audio on/off",
     "presentation": 1,
     "presentation_rect": [
      1206.0,
      778.0,
      70.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-390",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10600.0,
      400.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "sfrecord~ 2"
    }
   },
   {
    "box": {
     "id": "obj-391",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      10600.0,
      360.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1290.0,
      740.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-392",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      60.0,
      15.0
     ],
     "text": "rec file",
     "presentation": 1,
     "presentation_rect": [
      1316.0,
      742.0,
      60.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-393",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      10600.0,
      330.0,
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
     "id": "obj-394",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      10640.0,
      360.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1290.0,
      766.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-395",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      16.0
     ],
     "text": "REC",
     "presentation": 1,
     "presentation_rect": [
      1316.0,
      768.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-396",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8300.0,
      440.0,
      120.0,
      22.0
     ],
     "text": "js chain_solo.js"
    }
   },
   {
    "box": {
     "id": "obj-397",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      8300.0,
      410.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r chain_solo"
    }
   },
   {
    "box": {
     "id": "obj-398",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      8800.0,
      400.0,
      72.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "text": "loadbang"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-4",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-10",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-10",
      0
     ],
     "destination": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      0
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      1
     ],
     "destination": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      5
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-16",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      3
     ],
     "destination": [
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-18",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-25",
      0
     ],
     "destination": [
      "obj-24",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
      0
     ],
     "destination": [
      "obj-27",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-32",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      0
     ],
     "destination": [
      "obj-33",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-33",
      0
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-34",
      0
     ],
     "destination": [
      "obj-35",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-35",
      0
     ],
     "destination": [
      "obj-36",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-26",
      0
     ],
     "destination": [
      "obj-34",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-27",
      0
     ],
     "destination": [
      "obj-34",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-24",
      1
     ],
     "destination": [
      "obj-37",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-34",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
      2
     ],
     "destination": [
      "obj-39",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      0
     ],
     "destination": [
      "obj-40",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
      1
     ],
     "destination": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      0
     ],
     "destination": [
      "obj-40",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-40",
      1
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
      0
     ],
     "destination": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-45",
      0
     ],
     "destination": [
      "obj-44",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      0
     ],
     "destination": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-44",
      0
     ],
     "destination": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-47",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-50",
      0
     ],
     "destination": [
      "obj-48",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-48",
      0
     ],
     "destination": [
      "obj-51",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-51",
      0
     ],
     "destination": [
      "obj-52",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-46",
      0
     ],
     "destination": [
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-46",
      1
     ],
     "destination": [
      "obj-54",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-52",
      0
     ],
     "destination": [
      "obj-53",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-52",
      0
     ],
     "destination": [
      "obj-54",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      0
     ],
     "destination": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-57",
      0
     ],
     "destination": [
      "obj-58",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-58",
      0
     ],
     "destination": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-59",
      0
     ],
     "destination": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-57",
      0
     ],
     "destination": [
      "obj-60",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-60",
      0
     ],
     "destination": [
      "obj-56",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-61",
      0
     ],
     "destination": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-62",
      0
     ],
     "destination": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-63",
      0
     ],
     "destination": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-64",
      0
     ],
     "destination": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-65",
      0
     ],
     "destination": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-67",
      0
     ],
     "destination": [
      "obj-66",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      0
     ],
     "destination": [
      "obj-69",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-70",
      0
     ],
     "destination": [
      "obj-72",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-72",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-74",
      0
     ],
     "destination": [
      "obj-73",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-73",
      0
     ],
     "destination": [
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-77",
      0
     ],
     "destination": [
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      3
     ],
     "destination": [
      "obj-80",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      2
     ],
     "destination": [
      "obj-82",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      3
     ],
     "destination": [
      "obj-84",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-84",
      0
     ],
     "destination": [
      "obj-83",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-88",
      0
     ],
     "destination": [
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-92",
      0
     ],
     "destination": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-90",
      0
     ],
     "destination": [
      "obj-93",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-93",
      0
     ],
     "destination": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-94",
      0
     ],
     "destination": [
      "obj-98",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-98",
      0
     ],
     "destination": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-96",
      0
     ],
     "destination": [
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-99",
      0
     ],
     "destination": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-101",
      0
     ],
     "destination": [
      "obj-104",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-102",
      0
     ],
     "destination": [
      "obj-105",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-111",
      0
     ],
     "destination": [
      "obj-110",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-113",
      0
     ],
     "destination": [
      "obj-112",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      2
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-106",
      1
     ],
     "destination": [
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-107",
      0
     ],
     "destination": [
      "obj-108",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-106",
      0
     ],
     "destination": [
      "obj-109",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-109",
      0
     ],
     "destination": [
      "obj-112",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-110",
      0
     ],
     "destination": [
      "obj-112",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-106",
      0
     ],
     "destination": [
      "obj-114",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-114",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      1
     ],
     "destination": [
      "obj-116",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-116",
      0
     ],
     "destination": [
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-118",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-118",
      0
     ],
     "destination": [
      "obj-117",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-117",
      0
     ],
     "destination": [
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-115",
      0
     ],
     "destination": [
      "obj-119",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-119",
      0
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-119",
      1
     ],
     "destination": [
      "obj-121",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-119",
      2
     ],
     "destination": [
      "obj-122",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-119",
      3
     ],
     "destination": [
      "obj-123",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-123",
      0
     ],
     "destination": [
      "obj-124",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-123",
      1
     ],
     "destination": [
      "obj-125",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-123",
      2
     ],
     "destination": [
      "obj-126",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-123",
      3
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-129",
      0
     ],
     "destination": [
      "obj-128",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-132",
      0
     ],
     "destination": [
      "obj-130",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-130",
      0
     ],
     "destination": [
      "obj-133",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      0
     ],
     "destination": [
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      4
     ],
     "destination": [
      "obj-138",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-138",
      0
     ],
     "destination": [
      "obj-139",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-138",
      0
     ],
     "destination": [
      "obj-140",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-140",
      0
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-140",
      1
     ],
     "destination": [
      "obj-142",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-141",
      0
     ],
     "destination": [
      "obj-137",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-142",
      0
     ],
     "destination": [
      "obj-137",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-144",
      0
     ],
     "destination": [
      "obj-146",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-146",
      0
     ],
     "destination": [
      "obj-147",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-147",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-148",
      0
     ],
     "destination": [
      "obj-149",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-149",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      0
     ],
     "destination": [
      "obj-150",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-151",
      0
     ],
     "destination": [
      "obj-152",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-152",
      0
     ],
     "destination": [
      "obj-150",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-153",
      0
     ],
     "destination": [
      "obj-154",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-154",
      0
     ],
     "destination": [
      "obj-150",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-155",
      0
     ],
     "destination": [
      "obj-156",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-156",
      0
     ],
     "destination": [
      "obj-150",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-157",
      0
     ],
     "destination": [
      "obj-158",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-158",
      0
     ],
     "destination": [
      "obj-150",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-161",
      0
     ],
     "destination": [
      "obj-159",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-159",
      0
     ],
     "destination": [
      "obj-162",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-162",
      0
     ],
     "destination": [
      "obj-150",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-150",
      0
     ],
     "destination": [
      "obj-164",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-150",
      1
     ],
     "destination": [
      "obj-164",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-165",
      0
     ],
     "destination": [
      "obj-169",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-169",
      0
     ],
     "destination": [
      "obj-164",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-167",
      0
     ],
     "destination": [
      "obj-170",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-170",
      0
     ],
     "destination": [
      "obj-164",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-173",
      0
     ],
     "destination": [
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-171",
      0
     ],
     "destination": [
      "obj-174",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-174",
      0
     ],
     "destination": [
      "obj-175",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-175",
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
      "obj-150",
      0
     ],
     "destination": [
      "obj-177",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-176",
      0
     ],
     "destination": [
      "obj-177",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-164",
      0
     ],
     "destination": [
      "obj-178",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-175",
      0
     ],
     "destination": [
      "obj-178",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-177",
      0
     ],
     "destination": [
      "obj-179",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-178",
      0
     ],
     "destination": [
      "obj-179",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-179",
      0
     ],
     "destination": [
      "obj-163",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-150",
      1
     ],
     "destination": [
      "obj-180",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-176",
      0
     ],
     "destination": [
      "obj-180",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-164",
      1
     ],
     "destination": [
      "obj-181",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-175",
      0
     ],
     "destination": [
      "obj-181",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-180",
      0
     ],
     "destination": [
      "obj-182",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-181",
      0
     ],
     "destination": [
      "obj-182",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-182",
      0
     ],
     "destination": [
      "obj-163",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      6
     ],
     "destination": [
      "obj-184",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      0
     ],
     "destination": [
      "obj-184",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      1
     ],
     "destination": [
      "obj-184",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      2
     ],
     "destination": [
      "obj-184",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      3
     ],
     "destination": [
      "obj-184",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      4
     ],
     "destination": [
      "obj-184",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-184",
      0
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      7
     ],
     "destination": [
      "obj-185",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      0
     ],
     "destination": [
      "obj-185",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      1
     ],
     "destination": [
      "obj-185",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      2
     ],
     "destination": [
      "obj-185",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      3
     ],
     "destination": [
      "obj-185",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      4
     ],
     "destination": [
      "obj-185",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-185",
      0
     ],
     "destination": [
      "obj-183",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-122",
      0
     ],
     "destination": [
      "obj-183",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      0
     ],
     "destination": [
      "obj-150",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-121",
      0
     ],
     "destination": [
      "obj-187",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-187",
      0
     ],
     "destination": [
      "obj-186",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      4
     ],
     "destination": [
      "obj-194",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-194",
      0
     ],
     "destination": [
      "obj-195",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-194",
      0
     ],
     "destination": [
      "obj-196",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-196",
      0
     ],
     "destination": [
      "obj-197",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-196",
      1
     ],
     "destination": [
      "obj-198",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-197",
      0
     ],
     "destination": [
      "obj-193",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-198",
      0
     ],
     "destination": [
      "obj-193",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-200",
      0
     ],
     "destination": [
      "obj-202",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-202",
      0
     ],
     "destination": [
      "obj-203",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-203",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-204",
      0
     ],
     "destination": [
      "obj-205",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-205",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      1
     ],
     "destination": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-207",
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
      "obj-208",
      0
     ],
     "destination": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-209",
      0
     ],
     "destination": [
      "obj-210",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-210",
      0
     ],
     "destination": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-211",
      0
     ],
     "destination": [
      "obj-212",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-212",
      0
     ],
     "destination": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-213",
      0
     ],
     "destination": [
      "obj-214",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-214",
      0
     ],
     "destination": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-217",
      0
     ],
     "destination": [
      "obj-215",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-215",
      0
     ],
     "destination": [
      "obj-218",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-218",
      0
     ],
     "destination": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-206",
      0
     ],
     "destination": [
      "obj-220",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-206",
      1
     ],
     "destination": [
      "obj-220",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-221",
      0
     ],
     "destination": [
      "obj-225",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-225",
      0
     ],
     "destination": [
      "obj-220",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-223",
      0
     ],
     "destination": [
      "obj-226",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-226",
      0
     ],
     "destination": [
      "obj-220",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-229",
      0
     ],
     "destination": [
      "obj-227",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-227",
      0
     ],
     "destination": [
      "obj-230",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-230",
      0
     ],
     "destination": [
      "obj-231",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-231",
      0
     ],
     "destination": [
      "obj-232",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-206",
      0
     ],
     "destination": [
      "obj-233",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-232",
      0
     ],
     "destination": [
      "obj-233",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      0
     ],
     "destination": [
      "obj-234",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-231",
      0
     ],
     "destination": [
      "obj-234",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-233",
      0
     ],
     "destination": [
      "obj-235",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-234",
      0
     ],
     "destination": [
      "obj-235",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-235",
      0
     ],
     "destination": [
      "obj-219",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-206",
      1
     ],
     "destination": [
      "obj-236",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-232",
      0
     ],
     "destination": [
      "obj-236",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-220",
      1
     ],
     "destination": [
      "obj-237",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-231",
      0
     ],
     "destination": [
      "obj-237",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-236",
      0
     ],
     "destination": [
      "obj-238",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-237",
      0
     ],
     "destination": [
      "obj-238",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-238",
      0
     ],
     "destination": [
      "obj-219",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      6
     ],
     "destination": [
      "obj-240",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      0
     ],
     "destination": [
      "obj-240",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      1
     ],
     "destination": [
      "obj-240",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      2
     ],
     "destination": [
      "obj-240",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      3
     ],
     "destination": [
      "obj-240",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      4
     ],
     "destination": [
      "obj-240",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-240",
      0
     ],
     "destination": [
      "obj-239",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      7
     ],
     "destination": [
      "obj-241",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      0
     ],
     "destination": [
      "obj-241",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      1
     ],
     "destination": [
      "obj-241",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      2
     ],
     "destination": [
      "obj-241",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      3
     ],
     "destination": [
      "obj-241",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      4
     ],
     "destination": [
      "obj-241",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-241",
      0
     ],
     "destination": [
      "obj-239",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-122",
      1
     ],
     "destination": [
      "obj-239",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      1
     ],
     "destination": [
      "obj-206",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-121",
      1
     ],
     "destination": [
      "obj-243",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-243",
      0
     ],
     "destination": [
      "obj-242",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      4
     ],
     "destination": [
      "obj-250",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-250",
      0
     ],
     "destination": [
      "obj-251",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-250",
      0
     ],
     "destination": [
      "obj-252",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-252",
      0
     ],
     "destination": [
      "obj-253",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-252",
      1
     ],
     "destination": [
      "obj-254",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-253",
      0
     ],
     "destination": [
      "obj-249",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-254",
      0
     ],
     "destination": [
      "obj-249",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-256",
      0
     ],
     "destination": [
      "obj-258",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-258",
      0
     ],
     "destination": [
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-259",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-260",
      0
     ],
     "destination": [
      "obj-261",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-261",
      0
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      2
     ],
     "destination": [
      "obj-262",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-263",
      0
     ],
     "destination": [
      "obj-264",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-264",
      0
     ],
     "destination": [
      "obj-262",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-265",
      0
     ],
     "destination": [
      "obj-266",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-266",
      0
     ],
     "destination": [
      "obj-262",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-267",
      0
     ],
     "destination": [
      "obj-268",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-268",
      0
     ],
     "destination": [
      "obj-262",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-269",
      0
     ],
     "destination": [
      "obj-270",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-270",
      0
     ],
     "destination": [
      "obj-262",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-273",
      0
     ],
     "destination": [
      "obj-271",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-271",
      0
     ],
     "destination": [
      "obj-274",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-274",
      0
     ],
     "destination": [
      "obj-262",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-262",
      0
     ],
     "destination": [
      "obj-276",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-262",
      1
     ],
     "destination": [
      "obj-276",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-277",
      0
     ],
     "destination": [
      "obj-281",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-281",
      0
     ],
     "destination": [
      "obj-276",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-279",
      0
     ],
     "destination": [
      "obj-282",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-282",
      0
     ],
     "destination": [
      "obj-276",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-285",
      0
     ],
     "destination": [
      "obj-283",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-283",
      0
     ],
     "destination": [
      "obj-286",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-286",
      0
     ],
     "destination": [
      "obj-287",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-287",
      0
     ],
     "destination": [
      "obj-288",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-262",
      0
     ],
     "destination": [
      "obj-289",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-288",
      0
     ],
     "destination": [
      "obj-289",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-276",
      0
     ],
     "destination": [
      "obj-290",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-287",
      0
     ],
     "destination": [
      "obj-290",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-289",
      0
     ],
     "destination": [
      "obj-291",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-290",
      0
     ],
     "destination": [
      "obj-291",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-291",
      0
     ],
     "destination": [
      "obj-275",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-262",
      1
     ],
     "destination": [
      "obj-292",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-288",
      0
     ],
     "destination": [
      "obj-292",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-276",
      1
     ],
     "destination": [
      "obj-293",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-287",
      0
     ],
     "destination": [
      "obj-293",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-292",
      0
     ],
     "destination": [
      "obj-294",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-293",
      0
     ],
     "destination": [
      "obj-294",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-294",
      0
     ],
     "destination": [
      "obj-275",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-275",
      6
     ],
     "destination": [
      "obj-296",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      0
     ],
     "destination": [
      "obj-296",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      1
     ],
     "destination": [
      "obj-296",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      2
     ],
     "destination": [
      "obj-296",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      3
     ],
     "destination": [
      "obj-296",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      4
     ],
     "destination": [
      "obj-296",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-296",
      0
     ],
     "destination": [
      "obj-295",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-275",
      7
     ],
     "destination": [
      "obj-297",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      0
     ],
     "destination": [
      "obj-297",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      1
     ],
     "destination": [
      "obj-297",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      2
     ],
     "destination": [
      "obj-297",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      3
     ],
     "destination": [
      "obj-297",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-128",
      4
     ],
     "destination": [
      "obj-297",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-297",
      0
     ],
     "destination": [
      "obj-295",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-122",
      2
     ],
     "destination": [
      "obj-295",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      2
     ],
     "destination": [
      "obj-262",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-121",
      2
     ],
     "destination": [
      "obj-299",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-299",
      0
     ],
     "destination": [
      "obj-298",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-53",
      0
     ],
     "destination": [
      "obj-305",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      0
     ],
     "destination": [
      "obj-305",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-112",
      0
     ],
     "destination": [
      "obj-306",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-112",
      0
     ],
     "destination": [
      "obj-306",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-86",
      0
     ],
     "destination": [
      "obj-307",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-86",
      1
     ],
     "destination": [
      "obj-307",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-87",
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
      "obj-87",
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
      "obj-163",
      2
     ],
     "destination": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      3
     ],
     "destination": [
      "obj-86",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      4
     ],
     "destination": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-163",
      5
     ],
     "destination": [
      "obj-87",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      2
     ],
     "destination": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      3
     ],
     "destination": [
      "obj-86",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      4
     ],
     "destination": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      5
     ],
     "destination": [
      "obj-87",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-275",
      2
     ],
     "destination": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-275",
      3
     ],
     "destination": [
      "obj-86",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-275",
      4
     ],
     "destination": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-275",
      5
     ],
     "destination": [
      "obj-87",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-305",
      2
     ],
     "destination": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-305",
      3
     ],
     "destination": [
      "obj-86",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-305",
      4
     ],
     "destination": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-305",
      5
     ],
     "destination": [
      "obj-87",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      2
     ],
     "destination": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      3
     ],
     "destination": [
      "obj-86",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      4
     ],
     "destination": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-306",
      5
     ],
     "destination": [
      "obj-87",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-87",
      0
     ],
     "destination": [
      "obj-309",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-87",
      1
     ],
     "destination": [
      "obj-310",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-100",
      0
     ],
     "destination": [
      "obj-309",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-100",
      0
     ],
     "destination": [
      "obj-310",
      1
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
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-310",
      0
     ],
     "destination": [
      "obj-86",
      1
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
      "obj-316",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-316",
      0
     ],
     "destination": [
      "obj-317",
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
      "obj-318",
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
      "obj-316",
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
      "obj-320",
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
      0
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
      "obj-322",
      0
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
      "obj-320",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-305",
      0
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
      "obj-305",
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
      "obj-306",
      0
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
      "obj-306",
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
      "obj-307",
      0
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
      "obj-307",
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
      "obj-308",
      0
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
      "obj-322",
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
      "obj-322",
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
      "obj-328",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-331",
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
      "obj-328",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-335",
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
      "obj-328",
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
      "obj-336",
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
      "obj-337",
      0
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
      "obj-341",
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
      "obj-340",
      0
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
      "obj-341",
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
      "obj-344",
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
      "obj-346",
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
      "obj-346",
      1
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
      "obj-347",
      0
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
      "obj-348",
      0
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
      "obj-348",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-348",
      0
     ],
     "destination": [
      "obj-349",
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
      "obj-349",
      1
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
      "obj-350",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-350",
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
      "obj-336",
      0
     ],
     "destination": [
      "obj-351",
      1
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
      "obj-352",
      0
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
      "obj-352",
      1
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
      "obj-188",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
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
      "obj-219",
      1
     ],
     "destination": [
      "obj-353",
      1
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
      "obj-354",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-354",
      0
     ],
     "destination": [
      "obj-355",
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
      "obj-355",
      1
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
      "obj-356",
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
      "obj-356",
      1
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
      "obj-336",
      0
     ],
     "destination": [
      "obj-358",
      1
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
      0
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
      "obj-359",
      1
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
      "obj-244",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-275",
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
      "obj-275",
      1
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
      "obj-360",
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
      "obj-361",
      0
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
      "obj-325",
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
      "obj-362",
      0
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
      "obj-318",
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
      "obj-363",
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
      "obj-364",
      0
     ],
     "destination": [
      "obj-365",
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
      "obj-365",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-365",
      0
     ],
     "destination": [
      "obj-366",
      0
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
      "obj-366",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-365",
      0
     ],
     "destination": [
      "obj-300",
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
      "obj-367",
      0
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
      "obj-367",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-366",
      0
     ],
     "destination": [
      "obj-367",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-370",
      0
     ],
     "destination": [
      "obj-369",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-372",
      0
     ],
     "destination": [
      "obj-371",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-374",
      0
     ],
     "destination": [
      "obj-373",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-369",
      0
     ],
     "destination": [
      "obj-375",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-371",
      0
     ],
     "destination": [
      "obj-375",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-373",
      0
     ],
     "destination": [
      "obj-375",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-375",
      0
     ],
     "destination": [
      "obj-376",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-376",
      0
     ],
     "destination": [
      "obj-367",
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
      "obj-377",
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
      "obj-378",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      0
     ],
     "destination": [
      "obj-377",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-219",
      1
     ],
     "destination": [
      "obj-378",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-275",
      0
     ],
     "destination": [
      "obj-377",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-275",
      1
     ],
     "destination": [
      "obj-378",
      0
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
      "obj-377",
      1
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
      "obj-378",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-377",
      0
     ],
     "destination": [
      "obj-379",
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
      "obj-379",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-379",
      0
     ],
     "destination": [
      "obj-380",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-380",
      0
     ],
     "destination": [
      "obj-381",
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
      "obj-381",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-381",
      0
     ],
     "destination": [
      "obj-382",
      0
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
      "obj-382",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-378",
      0
     ],
     "destination": [
      "obj-383",
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
      "obj-383",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-383",
      0
     ],
     "destination": [
      "obj-384",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-384",
      0
     ],
     "destination": [
      "obj-385",
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
      "obj-385",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-385",
      0
     ],
     "destination": [
      "obj-386",
      0
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
      "obj-386",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-382",
      0
     ],
     "destination": [
      "obj-387",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-386",
      0
     ],
     "destination": [
      "obj-387",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-381",
      0
     ],
     "destination": [
      "obj-390",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-385",
      0
     ],
     "destination": [
      "obj-390",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-391",
      0
     ],
     "destination": [
      "obj-393",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-393",
      0
     ],
     "destination": [
      "obj-390",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-394",
      0
     ],
     "destination": [
      "obj-390",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-397",
      0
     ],
     "destination": [
      "obj-396",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-26",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-77",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-100",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-102",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-148",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-151",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-153",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-155",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-157",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-204",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-207",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-209",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-211",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-213",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-260",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-263",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-265",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-267",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      0
     ],
     "destination": [
      "obj-269",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
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
      "obj-398",
      0
     ],
     "destination": [
      "obj-315",
      0
     ]
    }
   }
  ],
  "parameters": {
   "obj-22": [
    "new_source",
    "new_source",
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
   "obj-144": [
    "pass_1",
    "pass_1",
    0
   ],
   "obj-148": [
    "twist_1",
    "twist",
    0
   ],
   "obj-151": [
    "size_1",
    "size",
    0
   ],
   "obj-153": [
    "spray_1",
    "spray",
    0
   ],
   "obj-155": [
    "pitch_1",
    "pitch",
    0
   ],
   "obj-157": [
    "ring_1",
    "ring",
    0
   ],
   "obj-200": [
    "pass_2",
    "pass_2",
    0
   ],
   "obj-204": [
    "twist_2",
    "twist",
    0
   ],
   "obj-207": [
    "size_2",
    "size",
    0
   ],
   "obj-209": [
    "spray_2",
    "spray",
    0
   ],
   "obj-211": [
    "pitch_2",
    "pitch",
    0
   ],
   "obj-213": [
    "ring_2",
    "ring",
    0
   ],
   "obj-256": [
    "pass_3",
    "pass_3",
    0
   ],
   "obj-260": [
    "twist_3",
    "twist",
    0
   ],
   "obj-263": [
    "size_3",
    "size",
    0
   ],
   "obj-265": [
    "spray_3",
    "spray",
    0
   ],
   "obj-267": [
    "pitch_3",
    "pitch",
    0
   ],
   "obj-269": [
    "ring_3",
    "ring",
    0
   ],
   "obj-314": [
    "master",
    "master",
    0
   ],
   "obj-315": [
    "room",
    "room",
    0
   ]
  }
 }
}