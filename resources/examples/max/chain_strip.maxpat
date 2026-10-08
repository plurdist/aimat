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
   100.0,
   100.0,
   1000.0,
   700.0
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
      600.0,
      150.0,
      370.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      150.0,
      370.0
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
     "id": "obj-2",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      560.0,
      150.0,
      26.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      150.0,
      26.0
     ],
     "bgcolor": [
      0.62,
      0.62,
      0.66,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
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
      530.0,
      140.0,
      19.0
     ],
     "text": "strip",
     "presentation": 1,
     "presentation_rect": [
      6.0,
      3.0,
      138.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-4",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      160.0,
      530.0,
      121.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess set #1"
    }
   },
   {
    "box": {
     "id": "obj-5",
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      10.0,
      30.0,
      30.0
     ],
     "outlettype": [
      "signal"
     ],
     "comment": "left",
     "index": 1
    }
   },
   {
    "box": {
     "id": "obj-6",
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      500.0,
      10.0,
      30.0,
      30.0
     ],
     "outlettype": [
      "signal"
     ],
     "comment": "right",
     "index": 2
    }
   },
   {
    "box": {
     "id": "obj-7",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 9,
     "patching_rect": [
      250.0,
      90.0,
      130.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "text": "js chain_strip.js"
    }
   },
   {
    "box": {
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      250.0,
      30.0,
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
     "id": "obj-9",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      250.0,
      60.0,
      79.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "text": "metro 100"
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "live.gain~",
     "numinlets": 2,
     "numoutlets": 5,
     "patching_rect": [
      250.0,
      240.0,
      48.0,
      150.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "",
      "float",
      "list"
     ],
     "presentation": 1,
     "presentation_rect": [
      51.0,
      214.0,
      48.0,
      150.0
     ],
     "channels": 2,
     "lastchannelcount": 0,
     "orientation": 0,
     "parameter_enable": 1,
     "showname": 0,
     "varname": "level",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "level",
       "parameter_shortname": "level",
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
     "id": "obj-11",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 5,
     "patching_rect": [
      250.0,
      150.0,
      130.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "filtercoeff~ lowpass"
    }
   },
   {
    "box": {
     "id": "obj-12",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      60.0,
      107.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "overdrive~ 1."
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      90.0,
      114.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "degrade~ 1. 24"
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      20.0,
      120.0,
      107.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "text": "freqshift~ 0."
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      20.0,
      180.0,
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
     "id": "obj-16",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      500.0,
      60.0,
      107.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "overdrive~ 1."
    }
   },
   {
    "box": {
     "id": "obj-17",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      500.0,
      90.0,
      114.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "degrade~ 1. 24"
    }
   },
   {
    "box": {
     "id": "obj-18",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      500.0,
      120.0,
      107.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "text": "freqshift~ 0."
    }
   },
   {
    "box": {
     "id": "obj-19",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "patching_rect": [
      500.0,
      180.0,
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
     "id": "obj-20",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      700.0,
      30.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      6.0,
      32.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "drive",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "drive",
       "parameter_shortname": "drive",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      260.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend drive"
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      760.0,
      30.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      54.0,
      32.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "crush",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "crush",
       "parameter_shortname": "crush",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      760.0,
      260.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend crush"
    }
   },
   {
    "box": {
     "id": "obj-24",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      820.0,
      30.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      102.0,
      32.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "shift",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "shift",
       "parameter_shortname": "shift",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-25",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      820.0,
      260.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend shift"
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      700.0,
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
      6.0,
      90.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "filter",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "filter",
       "parameter_shortname": "LP\u00b7filter\u00b7HP",
       "parameter_type": 0,
       "parameter_mmin": -1.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0
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
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      290.0,
      114.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend filter"
    }
   },
   {
    "box": {
     "id": "obj-28",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      760.0,
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
      54.0,
      90.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "reso",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "reso",
       "parameter_shortname": "reso",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-29",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      760.0,
      290.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend reso"
    }
   },
   {
    "box": {
     "id": "obj-30",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      820.0,
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
      102.0,
      90.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "evolve",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "evolve",
       "parameter_shortname": "evolve",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0
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
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      820.0,
      290.0,
      114.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend evolve"
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      700.0,
      170.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      6.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "rev",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "rev",
       "parameter_shortname": "reverb",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.0,
       "parameter_initial": [
        0.2
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      320.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend rev"
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      760.0,
      170.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      54.0,
      148.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "dly",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "dly",
       "parameter_shortname": "delay",
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
     "id": "obj-35",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      760.0,
      320.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend dly"
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      700.0,
      330.0,
      42.0,
      15.0
     ],
     "text": "sends",
     "presentation": 1,
     "presentation_rect": [
      6.0,
      198.0,
      42.0,
      14.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      360.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r chain_wash"
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      700.0,
      388.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend wash"
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      800.0,
      360.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r chain_echo"
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      800.0,
      388.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend echo"
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      400.0,
      240.0,
      20.0,
      20.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      112.0,
      158.0,
      20.0,
      20.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      430.0,
      240.0,
      40.0,
      16.0
     ],
     "text": "mute",
     "presentation": 1,
     "presentation_rect": [
      106.0,
      180.0,
      40.0,
      16.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      400.0,
      270.0,
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
     "id": "obj-44",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      250.0,
      420.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 1."
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      310.0,
      420.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 1."
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      460.0,
      240.0,
      20.0,
      20.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      112.0,
      214.0,
      20.0,
      20.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      490.0,
      240.0,
      40.0,
      16.0
     ],
     "text": "solo",
     "presentation": 1,
     "presentation_rect": [
      106.0,
      236.0,
      40.0,
      16.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      460.0,
      210.0,
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
     "id": "obj-49",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      210.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r #1_soloui"
    }
   },
   {
    "box": {
     "id": "obj-50",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      460.0,
      270.0,
      121.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend solo #1"
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      460.0,
      300.0,
      100.0,
      22.0
     ],
     "text": "s chain_solo"
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      300.0,
      79.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r #1_gate"
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      560.0,
      330.0,
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
     "id": "obj-54",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      660.0,
      300.0,
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
     "id": "obj-55",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      560.0,
      360.0,
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
     "id": "obj-56",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      250.0,
      490.0,
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
     "id": "obj-57",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      310.0,
      490.0,
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
     "id": "obj-58",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      250.0,
      460.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.2"
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      310.0,
      460.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.2"
    }
   },
   {
    "box": {
     "id": "obj-60",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      380.0,
      460.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.0"
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      440.0,
      460.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.0"
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      900.0,
      30.0,
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
     "id": "obj-63",
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      250.0,
      520.0,
      30.0,
      30.0
     ],
     "index": 1
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      310.0,
      520.0,
      30.0,
      30.0
     ],
     "index": 2
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      370.0,
      520.0,
      30.0,
      30.0
     ],
     "index": 3
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      430.0,
      520.0,
      30.0,
      30.0
     ],
     "index": 4
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      490.0,
      520.0,
      30.0,
      30.0
     ],
     "index": 5
    }
   },
   {
    "box": {
     "id": "obj-68",
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      550.0,
      520.0,
      30.0,
      30.0
     ],
     "index": 6
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
      "obj-3",
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
      "obj-9",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      4
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
      "obj-7",
      6
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
      "obj-7",
      5
     ],
     "destination": [
      "obj-11",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
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
      "obj-12",
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
      "obj-14",
      0
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
      "obj-11",
      0
     ],
     "destination": [
      "obj-15",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      1
     ],
     "destination": [
      "obj-15",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      2
     ],
     "destination": [
      "obj-15",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      3
     ],
     "destination": [
      "obj-15",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      4
     ],
     "destination": [
      "obj-15",
      5
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
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-12",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      1
     ],
     "destination": [
      "obj-13",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      2
     ],
     "destination": [
      "obj-13",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      3
     ],
     "destination": [
      "obj-14",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-6",
      0
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
      "obj-18",
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
      "obj-19",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      0
     ],
     "destination": [
      "obj-19",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      1
     ],
     "destination": [
      "obj-19",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      2
     ],
     "destination": [
      "obj-19",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      3
     ],
     "destination": [
      "obj-19",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      4
     ],
     "destination": [
      "obj-19",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-19",
      0
     ],
     "destination": [
      "obj-10",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-16",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      1
     ],
     "destination": [
      "obj-17",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      2
     ],
     "destination": [
      "obj-17",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      3
     ],
     "destination": [
      "obj-18",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-20",
      0
     ],
     "destination": [
      "obj-21",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-21",
      0
     ],
     "destination": [
      "obj-7",
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
      "obj-23",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-23",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-24",
      0
     ],
     "destination": [
      "obj-25",
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
      "obj-7",
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
      "obj-27",
      0
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
      "obj-7",
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
      "obj-29",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      0
     ],
     "destination": [
      "obj-7",
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
      "obj-31",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-31",
      0
     ],
     "destination": [
      "obj-7",
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
      "obj-7",
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
      "obj-7",
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
      "obj-38",
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
      "obj-7",
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
      "obj-40",
      0
     ],
     "destination": [
      "obj-7",
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
      "obj-43",
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
      "obj-44",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-10",
      1
     ],
     "destination": [
      "obj-45",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-43",
      0
     ],
     "destination": [
      "obj-44",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-43",
      0
     ],
     "destination": [
      "obj-45",
      1
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
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-49",
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
      "obj-46",
      0
     ],
     "destination": [
      "obj-50",
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
      "obj-51",
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
      "obj-53",
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
      "obj-55",
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
      "obj-56",
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
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-55",
      0
     ],
     "destination": [
      "obj-56",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-55",
      0
     ],
     "destination": [
      "obj-57",
      1
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
      "obj-58",
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
      "obj-59",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      7
     ],
     "destination": [
      "obj-58",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      7
     ],
     "destination": [
      "obj-59",
      1
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
      "obj-60",
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
      "obj-61",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      8
     ],
     "destination": [
      "obj-60",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      8
     ],
     "destination": [
      "obj-61",
      1
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
      "obj-20",
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
      "obj-22",
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
      "obj-24",
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
      "obj-26",
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
      "obj-28",
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
      "obj-30",
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
      "obj-32",
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
      "obj-34",
      0
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
      "obj-63",
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
      "obj-64",
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
      "obj-65",
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
      "obj-66",
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
      "obj-67",
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
      "obj-68",
      0
     ]
    }
   }
  ],
  "parameters": {
   "obj-10": [
    "level",
    "level",
    0
   ],
   "obj-20": [
    "drive",
    "drive",
    0
   ],
   "obj-22": [
    "crush",
    "crush",
    0
   ],
   "obj-24": [
    "shift",
    "shift",
    0
   ],
   "obj-26": [
    "filter",
    "LP\u00b7filter\u00b7HP",
    0
   ],
   "obj-28": [
    "reso",
    "reso",
    0
   ],
   "obj-30": [
    "evolve",
    "evolve",
    0
   ],
   "obj-32": [
    "rev",
    "reverb",
    0
   ],
   "obj-34": [
    "dly",
    "delay",
    0
   ]
  }
 }
}