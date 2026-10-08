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
     "text": "AIMAT CHAIN v4",
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
      600.0,
      17.0
     ],
     "text": "a source is transcribed \u2192 continued \u2192 continued again\u2026 you shape what comes out",
     "presentation": 1,
     "presentation_rect": [
      250.0,
      14.0,
      600.0,
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
      1940.0,
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
      280.0,
      246.0
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      44.0,
      280.0,
      246.0
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
      280.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      44.0,
      280.0,
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
      270.0,
      19.0
     ],
     "text": "1 \u00b7 GENERATE (Musika)",
     "presentation": 1,
     "presentation_rect": [
      14.0,
      46.0,
      268.0,
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
      120.0,
      34.0
     ],
     "text": "NEW SOURCE\n(re-seeds the chain)",
     "presentation": 1,
     "presentation_rect": [
      62.0,
      80.0,
      120.0,
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
      86.0,
      22.0
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      192.0,
      84.0,
      86.0,
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
      120.0,
      17.0
     ],
     "text": "NEW BED (techno)",
     "presentation": 1,
     "presentation_rect": [
      62.0,
      134.0,
      120.0,
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
      20.0,
      172.0,
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
      78.0,
      188.0,
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
      78.0,
      212.0,
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
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      140.0,
      45.0
     ],
     "text": "wildness: Musika's\ntruncation (higher =\nless predictable)",
     "presentation": 1,
     "presentation_rect": [
      138.0,
      178.0,
      140.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 3
    }
   },
   {
    "box": {
     "id": "obj-32",
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
      234.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-33",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      110.0,
      17.0
     ],
     "text": "new source every",
     "presentation": 1,
     "presentation_rect": [
      48.0,
      236.0,
      110.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-34",
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
      162.0,
      234.0,
      50.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-35",
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
     "id": "obj-36",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      30.0,
      17.0
     ],
     "text": "sec",
     "presentation": 1,
     "presentation_rect": [
      216.0,
      236.0,
      30.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-37",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      260.0,
      16.0
     ],
     "text": "one Musika job at a time: wait for results",
     "presentation": 1,
     "presentation_rect": [
      20.0,
      266.0,
      260.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-38",
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
     "id": "obj-39",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1640.0,
      930.0,
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
     "id": "obj-40",
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
     "id": "obj-41",
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
     "id": "obj-42",
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
     "id": "obj-43",
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
     "id": "obj-44",
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
     "id": "obj-45",
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
     "id": "obj-46",
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
     "id": "obj-47",
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
     "id": "obj-48",
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
     "id": "obj-49",
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
     "id": "obj-50",
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
     "id": "obj-51",
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
     "id": "obj-52",
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
     "id": "obj-53",
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
     "id": "obj-54",
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
     "id": "obj-55",
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
     "id": "obj-56",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      296.0,
      44.0,
      440.0,
      246.0
     ],
     "presentation": 1,
     "presentation_rect": [
      296.0,
      44.0,
      440.0,
      246.0
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
     "id": "obj-57",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      296.0,
      44.0,
      440.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      296.0,
      44.0,
      440.0,
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
     "id": "obj-58",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      296.0,
      44.0,
      430.0,
      19.0
     ],
     "text": "2 \u00b7 CHAIN REACTION",
     "presentation": 1,
     "presentation_rect": [
      302.0,
      46.0,
      428.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-59",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1900.0,
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
      308.0,
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
     "id": "obj-60",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      1960.0,
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
      360.0,
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
     "id": "obj-61",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2020.0,
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
      412.0,
      78.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "pace",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "pace",
       "parameter_shortname": "pace",
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
     "id": "obj-62",
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
      466.0,
      78.0,
      64.0,
      34.0
     ],
     "parameter_enable": 0,
     "fontsize": 22.0
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
      70.0,
      16.0
     ],
     "text": "generation",
     "presentation": 1,
     "presentation_rect": [
      466.0,
      114.0,
      70.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-64",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      236.0,
      48.0
     ],
     "text": "chaos: how different each generation is\ndensity: notes heard in the source\npace: how fast the voices play",
     "presentation": 1,
     "presentation_rect": [
      308.0,
      136.0,
      236.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 3
    }
   },
   {
    "box": {
     "id": "obj-65",
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
      546.0,
      78.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-66",
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
     "text": "loadmess 1"
    }
   },
   {
    "box": {
     "id": "obj-67",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      160.0,
      17.0
     ],
     "text": "keep feeding back (drift)",
     "presentation": 1,
     "presentation_rect": [
      572.0,
      80.0,
      160.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-68",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2120.0,
      520.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      546.0,
      108.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-69",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      160.0,
      17.0
     ],
     "text": "next generation now",
     "presentation": 1,
     "presentation_rect": [
      572.0,
      110.0,
      160.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
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
      546.0,
      138.0,
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
      160.0,
      17.0
     ],
     "text": "reset chain",
     "presentation": 1,
     "presentation_rect": [
      572.0,
      140.0,
      160.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-72",
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
      546.0,
      168.0,
      36.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-73",
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
     "text": "loadmess 4"
    }
   },
   {
    "box": {
     "id": "obj-74",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      146.0,
      16.0
     ],
     "text": "MIDI-DDSP every n (0 off)",
     "presentation": 1,
     "presentation_rect": [
      586.0,
      170.0,
      146.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-75",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1900.0,
      580.0,
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
     "id": "obj-76",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1960.0,
      580.0,
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
     "id": "obj-77",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2080.0,
      580.0,
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
     "id": "obj-78",
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
     "id": "obj-79",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2120.0,
      550.0,
      65.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "advance"
    }
   },
   {
    "box": {
     "id": "obj-80",
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
     "id": "obj-81",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2020.0,
      580.0,
      135.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "expr pow(4\\, $f1)"
    }
   },
   {
    "box": {
     "id": "obj-82",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      2020.0,
      610.0,
      100.0,
      22.0
     ],
     "text": "s chain_pace"
    }
   },
   {
    "box": {
     "id": "obj-83",
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
     "text": "ready: generate a source",
     "presentation": 1,
     "presentation_rect": [
      308.0,
      202.0,
      416.0,
      24.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-84",
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
      308.0,
      234.0,
      70.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-85",
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
      380.0,
      232.0,
      344.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-86",
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
     "id": "obj-87",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      416.0,
      16.0
     ],
     "text": "the chain runs by itself while drift is on: shape it with the mixer",
     "presentation": 1,
     "presentation_rect": [
      308.0,
      262.0,
      416.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-88",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1600.0,
      260.0,
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
     "id": "obj-89",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1730.0,
      260.0,
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
     "id": "obj-90",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      1850.0,
      260.0,
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
     "id": "obj-91",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      744.0,
      44.0,
      322.0,
      246.0
     ],
     "presentation": 1,
     "presentation_rect": [
      744.0,
      44.0,
      322.0,
      246.0
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
     "id": "obj-92",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      744.0,
      44.0,
      322.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      744.0,
      44.0,
      322.0,
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
     "id": "obj-93",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      744.0,
      44.0,
      312.0,
      19.0
     ],
     "text": "3 \u00b7 BED (techno) \u00b7 snap loop",
     "presentation": 1,
     "presentation_rect": [
      750.0,
      46.0,
      310.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-94",
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
     "id": "obj-95",
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
     "id": "obj-96",
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
     "id": "obj-97",
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
     "id": "obj-98",
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
     "id": "obj-99",
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
     "id": "obj-100",
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
     "id": "obj-101",
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
     "id": "obj-102",
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
     "id": "obj-103",
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
     "id": "obj-104",
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
     "id": "obj-105",
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
     "id": "obj-106",
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
     "id": "obj-107",
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
     "id": "obj-108",
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
     "id": "obj-109",
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
     "id": "obj-110",
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
     "id": "obj-111",
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
     "id": "obj-112",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      420.0,
      28.0,
      28.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      756.0,
      78.0,
      28.0,
      28.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-113",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      36.0,
      17.0
     ],
     "text": "ARM",
     "presentation": 1,
     "presentation_rect": [
      788.0,
      84.0,
      36.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-114",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2440.0,
      420.0,
      28.0,
      28.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      834.0,
      78.0,
      28.0,
      28.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-115",
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
      866.0,
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
     "id": "obj-116",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      450.0,
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
     "id": "obj-117",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2440.0,
      480.0,
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
     "id": "obj-118",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      2500.0,
      420.0,
      84.0,
      22.0
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "presentation": 1,
     "presentation_rect": [
      970.0,
      82.0,
      84.0,
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
     "id": "obj-119",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2500.0,
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
     "id": "obj-120",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2500.0,
      450.0,
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
     "id": "obj-121",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2500.0,
      480.0,
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
     "id": "obj-122",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2600.0,
      420.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      756.0,
      114.0,
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
     "id": "obj-123",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2720.0,
      540.0,
      18.0,
      18.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      806.0,
      130.0,
      18.0,
      18.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-124",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      26.0,
      16.0
     ],
     "text": "hit",
     "presentation": 1,
     "presentation_rect": [
      828.0,
      130.0,
      26.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-125",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      190.0,
      32.0
     ],
     "text": "ARM catches the next drum hit\nand loops exactly N hits",
     "presentation": 1,
     "presentation_rect": [
      864.0,
      118.0,
      190.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-126",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2800.0,
      420.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      756.0,
      172.0,
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
       "parameter_mmin": 0.0,
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
     "id": "obj-127",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2860.0,
      420.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      808.0,
      172.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "bed_pitch",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "bed_pitch",
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
     "id": "obj-128",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2920.0,
      420.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      860.0,
      172.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "bed_glide",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "bed_glide",
       "parameter_shortname": "glide",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 4000.0,
       "parameter_initial": [
        80.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-129",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2980.0,
      420.0,
      20.0,
      20.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      914.0,
      174.0,
      20.0,
      20.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-130",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      16.0
     ],
     "text": "lock pitch",
     "presentation": 1,
     "presentation_rect": [
      938.0,
      175.0,
      70.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-131",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3020.0,
      420.0,
      20.0,
      20.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      914.0,
      200.0,
      20.0,
      20.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-132",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      16.0
     ],
     "text": "reverse",
     "presentation": 1,
     "presentation_rect": [
      938.0,
      201.0,
      70.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-133",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2800.0,
      480.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "* 1."
    }
   },
   {
    "box": {
     "id": "obj-134",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2800.0,
      450.0,
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
     "id": "obj-135",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3020.0,
      450.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "int"
     ],
     "text": "t b i"
    }
   },
   {
    "box": {
     "id": "obj-136",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3060.0,
      480.0,
      128.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "expr 1 - 2 * $i1"
    }
   },
   {
    "box": {
     "id": "obj-137",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2800.0,
      510.0,
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
     "id": "obj-138",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      2800.0,
      540.0,
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
     "id": "obj-139",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2980.0,
      390.0,
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
     "id": "obj-140",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2980.0,
      510.0,
      149.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend timestretch"
    }
   },
   {
    "box": {
     "id": "obj-141",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2860.0,
      480.0,
      58.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "* 100."
    }
   },
   {
    "box": {
     "id": "obj-142",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2860.0,
      510.0,
      170.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend pitchshiftcent"
    }
   },
   {
    "box": {
     "id": "obj-143",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2500.0,
      540.0,
      298.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "full loop",
     "presentation": 1,
     "presentation_rect": [
      756.0,
      230.0,
      298.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-144",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      300.0,
      15.0
     ],
     "text": "speed bends pitch like tape, unless lock pitch is on",
     "presentation": 1,
     "presentation_rect": [
      756.0,
      258.0,
      300.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-145",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      580.0,
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
     "id": "obj-146",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      608.0,
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
     "id": "obj-147",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      636.0,
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
     "id": "obj-148",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2400.0,
      664.0,
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
     "id": "obj-149",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      692.0,
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
     "id": "obj-150",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      2400.0,
      720.0,
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
     "id": "obj-151",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      748.0,
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
     "id": "obj-152",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      2400.0,
      776.0,
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
     "id": "obj-153",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1074.0,
      44.0,
      318.0,
      246.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1074.0,
      44.0,
      318.0,
      246.0
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
     "id": "obj-154",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1074.0,
      44.0,
      318.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1074.0,
      44.0,
      318.0,
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
     "id": "obj-155",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1074.0,
      44.0,
      308.0,
      19.0
     ],
     "text": "4 \u00b7 SOURCE (feeds the chain) \u00b7 slice",
     "presentation": 1,
     "presentation_rect": [
      1080.0,
      46.0,
      306.0,
      20.0
     ],
     "fontsize": 13.0,
     "linecount": 1,
     "fontface": 1
    }
   },
   {
    "box": {
     "id": "obj-156",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      3100.0,
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
     "id": "obj-157",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3250.0,
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
     "id": "obj-158",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3250.0,
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
     "id": "obj-159",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3390.0,
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
     "id": "obj-160",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3100.0,
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
     "id": "obj-161",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3175.0,
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
     "id": "obj-162",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3175.0,
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
     "id": "obj-163",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3390.0,
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
     "id": "obj-164",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3390.0,
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
     "id": "obj-165",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 4,
     "patching_rect": [
      3175.0,
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
     "id": "obj-166",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 3,
     "patching_rect": [
      3100.0,
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
     "id": "obj-167",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3320.0,
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
     "id": "obj-168",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3400.0,
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
     "id": "obj-169",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3400.0,
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
     "id": "obj-170",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3320.0,
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
     "id": "obj-171",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      3320.0,
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
     "id": "obj-172",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3100.0,
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
     "id": "obj-173",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3165.0,
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
     "id": "obj-174",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3100.0,
      420.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1086.0,
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
     "id": "obj-175",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3160.0,
      420.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1138.0,
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
     "id": "obj-176",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      190.0,
      32.0
     ],
     "text": "slice 0 = the whole clip;\nsmall slices stutter",
     "presentation": 1,
     "presentation_rect": [
      1194.0,
      82.0,
      190.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-177",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3100.0,
      480.0,
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
     "id": "obj-178",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3100.0,
      510.0,
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
     "id": "obj-179",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3300.0,
      420.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1086.0,
      172.0,
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
       "parameter_mmin": 0.0,
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
     "id": "obj-180",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3360.0,
      420.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1138.0,
      172.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "source_pitch",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "source_pitch",
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
     "id": "obj-181",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3420.0,
      420.0,
      44.0,
      48.0
     ],
     "outlettype": [
      "",
      "float"
     ],
     "presentation": 1,
     "presentation_rect": [
      1190.0,
      172.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "source_glide",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "source_glide",
       "parameter_shortname": "glide",
       "parameter_type": 0,
       "parameter_mmin": 0.0,
       "parameter_mmax": 4000.0,
       "parameter_initial": [
        80.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 2
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-182",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3480.0,
      420.0,
      20.0,
      20.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1244.0,
      174.0,
      20.0,
      20.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-183",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      70.0,
      16.0
     ],
     "text": "lock pitch",
     "presentation": 1,
     "presentation_rect": [
      1268.0,
      175.0,
      70.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-184",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3520.0,
      420.0,
      20.0,
      20.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1244.0,
      200.0,
      20.0,
      20.0
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
      70.0,
      16.0
     ],
     "text": "reverse",
     "presentation": 1,
     "presentation_rect": [
      1268.0,
      201.0,
      70.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-186",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3300.0,
      480.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "* 1."
    }
   },
   {
    "box": {
     "id": "obj-187",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3300.0,
      450.0,
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
     "id": "obj-188",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3520.0,
      450.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "bang",
      "int"
     ],
     "text": "t b i"
    }
   },
   {
    "box": {
     "id": "obj-189",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3560.0,
      480.0,
      128.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "expr 1 - 2 * $i1"
    }
   },
   {
    "box": {
     "id": "obj-190",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3300.0,
      510.0,
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
     "id": "obj-191",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      3300.0,
      540.0,
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
     "id": "obj-192",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3480.0,
      390.0,
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
     "id": "obj-193",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3480.0,
      510.0,
      149.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend timestretch"
    }
   },
   {
    "box": {
     "id": "obj-194",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3360.0,
      480.0,
      58.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "* 100."
    }
   },
   {
    "box": {
     "id": "obj-195",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3360.0,
      510.0,
      170.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "prepend pitchshiftcent"
    }
   },
   {
    "box": {
     "id": "obj-196",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3100.0,
      540.0,
      294.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "full loop",
     "presentation": 1,
     "presentation_rect": [
      1086.0,
      230.0,
      294.0,
      22.0
     ]
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
      290.0,
      15.0
     ],
     "text": "this is the audio that gets transcribed",
     "presentation": 1,
     "presentation_rect": [
      1086.0,
      258.0,
      290.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-198",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      296.0,
      254.0,
      118.0
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      296.0,
      254.0,
      118.0
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
     "id": "obj-199",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      296.0,
      254.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      296.0,
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
     "id": "obj-200",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      8.0,
      296.0,
      244.0,
      19.0
     ],
     "text": "VOICE 1",
     "presentation": 1,
     "presentation_rect": [
      14.0,
      298.0,
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
     "id": "obj-201",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 5,
     "patching_rect": [
      3700.0,
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
     "id": "obj-202",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
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
     "id": "obj-203",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      170.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "* 1."
    }
   },
   {
    "box": {
     "id": "obj-204",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      3760.0,
      140.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r chain_pace"
    }
   },
   {
    "box": {
     "id": "obj-205",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      200.0,
      40.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "i"
    }
   },
   {
    "box": {
     "id": "obj-206",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3700.0,
      230.0,
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
     "id": "obj-207",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      3700.0,
      260.0,
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
     "id": "obj-208",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      3830.0,
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
     "id": "obj-209",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      3960.0,
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
     "id": "obj-210",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4010.0,
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
     "id": "obj-211",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3880.0,
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
     "id": "obj-212",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4080.0,
      200.0,
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
      3800.0,
      300.0,
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
      3880.0,
      330.0,
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
     "id": "obj-215",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      3880.0,
      360.0,
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
      3800.0,
      330.0,
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
      3740.0,
      330.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      220.0,
      360.0,
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
      3740.0,
      300.0,
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
      216.0,
      384.0,
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
      3800.0,
      360.0,
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
      3700.0,
      400.0,
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
      3700.0,
      430.0,
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
      3900.0,
      400.0,
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
      4030.0,
      400.0,
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
      328.0,
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
      180.0,
      330.0,
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
      3900.0,
      460.0,
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
      60.0,
      362.0,
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
      3900.0,
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
     "id": "obj-228",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      3900.0,
      490.0,
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
      40.0,
      16.0
     ],
     "text": "scale",
     "presentation": 1,
     "presentation_rect": [
      20.0,
      364.0,
      40.0,
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
      158.0,
      358.0,
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
     "id": "obj-231",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4020.0,
      520.0,
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
      3960.0,
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
      3700.0,
      560.0,
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
      3850.0,
      530.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      20.0,
      328.0,
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
      64.0,
      17.0
     ],
     "text": "load synth",
     "presentation": 1,
     "presentation_rect": [
      48.0,
      330.0,
      64.0,
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
      3890.0,
      530.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      116.0,
      328.0,
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
      142.0,
      332.0,
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
      3850.0,
      500.0,
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
      3900.0,
      500.0,
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
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      270.0,
      296.0,
      254.0,
      118.0
     ],
     "presentation": 1,
     "presentation_rect": [
      270.0,
      296.0,
      254.0,
      118.0
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
     "id": "obj-241",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      270.0,
      296.0,
      254.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      270.0,
      296.0,
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
     "id": "obj-242",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      270.0,
      296.0,
      244.0,
      19.0
     ],
     "text": "VOICE 2",
     "presentation": 1,
     "presentation_rect": [
      276.0,
      298.0,
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
     "id": "obj-243",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 5,
     "patching_rect": [
      4220.0,
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
     "id": "obj-244",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4220.0,
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
     "id": "obj-245",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4220.0,
      170.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "* 1."
    }
   },
   {
    "box": {
     "id": "obj-246",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      4280.0,
      140.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r chain_pace"
    }
   },
   {
    "box": {
     "id": "obj-247",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4220.0,
      200.0,
      40.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "i"
    }
   },
   {
    "box": {
     "id": "obj-248",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4220.0,
      230.0,
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
     "id": "obj-249",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4220.0,
      260.0,
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
     "id": "obj-250",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4350.0,
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
     "id": "obj-251",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4480.0,
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
     "id": "obj-252",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4530.0,
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
     "id": "obj-253",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4400.0,
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
     "id": "obj-254",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4600.0,
      200.0,
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
     "id": "obj-255",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4320.0,
      300.0,
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
     "id": "obj-256",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4400.0,
      330.0,
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
     "id": "obj-257",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4400.0,
      360.0,
      135.0,
      22.0
     ],
     "text": "s chain_to_engine"
    }
   },
   {
    "box": {
     "id": "obj-258",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4320.0,
      330.0,
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
     "id": "obj-259",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4260.0,
      330.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      482.0,
      360.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-260",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4260.0,
      300.0,
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
     "id": "obj-261",
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
      384.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-262",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4320.0,
      360.0,
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
     "id": "obj-263",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 8,
     "patching_rect": [
      4220.0,
      400.0,
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
     "id": "obj-264",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4220.0,
      430.0,
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
     "id": "obj-265",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4420.0,
      400.0,
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
     "id": "obj-266",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4550.0,
      400.0,
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
      328.0,
      40.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-267",
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
      330.0,
      28.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-268",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4420.0,
      460.0,
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
      322.0,
      362.0,
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
     "id": "obj-269",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4420.0,
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
     "id": "obj-270",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4420.0,
      490.0,
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
     "id": "obj-271",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      16.0
     ],
     "text": "scale",
     "presentation": 1,
     "presentation_rect": [
      282.0,
      364.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-272",
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
      420.0,
      358.0,
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
     "id": "obj-273",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4540.0,
      520.0,
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
     "id": "obj-274",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      4480.0,
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
     "id": "obj-275",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      4220.0,
      560.0,
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
     "id": "obj-276",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4370.0,
      530.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      282.0,
      328.0,
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
      64.0,
      17.0
     ],
     "text": "load synth",
     "presentation": 1,
     "presentation_rect": [
      310.0,
      330.0,
      64.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-278",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4410.0,
      530.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      378.0,
      328.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-279",
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
      404.0,
      332.0,
      30.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-280",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4370.0,
      500.0,
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
     "id": "obj-281",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4420.0,
      500.0,
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
     "id": "obj-282",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      532.0,
      296.0,
      254.0,
      118.0
     ],
     "presentation": 1,
     "presentation_rect": [
      532.0,
      296.0,
      254.0,
      118.0
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
     "id": "obj-283",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      532.0,
      296.0,
      254.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      532.0,
      296.0,
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
     "id": "obj-284",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      532.0,
      296.0,
      244.0,
      19.0
     ],
     "text": "VOICE 3",
     "presentation": 1,
     "presentation_rect": [
      538.0,
      298.0,
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
     "id": "obj-285",
     "maxclass": "newobj",
     "numinlets": 5,
     "numoutlets": 5,
     "patching_rect": [
      4740.0,
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
     "id": "obj-286",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4740.0,
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
     "id": "obj-287",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4740.0,
      170.0,
      44.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "* 1."
    }
   },
   {
    "box": {
     "id": "obj-288",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      4800.0,
      140.0,
      100.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "r chain_pace"
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
      200.0,
      40.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "i"
    }
   },
   {
    "box": {
     "id": "obj-290",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4740.0,
      230.0,
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
     "id": "obj-291",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4740.0,
      260.0,
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
     "id": "obj-292",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4870.0,
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
     "id": "obj-293",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5000.0,
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
     "id": "obj-294",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      5050.0,
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
     "id": "obj-295",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4920.0,
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
     "id": "obj-296",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5120.0,
      200.0,
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
     "id": "obj-297",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      4840.0,
      300.0,
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
     "id": "obj-298",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4920.0,
      330.0,
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
     "id": "obj-299",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      4920.0,
      360.0,
      135.0,
      22.0
     ],
     "text": "s chain_to_engine"
    }
   },
   {
    "box": {
     "id": "obj-300",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4840.0,
      330.0,
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
     "id": "obj-301",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4780.0,
      330.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      744.0,
      360.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-302",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4780.0,
      300.0,
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
     "id": "obj-303",
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
      384.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-304",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4840.0,
      360.0,
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
     "id": "obj-305",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 8,
     "patching_rect": [
      4740.0,
      400.0,
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
     "id": "obj-306",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4740.0,
      430.0,
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
     "id": "obj-307",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4940.0,
      400.0,
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
     "id": "obj-308",
     "maxclass": "number",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      5070.0,
      400.0,
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
      328.0,
      40.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-309",
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
      330.0,
      28.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-310",
     "maxclass": "umenu",
     "numinlets": 1,
     "numoutlets": 3,
     "patching_rect": [
      4940.0,
      460.0,
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
      584.0,
      362.0,
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
     "id": "obj-311",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4940.0,
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
     "id": "obj-312",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4940.0,
      490.0,
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
     "id": "obj-313",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      40.0,
      16.0
     ],
     "text": "scale",
     "presentation": 1,
     "presentation_rect": [
      544.0,
      364.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-314",
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
      682.0,
      358.0,
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
     "id": "obj-315",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      5060.0,
      520.0,
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
     "id": "obj-316",
     "maxclass": "newobj",
     "numinlets": 0,
     "numoutlets": 1,
     "patching_rect": [
      5000.0,
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
     "id": "obj-317",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      4740.0,
      560.0,
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
     "id": "obj-318",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4890.0,
      530.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      544.0,
      328.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-319",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      64.0,
      17.0
     ],
     "text": "load synth",
     "presentation": 1,
     "presentation_rect": [
      572.0,
      330.0,
      64.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-320",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      4930.0,
      530.0,
      24.0,
      24.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      640.0,
      328.0,
      24.0,
      24.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-321",
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
      666.0,
      332.0,
      30.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-322",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4890.0,
      500.0,
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
     "id": "obj-323",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      4940.0,
      500.0,
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
     "id": "obj-324",
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
     "id": "obj-325",
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
     "id": "obj-326",
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
     "text": "buffer~ chain_ddsp"
    }
   },
   {
    "box": {
     "id": "obj-327",
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
     "id": "obj-328",
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
     "id": "obj-329",
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
     "id": "obj-330",
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
     "text": "groove~ chain_ddsp 1"
    }
   },
   {
    "box": {
     "id": "obj-331",
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
     "id": "obj-332",
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
     "id": "obj-333",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      794.0,
      296.0,
      598.0,
      118.0
     ],
     "presentation": 1,
     "presentation_rect": [
      794.0,
      296.0,
      598.0,
      118.0
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
     "id": "obj-334",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      794.0,
      296.0,
      598.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      794.0,
      296.0,
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
     "id": "obj-335",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      794.0,
      296.0,
      588.0,
      19.0
     ],
     "text": "5 \u00b7 SPACE \u00b7 reverb (plug-in) \u00b7 delay \u00b7 macros",
     "presentation": 1,
     "presentation_rect": [
      800.0,
      298.0,
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
     "id": "obj-336",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 8,
     "patching_rect": [
      5800.0,
      300.0,
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
     "id": "obj-337",
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
      806.0,
      328.0,
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
      80.0,
      17.0
     ],
     "text": "load reverb",
     "presentation": 1,
     "presentation_rect": [
      832.0,
      330.0,
      80.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-339",
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
      806.0,
      356.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-340",
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
      832.0,
      358.0,
      80.0,
      19.0
     ],
     "fontsize": 11.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-341",
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
     "id": "obj-342",
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
     "id": "obj-343",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      140.0,
      15.0
     ],
     "text": "set the plug-in's mix to 100% wet",
     "presentation": 1,
     "presentation_rect": [
      806.0,
      384.0,
      140.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-344",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      6100.0,
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
      326.0,
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
       "parameter_mmin": 40.0,
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
     "id": "obj-345",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      6160.0,
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
      1002.0,
      326.0,
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
       "parameter_mmax": 0.95,
       "parameter_initial": [
        0.35
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 1
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-346",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      6220.0,
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
      1050.0,
      326.0,
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
       "parameter_mmin": 300.0,
       "parameter_mmax": 12000.0,
       "parameter_initial": [
        3000.0
       ],
       "parameter_initial_enable": 1,
       "parameter_unitstyle": 3
      }
     }
    }
   },
   {
    "box": {
     "id": "obj-347",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      6280.0,
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
      1098.0,
      326.0,
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
     "id": "obj-348",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6340.0,
      200.0,
      20.0,
      20.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1150.0,
      330.0,
      20.0,
      20.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-349",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      34.0,
      16.0
     ],
     "text": "hold",
     "presentation": 1,
     "presentation_rect": [
      1146.0,
      352.0,
      34.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
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
      230.0,
      30.0
     ],
     "text": "delay bounces left\u2194right \u00b7 hold = freeze\nwhat's in it into an endless loop",
     "presentation": 1,
     "presentation_rect": [
      954.0,
      380.0,
      230.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-351",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
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
     "id": "obj-352",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      230.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 375."
    }
   },
   {
    "box": {
     "id": "obj-353",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      6100.0,
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
     "id": "obj-354",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6280.0,
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
     "id": "obj-355",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6280.0,
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
     "id": "obj-356",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6280.0,
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
     "id": "obj-357",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
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
     "id": "obj-358",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      372.0,
      121.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "clip~ 20. 4900."
    }
   },
   {
    "box": {
     "id": "obj-359",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6200.0,
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
     "id": "obj-360",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      6200.0,
      400.0,
      121.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "clip~ 20. 4900."
    }
   },
   {
    "box": {
     "id": "obj-361",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6160.0,
      440.0,
      86.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "pak 0.35 0"
    }
   },
   {
    "box": {
     "id": "obj-362",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6160.0,
      470.0,
      198.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "expr $f1 * (1 - $i2) + $i2"
    }
   },
   {
    "box": {
     "id": "obj-363",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6160.0,
      410.0,
      107.0,
      22.0
     ],
     "outlettype": [
      ""
     ],
     "text": "loadmess 0.35"
    }
   },
   {
    "box": {
     "id": "obj-364",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6340.0,
      440.0,
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
     "id": "obj-365",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      520.0,
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
     "id": "obj-366",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      550.0,
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
     "id": "obj-367",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      580.0,
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
     "id": "obj-368",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      610.0,
      128.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "lores~ 3000. 0.2"
    }
   },
   {
    "box": {
     "id": "obj-369",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      640.0,
      114.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "overdrive~ 1.2"
    }
   },
   {
    "box": {
     "id": "obj-370",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6100.0,
      670.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.35"
    }
   },
   {
    "box": {
     "id": "obj-371",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6300.0,
      520.0,
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
     "id": "obj-372",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6300.0,
      550.0,
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
     "id": "obj-373",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      6300.0,
      580.0,
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
     "id": "obj-374",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "patching_rect": [
      6300.0,
      610.0,
      128.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "lores~ 3000. 0.2"
    }
   },
   {
    "box": {
     "id": "obj-375",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6300.0,
      640.0,
      114.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "overdrive~ 1.2"
    }
   },
   {
    "box": {
     "id": "obj-376",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      6300.0,
      670.0,
      65.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0.35"
    }
   },
   {
    "box": {
     "id": "obj-377",
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
      1190.0,
      326.0,
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
     "id": "obj-378",
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
      1238.0,
      326.0,
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
     "id": "obj-379",
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
      1286.0,
      326.0,
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
     "id": "obj-380",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      0.0,
      0.0,
      196.0,
      30.0
     ],
     "text": "WASH / ECHO add reverb / delay\nto everything at once",
     "presentation": 1,
     "presentation_rect": [
      1190.0,
      380.0,
      196.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-381",
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
     "id": "obj-382",
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
     "id": "obj-383",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
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
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      8.0,
      420.0,
      150.0,
      370.0
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
     "id": "obj-384",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
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
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      166.0,
      420.0,
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
     "id": "obj-385",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
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
      "signal"
     ],
     "presentation": 1,
     "presentation_rect": [
      324.0,
      420.0,
      150.0,
      370.0
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
     "id": "obj-386",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      7510.0,
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
      482.0,
      420.0,
      150.0,
      370.0
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
     "id": "obj-387",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      7680.0,
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
      640.0,
      420.0,
      150.0,
      370.0
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
     "id": "obj-388",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 6,
     "patching_rect": [
      7850.0,
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
      798.0,
      420.0,
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
     "id": "obj-389",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      8020.0,
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
      956.0,
      420.0,
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
     "id": "obj-390",
     "maxclass": "bpatcher",
     "numinlets": 2,
     "numoutlets": 2,
     "patching_rect": [
      8190.0,
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
      1114.0,
      420.0,
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
     "id": "obj-391",
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
     "id": "obj-392",
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
     "id": "obj-393",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1272.0,
      420.0,
      120.0,
      370.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1272.0,
      420.0,
      120.0,
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
     "id": "obj-394",
     "maxclass": "panel",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1272.0,
      420.0,
      120.0,
      24.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1272.0,
      420.0,
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
     "id": "obj-395",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1272.0,
      420.0,
      110.0,
      19.0
     ],
     "text": "MASTER",
     "presentation": 1,
     "presentation_rect": [
      1278.0,
      422.0,
      108.0,
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
     "id": "obj-396",
     "maxclass": "live.gain~",
     "numinlets": 2,
     "numoutlets": 5,
     "patching_rect": [
      8500.0,
      520.0,
      48.0,
      250.0
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
      456.0,
      48.0,
      250.0
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
     "id": "obj-397",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "patching_rect": [
      8600.0,
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
      1340.0,
      456.0,
      44.0,
      48.0
     ],
     "parameter_enable": 1,
     "showname": 1,
     "varname": "master_tone",
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_longname": "master_tone",
       "parameter_shortname": "LP\u00b7tone\u00b7HP",
       "parameter_type": 0,
       "parameter_mmin": -1.0,
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
     "id": "obj-398",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 10,
     "patching_rect": [
      8600.0,
      460.0,
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
      "",
      ""
     ],
     "text": "js chain_strip.js"
    }
   },
   {
    "box": {
     "id": "obj-399",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      8600.0,
      430.0,
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
     "id": "obj-400",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      8760.0,
      430.0,
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
     "id": "obj-401",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 4,
     "patching_rect": [
      8500.0,
      560.0,
      114.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "svf~ 18000. 0."
    }
   },
   {
    "box": {
     "id": "obj-402",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      8500.0,
      590.0,
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
     "id": "obj-403",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      8540.0,
      590.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0."
    }
   },
   {
    "box": {
     "id": "obj-404",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      8500.0,
      620.0,
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
     "id": "obj-405",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 4,
     "patching_rect": [
      8580.0,
      560.0,
      114.0,
      22.0
     ],
     "outlettype": [
      "signal",
      "signal",
      "signal",
      "signal"
     ],
     "text": "svf~ 18000. 0."
    }
   },
   {
    "box": {
     "id": "obj-406",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      8580.0,
      590.0,
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
     "id": "obj-407",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      8620.0,
      590.0,
      51.0,
      22.0
     ],
     "outlettype": [
      "signal"
     ],
     "text": "*~ 0."
    }
   },
   {
    "box": {
     "id": "obj-408",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      8580.0,
      620.0,
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
     "id": "obj-409",
     "maxclass": "ezdac~",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      8500.0,
      660.0,
      45.0,
      45.0
     ],
     "presentation": 1,
     "presentation_rect": [
      1340.0,
      520.0,
      45.0,
      45.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-410",
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
      1340.0,
      566.0,
      50.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-411",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      8600.0,
      700.0,
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
     "id": "obj-412",
     "maxclass": "button",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      8600.0,
      660.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "bang"
     ],
     "presentation": 1,
     "presentation_rect": [
      1340.0,
      606.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-413",
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
      1340.0,
      630.0,
      50.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-414",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "patching_rect": [
      8600.0,
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
     "id": "obj-415",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "patching_rect": [
      8640.0,
      660.0,
      22.0,
      22.0
     ],
     "outlettype": [
      "int"
     ],
     "presentation": 1,
     "presentation_rect": [
      1340.0,
      652.0,
      22.0,
      22.0
     ],
     "parameter_enable": 0
    }
   },
   {
    "box": {
     "id": "obj-416",
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
      1340.0,
      676.0,
      40.0,
      18.0
     ],
     "fontsize": 10.0,
     "linecount": 1
    }
   },
   {
    "box": {
     "id": "obj-417",
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
      720.0,
      100.0,
      17.0
     ],
     "fontsize": 9.0,
     "linecount": 2
    }
   },
   {
    "box": {
     "id": "obj-418",
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
      "obj-35",
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
      "obj-32",
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
      "obj-34",
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
      "obj-39",
      0
     ],
     "destination": [
      "obj-38",
      1
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
      "obj-43",
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
      "obj-27",
      0
     ],
     "destination": [
      "obj-42",
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
      "obj-42",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      2
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
      "obj-40",
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
      "obj-46",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
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
      "obj-47",
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
      "obj-27",
      0
     ],
     "destination": [
      "obj-49",
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
      "obj-49",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-48",
      2
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
      "obj-40",
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
      "obj-53",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-48",
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
      "obj-54",
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
      "obj-55",
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
      "obj-49",
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
      "obj-40",
      1
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
      "obj-62",
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
      "obj-65",
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
      "obj-72",
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
      "obj-75",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-75",
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
      "obj-60",
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
      "obj-65",
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
      "obj-77",
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
      "obj-72",
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
      "obj-78",
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
      "obj-68",
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
      "obj-79",
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
      "obj-61",
      0
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
      "obj-82",
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
      "obj-83",
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
      "obj-86",
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
      "obj-85",
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
      "obj-88",
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
      "obj-90",
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
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-94",
      2
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
      "obj-95",
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
      "obj-94",
      1
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
      "obj-97",
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
      "obj-94",
      1
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
      "obj-100",
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
      "obj-102",
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
      "obj-100",
      0
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
      "obj-98",
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
      "obj-103",
      0
     ],
     "destination": [
      "obj-104",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-103",
      1
     ],
     "destination": [
      "obj-104",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
      2
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
      "obj-104",
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
      0
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
      "obj-103",
      2
     ],
     "destination": [
      "obj-105",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-103",
      2
     ],
     "destination": [
      "obj-107",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-105",
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
      "obj-107",
      0
     ],
     "destination": [
      "obj-108",
      1
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
      "obj-109",
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
      "obj-110",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
      1
     ],
     "destination": [
      "obj-111",
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
      "obj-110",
      1
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
      "obj-111",
      1
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
      "obj-94",
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
      "obj-103",
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
      "obj-103",
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
      "obj-120",
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
      "obj-121",
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
      "obj-103",
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
      "obj-133",
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
      "obj-133",
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
      "obj-135",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-135",
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
      "obj-133",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-135",
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
      "obj-137",
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
      "obj-137",
      1
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
      "obj-104",
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
      "obj-104",
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
      "obj-141",
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
      "obj-142",
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
      "obj-104",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-103",
      3
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
      "obj-104",
      0
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
      "obj-122",
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
      "obj-150",
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
      "obj-123",
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
      "obj-151",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
      2
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
      "obj-103",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-156",
      2
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
      "obj-158",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-156",
      1
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
      "obj-158",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-156",
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
      "obj-161",
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
      "obj-162",
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
      "obj-160",
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
      "obj-163",
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
      "obj-165",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-160",
      0
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
      "obj-163",
      0
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
      "obj-165",
      0
     ],
     "destination": [
      "obj-166",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-165",
      1
     ],
     "destination": [
      "obj-166",
      2
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
      "obj-168",
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
      "obj-165",
      2
     ],
     "destination": [
      "obj-167",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-165",
      2
     ],
     "destination": [
      "obj-169",
      1
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
      "obj-169",
      0
     ],
     "destination": [
      "obj-170",
      1
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
      "obj-166",
      0
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
      "obj-166",
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
      "obj-171",
      0
     ],
     "destination": [
      "obj-172",
      1
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
      "obj-173",
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
      "obj-156",
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
      "obj-177",
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
      "obj-177",
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
      "obj-178",
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
      "obj-165",
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
      "obj-179",
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
      "obj-184",
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
      "obj-188",
      1
     ],
     "destination": [
      "obj-189",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-189",
      0
     ],
     "destination": [
      "obj-186",
      1
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
      "obj-186",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-186",
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
      "obj-181",
      0
     ],
     "destination": [
      "obj-190",
      1
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
      "obj-166",
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
      "obj-182",
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
      "obj-193",
      0
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
      "obj-180",
      0
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
      "obj-195",
      0
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
      "obj-165",
      3
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
      "obj-17",
      0
     ],
     "destination": [
      "obj-201",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-201",
      0
     ],
     "destination": [
      "obj-202",
      1
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
      "obj-203",
      1
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
      "obj-207",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-201",
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
      "obj-201",
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
      "obj-207",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-208",
      2
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
      "obj-208",
      2
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
      "obj-208",
      1
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
      "obj-208",
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
      "obj-209",
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
      "obj-211",
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
      "obj-207",
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
      "obj-202",
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
      "obj-210",
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
      "obj-201",
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
      "obj-201",
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
      "obj-209",
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
      "obj-210",
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
      "obj-244",
      1
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
      1
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
      "obj-247",
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
      "obj-248",
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
      "obj-249",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-243",
      2
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
      "obj-243",
      3
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
      "obj-249",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-250",
      2
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
      2
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
      "obj-250",
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
      "obj-250",
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
      "obj-251",
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
      "obj-249",
      1
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
      "obj-255",
      1
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
      "obj-257",
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
      "obj-259",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-255",
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
      "obj-262",
      1
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
      "obj-244",
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
      "obj-264",
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
      "obj-264",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-243",
      1
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
      "obj-265",
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
      "obj-243",
      1
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
      "obj-269",
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
      1
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
      "obj-264",
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
      "obj-273",
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
      "obj-264",
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
      "obj-251",
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
      "obj-252",
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
      "obj-275",
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
      "obj-280",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-280",
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
      "obj-278",
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
      "obj-275",
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
      "obj-285",
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
      "obj-286",
      1
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
      1
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
      "obj-290",
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
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-285",
      2
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
      "obj-285",
      3
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
      "obj-296",
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
      "obj-292",
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
      "obj-292",
      2
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
      "obj-292",
      1
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
      "obj-292",
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
      "obj-293",
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
      "obj-295",
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
      "obj-291",
      1
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
      "obj-297",
      1
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
      "obj-299",
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
      "obj-301",
      0
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
      "obj-300",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-300",
      0
     ],
     "destination": [
      "obj-304",
      1
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
      "obj-304",
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
      "obj-286",
      0
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
      "obj-305",
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
      "obj-306",
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
      "obj-306",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-285",
      1
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
      "obj-306",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-285",
      1
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
      "obj-310",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-310",
      1
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
      "obj-312",
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
      "obj-306",
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
      "obj-293",
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
      "obj-294",
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
      "obj-317",
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
      "obj-317",
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
      "obj-323",
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
      "obj-317",
      0
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
      "obj-330",
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
      "obj-324",
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
      "obj-325",
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
      "obj-330",
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
      "obj-330",
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
      "obj-13",
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
      "obj-342",
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
      "obj-336",
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
      "obj-351",
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
      "obj-357",
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
      "obj-355",
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
      "obj-356",
      1
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
      1
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
      "obj-357",
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
      "obj-359",
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
      "obj-345",
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
      "obj-348",
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
      "obj-362",
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
      "obj-361",
      0
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
      "obj-366",
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
      "obj-358",
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
      "obj-367",
      0
     ],
     "destination": [
      "obj-368",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-368",
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
      "obj-369",
      0
     ],
     "destination": [
      "obj-370",
      0
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
      "obj-370",
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
      "obj-368",
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
      "obj-371",
      1
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
      "obj-372",
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
      "obj-373",
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
      "obj-373",
      0
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
      "obj-374",
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
      "obj-375",
      0
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
      "obj-362",
      0
     ],
     "destination": [
      "obj-376",
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
      "obj-374",
      1
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
      "obj-372",
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
      "obj-366",
      0
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
      "obj-381",
      0
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
      "obj-382",
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
      "obj-383",
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
      "obj-383",
      1
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
      "obj-384",
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
      "obj-384",
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
      "obj-385",
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
      "obj-385",
      1
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
      "obj-386",
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
      "obj-386",
      1
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
      "obj-387",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-317",
      1
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
      "obj-330",
      0
     ],
     "destination": [
      "obj-388",
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
      "obj-388",
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
      "obj-389",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-336",
      1
     ],
     "destination": [
      "obj-389",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-367",
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
      "obj-373",
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
      "obj-383",
      2
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
      "obj-383",
      3
     ],
     "destination": [
      "obj-336",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-383",
      4
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
      "obj-383",
      5
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
      "obj-384",
      2
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
      "obj-384",
      3
     ],
     "destination": [
      "obj-336",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-384",
      4
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
      "obj-384",
      5
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
      "obj-385",
      2
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
      "obj-385",
      3
     ],
     "destination": [
      "obj-336",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-385",
      4
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
      "obj-385",
      5
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
      "obj-386",
      2
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
      "obj-386",
      3
     ],
     "destination": [
      "obj-336",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-386",
      4
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
      "obj-386",
      5
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
      "obj-387",
      2
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
      "obj-387",
      3
     ],
     "destination": [
      "obj-336",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-387",
      4
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
      "obj-387",
      5
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
      "obj-388",
      2
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
      "obj-388",
      3
     ],
     "destination": [
      "obj-336",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-388",
      4
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
      "obj-388",
      5
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
      "obj-390",
      0
     ],
     "destination": [
      "obj-391",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-390",
      1
     ],
     "destination": [
      "obj-392",
      0
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
      "obj-391",
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
      "obj-392",
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
      "obj-336",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-392",
      0
     ],
     "destination": [
      "obj-336",
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
      "obj-396",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-383",
      1
     ],
     "destination": [
      "obj-396",
      1
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
      "obj-396",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-384",
      1
     ],
     "destination": [
      "obj-396",
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
      "obj-396",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-385",
      1
     ],
     "destination": [
      "obj-396",
      1
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
      "obj-396",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-386",
      1
     ],
     "destination": [
      "obj-396",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-387",
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
      "obj-387",
      1
     ],
     "destination": [
      "obj-396",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-388",
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
      "obj-388",
      1
     ],
     "destination": [
      "obj-396",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-389",
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
      "obj-389",
      1
     ],
     "destination": [
      "obj-396",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-390",
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
      "obj-390",
      1
     ],
     "destination": [
      "obj-396",
      1
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
      "obj-399",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-399",
      0
     ],
     "destination": [
      "obj-398",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-400",
      0
     ],
     "destination": [
      "obj-398",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-396",
      0
     ],
     "destination": [
      "obj-401",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-401",
      0
     ],
     "destination": [
      "obj-402",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-401",
      1
     ],
     "destination": [
      "obj-403",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-402",
      0
     ],
     "destination": [
      "obj-404",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-403",
      0
     ],
     "destination": [
      "obj-404",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      4
     ],
     "destination": [
      "obj-401",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      5
     ],
     "destination": [
      "obj-401",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      6
     ],
     "destination": [
      "obj-402",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      7
     ],
     "destination": [
      "obj-403",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-396",
      1
     ],
     "destination": [
      "obj-405",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-405",
      0
     ],
     "destination": [
      "obj-406",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-405",
      1
     ],
     "destination": [
      "obj-407",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-406",
      0
     ],
     "destination": [
      "obj-408",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-407",
      0
     ],
     "destination": [
      "obj-408",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      4
     ],
     "destination": [
      "obj-405",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      5
     ],
     "destination": [
      "obj-405",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      6
     ],
     "destination": [
      "obj-406",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-398",
      7
     ],
     "destination": [
      "obj-407",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-404",
      0
     ],
     "destination": [
      "obj-409",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-408",
      0
     ],
     "destination": [
      "obj-409",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-404",
      0
     ],
     "destination": [
      "obj-411",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-408",
      0
     ],
     "destination": [
      "obj-411",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-412",
      0
     ],
     "destination": [
      "obj-414",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-414",
      0
     ],
     "destination": [
      "obj-411",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-415",
      0
     ],
     "destination": [
      "obj-411",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
      0
     ],
     "destination": [
      "obj-272",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
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
      "obj-418",
      0
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
      "obj-418",
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
      "obj-418",
      0
     ],
     "destination": [
      "obj-397",
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
   "obj-59": [
    "chaos",
    "chaos",
    0
   ],
   "obj-60": [
    "density",
    "density",
    0
   ],
   "obj-61": [
    "pace",
    "pace",
    0
   ],
   "obj-122": [
    "bed_threshold",
    "hit level",
    0
   ],
   "obj-126": [
    "bed_speed",
    "speed",
    0
   ],
   "obj-127": [
    "bed_pitch",
    "pitch",
    0
   ],
   "obj-128": [
    "bed_glide",
    "glide",
    0
   ],
   "obj-174": [
    "slice_pos",
    "position",
    0
   ],
   "obj-175": [
    "slice_ms",
    "slice",
    0
   ],
   "obj-179": [
    "source_speed",
    "speed",
    0
   ],
   "obj-180": [
    "source_pitch",
    "pitch",
    0
   ],
   "obj-181": [
    "source_glide",
    "glide",
    0
   ],
   "obj-230": [
    "v1_keep",
    "keep %",
    0
   ],
   "obj-272": [
    "v2_keep",
    "keep %",
    0
   ],
   "obj-314": [
    "v3_keep",
    "keep %",
    0
   ],
   "obj-344": [
    "dly_time",
    "time",
    0
   ],
   "obj-345": [
    "dly_feedback",
    "feedback",
    0
   ],
   "obj-346": [
    "dly_tone",
    "tone",
    0
   ],
   "obj-347": [
    "dly_wobble",
    "wobble",
    0
   ],
   "obj-377": [
    "delay_to_reverb",
    "dly\u2192rev",
    0
   ],
   "obj-378": [
    "wash",
    "WASH",
    0
   ],
   "obj-379": [
    "echo",
    "ECHO",
    0
   ],
   "obj-396": [
    "master",
    "master",
    0
   ],
   "obj-397": [
    "master_tone",
    "LP\u00b7tone\u00b7HP",
    0
   ]
  }
 }
}