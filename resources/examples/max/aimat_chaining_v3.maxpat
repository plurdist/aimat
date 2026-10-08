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
   850.0
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
      810.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      1400.0,
      810.0
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
     "text": "AIMAT CHAIN v3",
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
      620.0,
      17.0
     ],
     "text": "generate a source \u2192 the machine transcribes it \u2192 continues it \u2192 continues that\u2026 forever",
     "presentation": 1,
     "presentation_rect": [
      250.0,
      14.0,
      620.0,
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
     "numinlets": 6,
     "numoutlets": 6,
     "patching_rect": [
      1600.0,
      150.0,
      520.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "text": "route /musika_done /basic_pitch_done /midi_ddsp_done /status /continuator_done"
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      1600.0,
      440.0,
      130.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "text": "js chain_engine.js"
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      1800.0,
      410.0,
      135.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r chain_to_engine"
    }
   },
   {
    "box": {
     "id": "obj-15",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1930.0,
      410.0,
      569.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess feedback /Users/ericbrowne/aimat/basic_pitch/output/chain_feedback.mid"
    }
   },
   {
    "box": {
     "id": "obj-16",
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
     "id": "obj-17",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 4,
     "patching_rect": [
      1740.0,
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
     "id": "obj-18",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      44.0,
      300.0,
      206.0
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      44.0,
      300.0,
      206.0
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
     "id": "obj-19",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      44.0,
      300.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      44.0,
      300.0,
      24.0
     ],
     "bgcolor": [
      0.98,
      0.72,
      0.36,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-20",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      44.0,
      290.0,
      19.0
     ],
     "text": "1 \u00b7 GENERATE (Musika)",
     "presentation": 1,
     "presentation_rect": [
      14.0,
      46.0,
      288.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      700.0,
      36.0,
      36.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      78.0,
      36.0,
      36.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-22",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      130.0,
      34.0
     ],
     "text": "NEW SOURCE\n(re-seeds the chain)",
     "presentation": 1,
     "presentation_rect": [
      62.0,
      80.0,
      130.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-23",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      1600.0,
      740.0,
      90.0,
      22.0
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      194.0,
      86.0,
      100.0,
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
     "id": "obj-24",
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
     "id": "obj-25",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      780.0,
      36.0,
      36.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      126.0,
      36.0,
      36.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-26",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      130.0,
      17.0
     ],
     "text": "NEW BED (techno)",
     "presentation": 1,
     "presentation_rect": [
      62.0,
      134.0,
      130.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-27",
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
      194.0,
      116.0,
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
     "id": "obj-28",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1660.0,
      820.0,
      50.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      246.0,
      132.0,
      50.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-29",
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
     "id": "obj-30",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      60.0,
      16.0
     ],
     "text": "seconds",
     "presentation": 1,
     "presentation_rect": [
      246.0,
      156.0,
      60.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-31",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      870.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      182.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-32",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      140.0,
      17.0
     ],
     "text": "auto new source every",
     "presentation": 1,
     "presentation_rect": [
      48.0,
      184.0,
      140.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1640.0,
      870.0,
      50.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      188.0,
      182.0,
      50.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-34",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1640.0,
      840.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 45"
    }
   },
   {
    "box": {
     "id": "obj-35",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      17.0
     ],
     "text": "sec",
     "presentation": 1,
     "presentation_rect": [
      242.0,
      184.0,
      40.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-36",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      280.0,
      16.0
     ],
     "text": "one generation at a time: wait for results",
     "presentation": 1,
     "presentation_rect": [
      20.0,
      216.0,
      280.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      900.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "text": "metro 45000"
    }
   },
   {
    "box": {
     "id": "obj-38",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1640.0,
      900.0,
      58.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "* 1000"
    }
   },
   {
    "box": {
     "id": "obj-39",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      2200.0,
      900.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "",
      ""
     ],
     "text": "gate 2"
    }
   },
   {
    "box": {
     "id": "obj-40",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      2200.0,
      700.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "text": "t b b b"
    }
   },
   {
    "box": {
     "id": "obj-41",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      2200.0,
      730.0,
      190.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pack musika 1. 20 techno"
    }
   },
   {
    "box": {
     "id": "obj-42",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2200.0,
      760.0,
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
     "id": "obj-43",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2200.0,
      790.0,
      100.0,
      22.0
     ],
     "text": "s aimat_send"
    }
   },
   {
    "box": {
     "id": "obj-44",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      760.0,
      40.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "1"
    }
   },
   {
    "box": {
     "id": "obj-45",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      700.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "f 20"
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      730.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "f 20"
    }
   },
   {
    "box": {
     "id": "obj-47",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      2460.0,
      700.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "bang",
      "bang"
     ],
     "text": "t b b b"
    }
   },
   {
    "box": {
     "id": "obj-48",
     "maxclass": "newobj",
     "numinlets": 4,
     "numoutlets": 1,
     "patching_rect": [
      2460.0,
      730.0,
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
     "id": "obj-49",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2460.0,
      760.0,
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
     "id": "obj-50",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2460.0,
      790.0,
      100.0,
      22.0
     ],
     "text": "s aimat_send"
    }
   },
   {
    "box": {
     "id": "obj-51",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2660.0,
      760.0,
      40.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "2"
    }
   },
   {
    "box": {
     "id": "obj-52",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2660.0,
      700.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "f 20"
    }
   },
   {
    "box": {
     "id": "obj-53",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2660.0,
      730.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "f 20"
    }
   },
   {
    "box": {
     "id": "obj-54",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2460.0,
      670.0,
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
     "id": "obj-55",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      316.0,
      44.0,
      470.0,
      206.0
     ],
     "presentation": 1,
     "presentation_rect": [
      316.0,
      44.0,
      470.0,
      206.0
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
     "id": "obj-56",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      316.0,
      44.0,
      470.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      316.0,
      44.0,
      470.0,
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
     "id": "obj-57",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      316.0,
      44.0,
      460.0,
      19.0
     ],
     "text": "2 \u00b7 CHAIN REACTION",
     "presentation": 1,
     "presentation_rect": [
      322.0,
      46.0,
      458.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-58",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1900.0,
      470.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      328.0,
      78.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "chaos",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "chaos",
       "parameter_shortname": "chaos",
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
     "id": "obj-59",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1960.0,
      470.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      380.0,
      78.0,
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
     "id": "obj-60",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      190.0,
      48.0
     ],
     "text": "chaos = how different each\ngeneration is \u00b7 density = how\nmany notes are heard",
     "presentation": 1,
     "presentation_rect": [
      328.0,
      132.0,
      190.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 3
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2020.0,
      470.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      530.0,
      80.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-62",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2020.0,
      440.0,
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
     "id": "obj-63",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      170.0,
      17.0
     ],
     "text": "keep feeding back (drift)",
     "presentation": 1,
     "presentation_rect": [
      556.0,
      82.0,
      170.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2060.0,
      470.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      530.0,
      110.0,
      40.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-65",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2060.0,
      440.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 4"
    }
   },
   {
    "box": {
     "id": "obj-66",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      200.0,
      17.0
     ],
     "text": "MIDI-DDSP every n gens (0 = off)",
     "presentation": 1,
     "presentation_rect": [
      574.0,
      112.0,
      200.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2120.0,
      470.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      530.0,
      140.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
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
      100.0,
      17.0
     ],
     "text": "reset chain",
     "presentation": 1,
     "presentation_rect": [
      556.0,
      142.0,
      100.0,
      19.0
     ],
     "fontsize": 11.0,
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
      1900.0,
      530.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend chaos"
    }
   },
   {
    "box": {
     "id": "obj-70",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1960.0,
      530.0,
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
     "id": "obj-71",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2020.0,
      560.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend drift"
    }
   },
   {
    "box": {
     "id": "obj-72",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2060.0,
      560.0,
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
     "id": "obj-73",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2120.0,
      500.0,
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
     "id": "obj-74",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1900.0,
      600.0,
      70.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      440.0,
      78.0,
      70.0,
      34.0
     ],
     "parameter_enable": 0,
     "fontsize": 22.0
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
      80.0,
      16.0
     ],
     "text": "generation",
     "presentation": 1,
     "presentation_rect": [
      440.0,
      112.0,
      80.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-76",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2000.0,
      600.0,
      440.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "ready: generate a source",
     "presentation": 1,
     "presentation_rect": [
      328.0,
      176.0,
      446.0,
      24.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-77",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      16.0
     ],
     "text": "AIMAT says:",
     "presentation": 1,
     "presentation_rect": [
      328.0,
      204.0,
      70.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-78",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      160.0,
      360.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "waiting\u2026",
     "presentation": 1,
     "presentation_rect": [
      400.0,
      202.0,
      374.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-79",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2000.0,
      160.0,
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
     "id": "obj-80",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      230.0,
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
     "id": "obj-81",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1730.0,
      230.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend seed"
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1850.0,
      230.0,
      135.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend continued"
    }
   },
   {
    "box": {
     "id": "obj-83",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      794.0,
      44.0,
      290.0,
      206.0
     ],
     "presentation": 1,
     "presentation_rect": [
      794.0,
      44.0,
      290.0,
      206.0
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
     "id": "obj-84",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      794.0,
      44.0,
      290.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      794.0,
      44.0,
      290.0,
      24.0
     ],
     "bgcolor": [
      0.45,
      0.66,
      0.93,
      1.0
     ],
     "mode": 0,
     "rounded": 0,
     "background": 1
    }
   },
   {
    "box": {
     "id": "obj-85",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      794.0,
      44.0,
      280.0,
      19.0
     ],
     "text": "3 \u00b7 BED (techno) \u00b7 snap loop",
     "presentation": 1,
     "presentation_rect": [
      800.0,
      46.0,
      278.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-86",
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
     "id": "obj-87",
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
     "id": "obj-88",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2550.0,
      98.0,
      135.0,
      22.0
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ chain_bed"
    }
   },
   {
    "box": {
     "id": "obj-89",
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
     "id": "obj-90",
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
     "id": "obj-91",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2475.0,
      98.0,
      65.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "* 1000."
    }
   },
   {
    "box": {
     "id": "obj-92",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2475.0,
      126.0,
      128.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend duration"
    }
   },
   {
    "box": {
     "id": "obj-93",
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
     "id": "obj-94",
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
     "id": "obj-95",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      2475.0,
      160.0,
      120.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "text": "js chain_loop.js"
    }
   },
   {
    "box": {
     "id": "obj-96",
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
     "text": "groove~ chain_bed 2"
    }
   },
   {
    "box": {
     "id": "obj-97",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2620.0,
      230.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 100."
    }
   },
   {
    "box": {
     "id": "obj-98",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2700.0,
      230.0,
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
     "id": "obj-99",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2700.0,
      258.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 100."
    }
   },
   {
    "box": {
     "id": "obj-100",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2620.0,
      286.0,
      72.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "minimum~"
    }
   },
   {
    "box": {
     "id": "obj-101",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      2620.0,
      314.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "clip~ 0. 1."
    }
   },
   {
    "box": {
     "id": "obj-102",
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
     "id": "obj-103",
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
     "id": "obj-104",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      400.0,
      32.0,
      32.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      806.0,
      78.0,
      32.0,
      32.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-105",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      17.0
     ],
     "text": "ARM",
     "presentation": 1,
     "presentation_rect": [
      842.0,
      84.0,
      40.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-106",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2440.0,
      400.0,
      32.0,
      32.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      884.0,
      78.0,
      32.0,
      32.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-107",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      60.0,
      17.0
     ],
     "text": "RELEASE",
     "presentation": 1,
     "presentation_rect": [
      920.0,
      84.0,
      60.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-108",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      440.0,
      40.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "arm"
    }
   },
   {
    "box": {
     "id": "obj-109",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2440.0,
      470.0,
      65.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "release"
    }
   },
   {
    "box": {
     "id": "obj-110",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      2500.0,
      400.0,
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
      990.0,
      82.0,
      82.0,
      22.0
     ],
     "items": [
      "2 hits",
      ",",
      "4 hits",
      ",",
      "8 hits",
      ",",
      "16 hits"
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-111",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2500.0,
      370.0,
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
     "id": "obj-112",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2500.0,
      430.0,
      163.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "expr pow(2\\, $i1 + 1)"
    }
   },
   {
    "box": {
     "id": "obj-113",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2500.0,
      460.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend hits"
    }
   },
   {
    "box": {
     "id": "obj-114",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2600.0,
      400.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      806.0,
      124.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "bed_threshold",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "bed_threshold",
       "parameter_shortname": "hit level",
       "parameter_type": 0,
       "parameter_mmin": 0.05,
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
     "id": "obj-115",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2660.0,
      400.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      858.0,
      124.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "bed_speed",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "bed_speed",
       "parameter_shortname": "speed",
       "parameter_type": 0,
       "parameter_mmin": -2.0,
       "parameter_mmax": 2.0,
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
     "id": "obj-116",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2660.0,
      460.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pack 0. 80"
    }
   },
   {
    "box": {
     "id": "obj-117",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      2660.0,
      488.0,
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
     "id": "obj-118",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2720.0,
      520.0,
      20.0,
      20.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      918.0,
      138.0,
      20.0,
      20.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-119",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      30.0,
      16.0
     ],
     "text": "hit",
     "presentation": 1,
     "presentation_rect": [
      942.0,
      140.0,
      30.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-120",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2500.0,
      520.0,
      200.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "full loop",
     "presentation": 1,
     "presentation_rect": [
      806.0,
      194.0,
      266.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-121",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      270.0,
      16.0
     ],
     "text": "ARM catches the next drum hit, loops N hits",
     "presentation": 1,
     "presentation_rect": [
      806.0,
      218.0,
      270.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-122",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      560.0,
      44.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "abs~"
    }
   },
   {
    "box": {
     "id": "obj-123",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      588.0,
      121.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "slide~ 1. 2000."
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      616.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": ">~ 0.5"
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2400.0,
      644.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "edge~"
    }
   },
   {
    "box": {
     "id": "obj-126",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      672.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "speedlim 120"
    }
   },
   {
    "box": {
     "id": "obj-127",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2400.0,
      700.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-128",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      728.0,
      79.0,
      22.0
     ],
     "outlettype": [
      "float"
     ],
     "text": "snapshot~"
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
      756.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend onset"
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1092.0,
      44.0,
      300.0,
      206.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1092.0,
      44.0,
      300.0,
      206.0
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
     "id": "obj-131",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1092.0,
      44.0,
      300.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1092.0,
      44.0,
      300.0,
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
     "id": "obj-132",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1092.0,
      44.0,
      290.0,
      19.0
     ],
     "text": "4 \u00b7 SOURCE (feeds the chain) \u00b7 slice",
     "presentation": 1,
     "presentation_rect": [
      1098.0,
      46.0,
      288.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-133",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      3000.0,
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
     "id": "obj-134",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3150.0,
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
     "id": "obj-135",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3150.0,
      98.0,
      156.0,
      22.0
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ chain_source"
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3290.0,
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
     "id": "obj-137",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3000.0,
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
     "id": "obj-138",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3075.0,
      98.0,
      65.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "* 1000."
    }
   },
   {
    "box": {
     "id": "obj-139",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3075.0,
      126.0,
      128.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend duration"
    }
   },
   {
    "box": {
     "id": "obj-140",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3290.0,
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
     "id": "obj-141",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3290.0,
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
     "id": "obj-142",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      3075.0,
      160.0,
      120.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "text": "js chain_loop.js"
    }
   },
   {
    "box": {
     "id": "obj-143",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "patching_rect": [
      3000.0,
      200.0,
      180.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal"
     ],
     "text": "groove~ chain_source 2"
    }
   },
   {
    "box": {
     "id": "obj-144",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3220.0,
      230.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 100."
    }
   },
   {
    "box": {
     "id": "obj-145",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3300.0,
      230.0,
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
     "id": "obj-146",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3300.0,
      258.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 100."
    }
   },
   {
    "box": {
     "id": "obj-147",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3220.0,
      286.0,
      72.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "minimum~"
    }
   },
   {
    "box": {
     "id": "obj-148",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      3220.0,
      314.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "clip~ 0. 1."
    }
   },
   {
    "box": {
     "id": "obj-149",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3000.0,
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
     "id": "obj-150",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3065.0,
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
     "id": "obj-151",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3000.0,
      400.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1104.0,
      78.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "slice_pos",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "slice_pos",
       "parameter_shortname": "position",
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
     "id": "obj-152",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3060.0,
      400.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1156.0,
      78.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "slice_ms",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "slice_ms",
       "parameter_shortname": "slice",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1000.0,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-153",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3120.0,
      400.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1208.0,
      78.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "source_speed",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "source_speed",
       "parameter_shortname": "speed",
       "parameter_type": 0,
       "parameter_mmin": -2.0,
       "parameter_mmax": 2.0,
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
     "id": "obj-154",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3120.0,
      460.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pack 0. 80"
    }
   },
   {
    "box": {
     "id": "obj-155",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      3120.0,
      488.0,
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
     "id": "obj-156",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3000.0,
      460.0,
      79.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pak 0. 0."
    }
   },
   {
    "box": {
     "id": "obj-157",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3000.0,
      490.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend slice"
    }
   },
   {
    "box": {
     "id": "obj-158",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3000.0,
      520.0,
      200.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "full loop",
     "presentation": 1,
     "presentation_rect": [
      1104.0,
      194.0,
      276.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-159",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      170.0,
      48.0
     ],
     "text": "slice 0 = whole clip.\nsmall slices stutter.\nspeed \u22121 = reverse",
     "presentation": 1,
     "presentation_rect": [
      1104.0,
      134.0,
      170.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 3
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
      270.0,
      16.0
     ],
     "text": "this audio is what gets transcribed",
     "presentation": 1,
     "presentation_rect": [
      1104.0,
      218.0,
      270.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-161",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      258.0,
      254.0,
      130.0
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      258.0,
      254.0,
      130.0
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
     "id": "obj-162",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      258.0,
      254.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      258.0,
      254.0,
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
     "id": "obj-163",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      258.0,
      244.0,
      19.0
     ],
     "text": "VOICE 1",
     "presentation": 1,
     "presentation_rect": [
      14.0,
      260.0,
      242.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-164",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 5,
     "patching_rect": [
      3600.0,
      40.0,
      219.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      "",
      ""
     ],
     "text": "route speed octave load write"
    }
   },
   {
    "box": {
     "id": "obj-165",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      140.0,
      58.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "f 1024"
    }
   },
   {
    "box": {
     "id": "obj-166",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      3730.0,
      80.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "",
      "bang"
     ],
     "text": "t b s b"
    }
   },
   {
    "box": {
     "id": "obj-167",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3860.0,
      110.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "stop"
    }
   },
   {
    "box": {
     "id": "obj-168",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3910.0,
      110.0,
      51.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "panic"
    }
   },
   {
    "box": {
     "id": "obj-169",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3780.0,
      110.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend read"
    }
   },
   {
    "box": {
     "id": "obj-170",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      170.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend start"
    }
   },
   {
    "box": {
     "id": "obj-171",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3600.0,
      200.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "int",
      "bang"
     ],
     "text": "seq"
    }
   },
   {
    "box": {
     "id": "obj-172",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3960.0,
      170.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend write"
    }
   },
   {
    "box": {
     "id": "obj-173",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3700.0,
      240.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-174",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3780.0,
      270.0,
      65.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "ended 1"
    }
   },
   {
    "box": {
     "id": "obj-175",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3780.0,
      300.0,
      135.0,
      22.0
     ],
     "text": "s chain_to_engine"
    }
   },
   {
    "box": {
     "id": "obj-176",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      270.0,
      72.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 20"
    }
   },
   {
    "box": {
     "id": "obj-177",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3640.0,
      270.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      220.0,
      326.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-178",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3640.0,
      240.0,
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
     "id": "obj-179",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      16.0
     ],
     "text": "loop",
     "presentation": 1,
     "presentation_rect": [
      216.0,
      350.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-180",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      300.0,
      72.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "gate 1 1"
    }
   },
   {
    "box": {
     "id": "obj-181",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 8,
     "patching_rect": [
      3600.0,
      340.0,
      79.0,
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
      ""
     ],
     "text": "midiparse"
    }
   },
   {
    "box": {
     "id": "obj-182",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3600.0,
      370.0,
      130.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "js chain_shaper.js"
    }
   },
   {
    "box": {
     "id": "obj-183",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3800.0,
      340.0,
      114.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend octave"
    }
   },
   {
    "box": {
     "id": "obj-184",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3930.0,
      340.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      210.0,
      290.0,
      40.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-185",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      28.0,
      16.0
     ],
     "text": "oct",
     "presentation": 1,
     "presentation_rect": [
      180.0,
      292.0,
      28.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-186",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      3800.0,
      400.0,
      90.0,
      22.0
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      66.0,
      326.0,
      90.0,
      22.0
     ],
     "items": [
      "off",
      ",",
      "minpent",
      ",",
      "dorian",
      ",",
      "wholetone",
      ",",
      "major"
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-187",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3800.0,
      370.0,
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
     "id": "obj-188",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3800.0,
      430.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend scale"
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
      44.0,
      16.0
     ],
     "text": "scale",
     "presentation": 1,
     "presentation_rect": [
      20.0,
      330.0,
      44.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-190",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3920.0,
      400.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      162.0,
      318.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "v1_keep",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "v1_keep",
       "parameter_shortname": "keep %",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 100.0,
       "parameter_initial": [
        100
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 5
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-191",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3920.0,
      460.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend keep"
    }
   },
   {
    "box": {
     "id": "obj-192",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      3860.0,
      80.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r chain_panic"
    }
   },
   {
    "box": {
     "id": "obj-193",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      3600.0,
      500.0,
      120.0,
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
     "text": "vst~ 2 2"
    }
   },
   {
    "box": {
     "id": "obj-194",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3750.0,
      470.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      290.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-195",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      17.0
     ],
     "text": "load synth",
     "presentation": 1,
     "presentation_rect": [
      48.0,
      292.0,
      70.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-196",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3790.0,
      470.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      118.0,
      290.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-197",
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
      144.0,
      294.0,
      30.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-198",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3750.0,
      440.0,
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
     "id": "obj-199",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3800.0,
      440.0,
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
     "id": "obj-200",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      138.0,
      15.0
     ],
     "text": "generations take turns 1 \u2192 2 \u2192 3",
     "presentation": 1,
     "presentation_rect": [
      20.0,
      362.0,
      138.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-201",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      270.0,
      258.0,
      254.0,
      130.0
     ],
     "presentation": 1,
     "presentation_rect": [
      270.0,
      258.0,
      254.0,
      130.0
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
     "id": "obj-202",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      270.0,
      258.0,
      254.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      270.0,
      258.0,
      254.0,
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
     "id": "obj-203",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      270.0,
      258.0,
      244.0,
      19.0
     ],
     "text": "VOICE 2",
     "presentation": 1,
     "presentation_rect": [
      276.0,
      260.0,
      242.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-204",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 5,
     "patching_rect": [
      4100.0,
      40.0,
      219.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      "",
      ""
     ],
     "text": "route speed octave load write"
    }
   },
   {
    "box": {
     "id": "obj-205",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4100.0,
      140.0,
      58.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "f 1024"
    }
   },
   {
    "box": {
     "id": "obj-206",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4230.0,
      80.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "",
      "bang"
     ],
     "text": "t b s b"
    }
   },
   {
    "box": {
     "id": "obj-207",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4360.0,
      110.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "stop"
    }
   },
   {
    "box": {
     "id": "obj-208",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4410.0,
      110.0,
      51.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "panic"
    }
   },
   {
    "box": {
     "id": "obj-209",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4280.0,
      110.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend read"
    }
   },
   {
    "box": {
     "id": "obj-210",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4100.0,
      170.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend start"
    }
   },
   {
    "box": {
     "id": "obj-211",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4100.0,
      200.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "int",
      "bang"
     ],
     "text": "seq"
    }
   },
   {
    "box": {
     "id": "obj-212",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4460.0,
      170.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend write"
    }
   },
   {
    "box": {
     "id": "obj-213",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4200.0,
      240.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-214",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4280.0,
      270.0,
      65.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "ended 2"
    }
   },
   {
    "box": {
     "id": "obj-215",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4280.0,
      300.0,
      135.0,
      22.0
     ],
     "text": "s chain_to_engine"
    }
   },
   {
    "box": {
     "id": "obj-216",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4200.0,
      270.0,
      72.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 20"
    }
   },
   {
    "box": {
     "id": "obj-217",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4140.0,
      270.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      482.0,
      326.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-218",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4140.0,
      240.0,
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
     "id": "obj-219",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      16.0
     ],
     "text": "loop",
     "presentation": 1,
     "presentation_rect": [
      478.0,
      350.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-220",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4200.0,
      300.0,
      72.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "gate 1 1"
    }
   },
   {
    "box": {
     "id": "obj-221",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 8,
     "patching_rect": [
      4100.0,
      340.0,
      79.0,
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
      ""
     ],
     "text": "midiparse"
    }
   },
   {
    "box": {
     "id": "obj-222",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4100.0,
      370.0,
      130.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "js chain_shaper.js"
    }
   },
   {
    "box": {
     "id": "obj-223",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4300.0,
      340.0,
      114.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend octave"
    }
   },
   {
    "box": {
     "id": "obj-224",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4430.0,
      340.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      472.0,
      290.0,
      40.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-225",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      28.0,
      16.0
     ],
     "text": "oct",
     "presentation": 1,
     "presentation_rect": [
      442.0,
      292.0,
      28.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-226",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4300.0,
      400.0,
      90.0,
      22.0
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      328.0,
      326.0,
      90.0,
      22.0
     ],
     "items": [
      "off",
      ",",
      "minpent",
      ",",
      "dorian",
      ",",
      "wholetone",
      ",",
      "major"
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-227",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4300.0,
      370.0,
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
     "id": "obj-228",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4300.0,
      430.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend scale"
    }
   },
   {
    "box": {
     "id": "obj-229",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      44.0,
      16.0
     ],
     "text": "scale",
     "presentation": 1,
     "presentation_rect": [
      282.0,
      330.0,
      44.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-230",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4420.0,
      400.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      424.0,
      318.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "v2_keep",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "v2_keep",
       "parameter_shortname": "keep %",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 100.0,
       "parameter_initial": [
        100
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 5
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-231",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4420.0,
      460.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend keep"
    }
   },
   {
    "box": {
     "id": "obj-232",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      4360.0,
      80.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r chain_panic"
    }
   },
   {
    "box": {
     "id": "obj-233",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      4100.0,
      500.0,
      120.0,
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
     "text": "vst~ 2 2"
    }
   },
   {
    "box": {
     "id": "obj-234",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4250.0,
      470.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      282.0,
      290.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-235",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      17.0
     ],
     "text": "load synth",
     "presentation": 1,
     "presentation_rect": [
      310.0,
      292.0,
      70.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-236",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4290.0,
      470.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      380.0,
      290.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-237",
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
      406.0,
      294.0,
      30.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-238",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4250.0,
      440.0,
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
     "id": "obj-239",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4300.0,
      440.0,
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
     "id": "obj-240",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      138.0,
      15.0
     ],
     "text": "generations take turns 1 \u2192 2 \u2192 3",
     "presentation": 1,
     "presentation_rect": [
      282.0,
      362.0,
      138.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-241",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      532.0,
      258.0,
      254.0,
      130.0
     ],
     "presentation": 1,
     "presentation_rect": [
      532.0,
      258.0,
      254.0,
      130.0
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
     "id": "obj-242",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      532.0,
      258.0,
      254.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      532.0,
      258.0,
      254.0,
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
     "id": "obj-243",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      532.0,
      258.0,
      244.0,
      19.0
     ],
     "text": "VOICE 3",
     "presentation": 1,
     "presentation_rect": [
      538.0,
      260.0,
      242.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-244",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 5,
     "patching_rect": [
      4600.0,
      40.0,
      219.0,
      22.0
     ],
     "outlettype": [
      "",
      "",
      "",
      "",
      ""
     ],
     "text": "route speed octave load write"
    }
   },
   {
    "box": {
     "id": "obj-245",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4600.0,
      140.0,
      58.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "f 1024"
    }
   },
   {
    "box": {
     "id": "obj-246",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4730.0,
      80.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "",
      "bang"
     ],
     "text": "t b s b"
    }
   },
   {
    "box": {
     "id": "obj-247",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4860.0,
      110.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "stop"
    }
   },
   {
    "box": {
     "id": "obj-248",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4910.0,
      110.0,
      51.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "panic"
    }
   },
   {
    "box": {
     "id": "obj-249",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4780.0,
      110.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend read"
    }
   },
   {
    "box": {
     "id": "obj-250",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4600.0,
      170.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend start"
    }
   },
   {
    "box": {
     "id": "obj-251",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4600.0,
      200.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "int",
      "bang"
     ],
     "text": "seq"
    }
   },
   {
    "box": {
     "id": "obj-252",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4960.0,
      170.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend write"
    }
   },
   {
    "box": {
     "id": "obj-253",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4700.0,
      240.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "bang"
     ],
     "text": "t b b"
    }
   },
   {
    "box": {
     "id": "obj-254",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4780.0,
      270.0,
      65.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "ended 3"
    }
   },
   {
    "box": {
     "id": "obj-255",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4780.0,
      300.0,
      135.0,
      22.0
     ],
     "text": "s chain_to_engine"
    }
   },
   {
    "box": {
     "id": "obj-256",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4700.0,
      270.0,
      72.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "text": "delay 20"
    }
   },
   {
    "box": {
     "id": "obj-257",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4640.0,
      270.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      744.0,
      326.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-258",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4640.0,
      240.0,
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
     "id": "obj-259",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      16.0
     ],
     "text": "loop",
     "presentation": 1,
     "presentation_rect": [
      740.0,
      350.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-260",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4700.0,
      300.0,
      72.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "gate 1 1"
    }
   },
   {
    "box": {
     "id": "obj-261",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 8,
     "patching_rect": [
      4600.0,
      340.0,
      79.0,
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
      ""
     ],
     "text": "midiparse"
    }
   },
   {
    "box": {
     "id": "obj-262",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4600.0,
      370.0,
      130.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "js chain_shaper.js"
    }
   },
   {
    "box": {
     "id": "obj-263",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4800.0,
      340.0,
      114.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend octave"
    }
   },
   {
    "box": {
     "id": "obj-264",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4930.0,
      340.0,
      40.0,
      22.0
     ],
     "outlettype": [
      "",
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      734.0,
      290.0,
      40.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-265",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      28.0,
      16.0
     ],
     "text": "oct",
     "presentation": 1,
     "presentation_rect": [
      704.0,
      292.0,
      28.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-266",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4800.0,
      400.0,
      90.0,
      22.0
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      590.0,
      326.0,
      90.0,
      22.0
     ],
     "items": [
      "off",
      ",",
      "minpent",
      ",",
      "dorian",
      ",",
      "wholetone",
      ",",
      "major"
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-267",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4800.0,
      370.0,
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
     "id": "obj-268",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4800.0,
      430.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend scale"
    }
   },
   {
    "box": {
     "id": "obj-269",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      44.0,
      16.0
     ],
     "text": "scale",
     "presentation": 1,
     "presentation_rect": [
      544.0,
      330.0,
      44.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-270",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4920.0,
      400.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      686.0,
      318.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "v3_keep",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "v3_keep",
       "parameter_shortname": "keep %",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 100.0,
       "parameter_initial": [
        100
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 5
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-271",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4920.0,
      460.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend keep"
    }
   },
   {
    "box": {
     "id": "obj-272",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      4860.0,
      80.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r chain_panic"
    }
   },
   {
    "box": {
     "id": "obj-273",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      4600.0,
      500.0,
      120.0,
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
     "text": "vst~ 2 2"
    }
   },
   {
    "box": {
     "id": "obj-274",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4750.0,
      470.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      544.0,
      290.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-275",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      17.0
     ],
     "text": "load synth",
     "presentation": 1,
     "presentation_rect": [
      572.0,
      292.0,
      70.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-276",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4790.0,
      470.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      642.0,
      290.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-277",
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
      668.0,
      294.0,
      30.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-278",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4750.0,
      440.0,
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
     "id": "obj-279",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4800.0,
      440.0,
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
     "id": "obj-280",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      138.0,
      15.0
     ],
     "text": "generations take turns 1 \u2192 2 \u2192 3",
     "presentation": 1,
     "presentation_rect": [
      544.0,
      362.0,
      138.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-281",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5200.0,
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
     "id": "obj-282",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5260.0,
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
     "id": "obj-283",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5260.0,
      98.0,
      142.0,
      22.0
     ],
     "outlettype": [
      "float",
      "bang"
     ],
     "text": "buffer~ chain_ddsp"
    }
   },
   {
    "box": {
     "id": "obj-284",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5200.0,
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
     "id": "obj-285",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5400.0,
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
     "id": "obj-286",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5400.0,
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
     "id": "obj-287",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 2,
     "patching_rect": [
      5200.0,
      130.0,
      150.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal"
     ],
     "text": "groove~ chain_ddsp 1"
    }
   },
   {
    "box": {
     "id": "obj-288",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5370.0,
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
     "id": "obj-289",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5300.0,
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
     "id": "obj-290",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      794.0,
      258.0,
      598.0,
      130.0
     ],
     "presentation": 1,
     "presentation_rect": [
      794.0,
      258.0,
      598.0,
      130.0
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
     "id": "obj-291",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      794.0,
      258.0,
      598.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      794.0,
      258.0,
      598.0,
      24.0
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
     "id": "obj-292",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      794.0,
      258.0,
      588.0,
      19.0
     ],
     "text": "5 \u00b7 SPACE: reverb + feedback delay",
     "presentation": 1,
     "presentation_rect": [
      800.0,
      260.0,
      586.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-293",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      5600.0,
      300.0,
      220.0,
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
     "text": "vst~ 2 2"
    }
   },
   {
    "box": {
     "id": "obj-294",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5600.0,
      260.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      806.0,
      292.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-295",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      80.0,
      17.0
     ],
     "text": "load reverb",
     "presentation": 1,
     "presentation_rect": [
      834.0,
      294.0,
      80.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-296",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5640.0,
      260.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      806.0,
      322.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-297",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      80.0,
      17.0
     ],
     "text": "show reverb",
     "presentation": 1,
     "presentation_rect": [
      834.0,
      324.0,
      80.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-298",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5600.0,
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
     "id": "obj-299",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5650.0,
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
     "id": "obj-300",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      140.0,
      30.0
     ],
     "text": "choose Valhalla Supermassive,\nthen save the patch to keep it",
     "presentation": 1,
     "presentation_rect": [
      806.0,
      352.0,
      140.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-301",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5900.0,
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
      954.0,
      292.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "dly_time",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "dly_time",
       "parameter_shortname": "time",
       "parameter_type": 0,
       "parameter_mmin": 20.0,
       "parameter_mmax": 2000.0,
       "parameter_initial": [
        375.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-302",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5960.0,
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
      1006.0,
      292.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "dly_feedback",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "dly_feedback",
       "parameter_shortname": "feedback",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 1.2,
       "parameter_initial": [
        0.45
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-303",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      6020.0,
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
      1058.0,
      292.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "dly_tone",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "dly_tone",
       "parameter_shortname": "tone",
       "parameter_type": 0,
       "parameter_mmin": 200.0,
       "parameter_mmax": 12000.0,
       "parameter_initial": [
        4000.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-304",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      6080.0,
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
      1110.0,
      292.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "dly_wobble",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "dly_wobble",
       "parameter_shortname": "wobble",
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
     "id": "obj-305",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      220.0,
      30.0
     ],
     "text": "feedback above 1.0 self-oscillates\n(soft-clipped, so it stays in bounds)",
     "presentation": 1,
     "presentation_rect": [
      954.0,
      346.0,
      220.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-306",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5900.0,
      260.0,
      93.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pack 0. 150"
    }
   },
   {
    "box": {
     "id": "obj-307",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      5900.0,
      288.0,
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
     "id": "obj-308",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6080.0,
      260.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "cycle~ 0.23"
    }
   },
   {
    "box": {
     "id": "obj-309",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6080.0,
      288.0,
      51.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "* 25."
    }
   },
   {
    "box": {
     "id": "obj-310",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6080.0,
      316.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 2.5"
    }
   },
   {
    "box": {
     "id": "obj-311",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5900.0,
      344.0,
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
     "id": "obj-312",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6000.0,
      372.0,
      58.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 1.5"
    }
   },
   {
    "box": {
     "id": "obj-313",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5900.0,
      420.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "tapconnect"
     ],
     "text": "tapin~ 5000"
    }
   },
   {
    "box": {
     "id": "obj-314",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5900.0,
      450.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "tapout~ 375"
    }
   },
   {
    "box": {
     "id": "obj-315",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      5900.0,
      480.0,
      128.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "lores~ 4000. 0.2"
    }
   },
   {
    "box": {
     "id": "obj-316",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5900.0,
      508.0,
      114.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "overdrive~ 1.5"
    }
   },
   {
    "box": {
     "id": "obj-317",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5900.0,
      536.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.45"
    }
   },
   {
    "box": {
     "id": "obj-318",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      420.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "tapconnect"
     ],
     "text": "tapin~ 5000"
    }
   },
   {
    "box": {
     "id": "obj-319",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      450.0,
      93.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "tapout~ 375"
    }
   },
   {
    "box": {
     "id": "obj-320",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      480.0,
      128.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "lores~ 4000. 0.2"
    }
   },
   {
    "box": {
     "id": "obj-321",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      508.0,
      114.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "overdrive~ 1.5"
    }
   },
   {
    "box": {
     "id": "obj-322",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      536.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.45"
    }
   },
   {
    "box": {
     "id": "obj-323",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      6600.0,
      40.0,
      150.0,
      404.0
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
      8.0,
      396.0,
      150.0,
      404.0
     ],
     "name": "chain_strip.maxpat",
     "args": [
      "BED"
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
     "id": "obj-324",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      6770.0,
      40.0,
      150.0,
      404.0
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
      166.0,
      396.0,
      150.0,
      404.0
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
     "id": "obj-325",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      6940.0,
      40.0,
      150.0,
      404.0
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
      324.0,
      396.0,
      150.0,
      404.0
     ],
     "name": "chain_strip.maxpat",
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
     "id": "obj-326",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      7110.0,
      40.0,
      150.0,
      404.0
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
      482.0,
      396.0,
      150.0,
      404.0
     ],
     "name": "chain_strip.maxpat",
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
     "id": "obj-327",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      7280.0,
      40.0,
      150.0,
      404.0
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
      640.0,
      396.0,
      150.0,
      404.0
     ],
     "name": "chain_strip.maxpat",
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
     "id": "obj-328",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      7450.0,
      40.0,
      150.0,
      404.0
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
      798.0,
      396.0,
      150.0,
      404.0
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
     "id": "obj-329",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      7620.0,
      40.0,
      150.0,
      404.0
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
      956.0,
      396.0,
      150.0,
      404.0
     ],
     "name": "chain_strip.maxpat",
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
     "id": "obj-330",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      7790.0,
      40.0,
      150.0,
      404.0
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
      1114.0,
      396.0,
      150.0,
      404.0
     ],
     "name": "chain_strip.maxpat",
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
     "id": "obj-331",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      7400.0,
      400.0,
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
     "id": "obj-332",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1272.0,
      396.0,
      120.0,
      404.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1272.0,
      396.0,
      120.0,
      404.0
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
     "id": "obj-333",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1272.0,
      396.0,
      120.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1272.0,
      396.0,
      120.0,
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
     "id": "obj-334",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1272.0,
      396.0,
      110.0,
      19.0
     ],
     "text": "MASTER",
     "presentation": 1,
     "presentation_rect": [
      1278.0,
      398.0,
      108.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-335",
     "maxclass": "live.gain~",
     "numinlets": 2,
     "numoutlets": 5,
     "patching_rect": [
      7400.0,
      520.0,
      48.0,
      300.0
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
      1284.0,
      436.0,
      48.0,
      300.0
     ],
     "channels": 2,
     "lastchannelcount": 0,
     "orientation": 0,
     "parameter_enable": 1,
     "showname": 0,
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
     "id": "obj-336",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      7400.0,
      560.0,
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
     "id": "obj-337",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      7460.0,
      560.0,
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
     "id": "obj-338",
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      7400.0,
      600.0,
      45.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1342.0,
      436.0,
      45.0,
      45.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-339",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      50.0,
      30.0
     ],
     "text": "audio\non/off",
     "presentation": 1,
     "presentation_rect": [
      1342.0,
      484.0,
      50.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-340",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      7500.0,
      640.0,
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
     "id": "obj-341",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      7500.0,
      600.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1342.0,
      526.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-342",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      50.0,
      15.0
     ],
     "text": "rec file",
     "presentation": 1,
     "presentation_rect": [
      1342.0,
      552.0,
      50.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-343",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      7500.0,
      580.0,
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
     "id": "obj-344",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      7540.0,
      600.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1342.0,
      582.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-345",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      50.0,
      16.0
     ],
     "text": "REC",
     "presentation": 1,
     "presentation_rect": [
      1342.0,
      608.0,
      50.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-346",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      100.0,
      30.0
     ],
     "text": "soft limit (tanh)\non the master",
     "presentation": 1,
     "presentation_rect": [
      1284.0,
      742.0,
      100.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
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
      "obj-14",
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
      "obj-16",
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
      "obj-17",
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
      "obj-23",
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
      "obj-28",
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
      "obj-33",
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
      "obj-37",
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
      "obj-37",
      1
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
      "obj-21",
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
      "obj-42",
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
      "obj-43",
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
      "obj-41",
      1
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
      "obj-41",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-40",
      2
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
      "obj-44",
      0
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
      "obj-28",
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
      "obj-40",
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
      "obj-45",
      0
     ],
     "destination": [
      "obj-46",
      1
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
      "obj-49",
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
      "obj-50",
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
      "obj-48",
      1
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
      "obj-48",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-47",
      2
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
      "obj-39",
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
      "obj-52",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-47",
      1
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
      "obj-23",
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
      "obj-54",
      0
     ],
     "destination": [
      "obj-48",
      3
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
      "obj-39",
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
      "obj-61",
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
      "obj-59",
      0
     ],
     "destination": [
      "obj-70",
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
      "obj-13",
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
      "obj-71",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-71",
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
      "obj-64",
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
      "obj-67",
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
      "obj-13",
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
      "obj-74",
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
      "obj-76",
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
      "obj-79",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-79",
      0
     ],
     "destination": [
      "obj-78",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      1
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
      "obj-80",
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
      1
     ],
     "destination": [
      "obj-81",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-81",
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
      4
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
      "obj-82",
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
      "obj-86",
      2
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
      "obj-87",
      0
     ],
     "destination": [
      "obj-88",
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
      "obj-89",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-89",
      0
     ],
     "destination": [
      "obj-88",
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
      "obj-91",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-91",
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
      "obj-86",
      0
     ],
     "destination": [
      "obj-90",
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
      "obj-93",
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
      "obj-95",
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
      "obj-96",
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
      "obj-96",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-95",
      0
     ],
     "destination": [
      "obj-96",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-95",
      1
     ],
     "destination": [
      "obj-96",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-96",
      2
     ],
     "destination": [
      "obj-97",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-96",
      2
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
      "obj-99",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-95",
      2
     ],
     "destination": [
      "obj-97",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-95",
      2
     ],
     "destination": [
      "obj-99",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-97",
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
      "obj-99",
      0
     ],
     "destination": [
      "obj-100",
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
      "obj-101",
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
      "obj-102",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-96",
      1
     ],
     "destination": [
      "obj-103",
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
      "obj-102",
      1
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
      "obj-103",
      1
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
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
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
      "obj-108",
      0
     ],
     "destination": [
      "obj-95",
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
      "obj-95",
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
      "obj-112",
      0
     ],
     "destination": [
      "obj-113",
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
      "obj-95",
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
      "obj-96",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-95",
      3
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
      "obj-96",
      0
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
      "obj-122",
      0
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
      "obj-114",
      0
     ],
     "destination": [
      "obj-124",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-124",
      0
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
      "obj-125",
      0
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
      "obj-126",
      0
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
      "obj-127",
      1
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
      "obj-127",
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
      "obj-96",
      2
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
      "obj-128",
      0
     ],
     "destination": [
      "obj-129",
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
      "obj-95",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      2
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
      0
     ],
     "destination": [
      "obj-135",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      1
     ],
     "destination": [
      "obj-136",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-136",
      0
     ],
     "destination": [
      "obj-135",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
      1
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
      "obj-133",
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
      "obj-141",
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
      "obj-139",
      0
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
      "obj-137",
      0
     ],
     "destination": [
      "obj-143",
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
      "obj-143",
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
      "obj-143",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-142",
      1
     ],
     "destination": [
      "obj-143",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-143",
      2
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
      "obj-143",
      2
     ],
     "destination": [
      "obj-145",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-145",
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
      "obj-142",
      2
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
      "obj-142",
      2
     ],
     "destination": [
      "obj-146",
      1
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
      "obj-147",
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
      1
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
      "obj-148",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-143",
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
      "obj-143",
      1
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
      "obj-148",
      0
     ],
     "destination": [
      "obj-149",
      1
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
      "obj-150",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      1
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
      "obj-155",
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
      "obj-143",
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
      "obj-156",
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
      "obj-156",
      1
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
      "obj-157",
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
      "obj-142",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-142",
      3
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
      "obj-17",
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
      "obj-164",
      0
     ],
     "destination": [
      "obj-165",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-164",
      2
     ],
     "destination": [
      "obj-166",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-164",
      3
     ],
     "destination": [
      "obj-172",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-172",
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
      "obj-166",
      2
     ],
     "destination": [
      "obj-167",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-166",
      2
     ],
     "destination": [
      "obj-168",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-166",
      1
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
      "obj-166",
      0
     ],
     "destination": [
      "obj-165",
      0
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
      "obj-171",
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
      "obj-171",
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
      "obj-171",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-171",
      1
     ],
     "destination": [
      "obj-173",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-173",
      1
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
      "obj-178",
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
      "obj-173",
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
      "obj-177",
      0
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
      "obj-180",
      0
     ],
     "destination": [
      "obj-165",
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
      "obj-181",
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
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-168",
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
      "obj-164",
      1
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
      "obj-183",
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
      "obj-164",
      1
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
      "obj-186",
      1
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
      "obj-188",
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
      "obj-190",
      0
     ],
     "destination": [
      "obj-191",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-191",
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
      "obj-192",
      0
     ],
     "destination": [
      "obj-167",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-192",
      0
     ],
     "destination": [
      "obj-168",
      0
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
      "obj-193",
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
      "obj-198",
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
      "obj-196",
      0
     ],
     "destination": [
      "obj-199",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-199",
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
      "obj-17",
      1
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
      "obj-204",
      0
     ],
     "destination": [
      "obj-205",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-204",
      2
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
      "obj-204",
      3
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
      "obj-211",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-206",
      2
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
      "obj-206",
      2
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
      "obj-206",
      1
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
      "obj-206",
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
      "obj-211",
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
      "obj-211",
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
      "obj-211",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-211",
      1
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
      "obj-213",
      1
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
      "obj-215",
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
      "obj-217",
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
      "obj-216",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-216",
      0
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
      "obj-217",
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
      "obj-220",
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
      "obj-211",
      0
     ],
     "destination": [
      "obj-221",
      0
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
      "obj-222",
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
      "obj-222",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-204",
      1
     ],
     "destination": [
      "obj-223",
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
      "obj-222",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-204",
      1
     ],
     "destination": [
      "obj-224",
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
      "obj-226",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-226",
      1
     ],
     "destination": [
      "obj-228",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-228",
      0
     ],
     "destination": [
      "obj-222",
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
      "obj-222",
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
      "obj-207",
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
      "obj-208",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-222",
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
      "obj-234",
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
      "obj-238",
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
      "obj-236",
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
      "obj-239",
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
      "obj-17",
      2
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
      "obj-244",
      0
     ],
     "destination": [
      "obj-245",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-244",
      2
     ],
     "destination": [
      "obj-246",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-244",
      3
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
      "obj-251",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-246",
      2
     ],
     "destination": [
      "obj-247",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-246",
      2
     ],
     "destination": [
      "obj-248",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-246",
      1
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
      "obj-246",
      0
     ],
     "destination": [
      "obj-245",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-245",
      0
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
      "obj-247",
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
      "obj-249",
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
      "obj-251",
      1
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
      "obj-253",
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
      "obj-254",
      0
     ],
     "destination": [
      "obj-255",
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
      "obj-257",
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
      "obj-256",
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
      "obj-260",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-257",
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
      "obj-260",
      0
     ],
     "destination": [
      "obj-245",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-251",
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
      "obj-262",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-248",
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
      "obj-244",
      1
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
      "obj-263",
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
      "obj-244",
      1
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
      "obj-267",
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
      1
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
      "obj-270",
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
      "obj-262",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      0
     ],
     "destination": [
      "obj-247",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-272",
      0
     ],
     "destination": [
      "obj-248",
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
      "obj-273",
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
      "obj-278",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-278",
      0
     ],
     "destination": [
      "obj-273",
      0
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
      "obj-279",
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
      "obj-273",
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
      "obj-285",
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
      "obj-287",
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
      "obj-281",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-281",
      1
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
      "obj-283",
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
      "obj-284",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-284",
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
      "obj-285",
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
      "obj-281",
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
      "obj-289",
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
      "obj-294",
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
      "obj-298",
      0
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
      "obj-296",
      0
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
      "obj-293",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-301",
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
      "obj-306",
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
      "obj-307",
      0
     ],
     "destination": [
      "obj-311",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-304",
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
      "obj-309",
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
      "obj-308",
      0
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
      "obj-310",
      0
     ],
     "destination": [
      "obj-311",
      1
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
      "obj-312",
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
      "obj-314",
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
      "obj-313",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-302",
      0
     ],
     "destination": [
      "obj-317",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-303",
      0
     ],
     "destination": [
      "obj-315",
      1
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
      "obj-312",
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
      "obj-322",
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
      "obj-302",
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
      "obj-303",
      0
     ],
     "destination": [
      "obj-320",
      1
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
      "obj-323",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-103",
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
      "obj-149",
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
      "obj-150",
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
      "obj-193",
      0
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
      "obj-193",
      1
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
      "obj-233",
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
      "obj-233",
      1
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
      "obj-273",
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
      "obj-273",
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
      "obj-287",
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
      "obj-287",
      0
     ],
     "destination": [
      "obj-328",
      1
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
      "obj-329",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-293",
      1
     ],
     "destination": [
      "obj-329",
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
      "obj-330",
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
      "obj-330",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-323",
      2
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
      "obj-323",
      3
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
      "obj-323",
      4
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
      "obj-323",
      5
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
      "obj-324",
      2
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
      "obj-324",
      3
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
      "obj-324",
      4
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
      "obj-324",
      5
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
      "obj-325",
      2
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
      "obj-325",
      3
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
      "obj-325",
      4
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
      "obj-325",
      5
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
      "obj-326",
      2
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
      "obj-326",
      3
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
      "obj-326",
      4
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
      "obj-326",
      5
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
      "obj-327",
      2
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
      "obj-327",
      3
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
      "obj-327",
      4
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
      "obj-327",
      5
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
      "obj-328",
      2
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
      "obj-328",
      3
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
      "obj-328",
      4
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
      "obj-328",
      5
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
      "obj-330",
      2
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
      "obj-330",
      3
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
      "obj-331",
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
      "obj-331",
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
      "obj-331",
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
      "obj-331",
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
      "obj-331",
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
      "obj-331",
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
      "obj-331",
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
      "obj-331",
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
      "obj-331",
      0
     ],
     "destination": [
      "obj-190",
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
      "obj-230",
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
      "obj-270",
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
      "obj-301",
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
      "obj-302",
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
      "obj-303",
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
      "obj-304",
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
      "obj-335",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-323",
      1
     ],
     "destination": [
      "obj-335",
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
      "obj-335",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-324",
      1
     ],
     "destination": [
      "obj-335",
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
      "obj-335",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-325",
      1
     ],
     "destination": [
      "obj-335",
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
      "obj-335",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-326",
      1
     ],
     "destination": [
      "obj-335",
      1
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
      "obj-335",
      0
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
      "obj-335",
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
      "obj-335",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-328",
      1
     ],
     "destination": [
      "obj-335",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-329",
      0
     ],
     "destination": [
      "obj-335",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-329",
      1
     ],
     "destination": [
      "obj-335",
      1
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
      "obj-335",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-330",
      1
     ],
     "destination": [
      "obj-335",
      1
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
      "obj-336",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-335",
      1
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
      "obj-336",
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
      "obj-337",
      0
     ],
     "destination": [
      "obj-338",
      1
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
      "obj-340",
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
      1
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
      "obj-343",
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
      "obj-340",
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
      "obj-340",
      0
     ]
    }
   }
  ],
  "parameters": {
   "obj-27": [
    "truncation",
    "wildness",
    0
   ],
   "obj-58": [
    "chaos",
    "chaos",
    0
   ],
   "obj-59": [
    "density",
    "density",
    0
   ],
   "obj-114": [
    "bed_threshold",
    "hit level",
    0
   ],
   "obj-115": [
    "bed_speed",
    "speed",
    0
   ],
   "obj-151": [
    "slice_pos",
    "position",
    0
   ],
   "obj-152": [
    "slice_ms",
    "slice",
    0
   ],
   "obj-153": [
    "source_speed",
    "speed",
    0
   ],
   "obj-190": [
    "v1_keep",
    "keep %",
    0
   ],
   "obj-230": [
    "v2_keep",
    "keep %",
    0
   ],
   "obj-270": [
    "v3_keep",
    "keep %",
    0
   ],
   "obj-301": [
    "dly_time",
    "time",
    0
   ],
   "obj-302": [
    "dly_feedback",
    "feedback",
    0
   ],
   "obj-303": [
    "dly_tone",
    "tone",
    0
   ],
   "obj-304": [
    "dly_wobble",
    "wobble",
    0
   ],
   "obj-335": [
    "master",
    "master",
    0
   ]
  }
 }
}