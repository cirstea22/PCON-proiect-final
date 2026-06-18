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
		"rect" : [ 34.0, 77.0, 1852.0, 921.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 20.0, 420.0, 27.0 ],
					"text" : "Drum Loop Analyzer"
				}

			}
, 			{
				"box" : 				{
					"id" : "steps",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 50.0, 520.0, 20.0 ],
					"text" : "Load a sample, run analysis, then use the playback controls."
				}

			}
, 			{
				"box" : 				{
					"id" : "replace",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 95.0, 70.0, 22.0 ],
					"text" : "replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "buffer",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 115.0, 95.0, 120.0, 22.0 ],
					"text" : "buffer~ drums"
				}

			}
, 			{
				"box" : 				{
					"buffername" : "drums",
					"id" : "waveform",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 30.0, 130.0, 620.0, 155.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "analysis_title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 95.0, 160.0, 20.0 ],
					"text" : "Transient Detection"
				}

			}
, 			{
				"box" : 				{
					"id" : "slice_buffer",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 710.0, 125.0, 120.0, 22.0 ],
					"text" : "buffer~ slices"
				}

			}
, 			{
				"box" : 				{
					"id" : "transient",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 710.0, 155.0, 390.0, 22.0 ],
					"text" : "fluid.buftransientslice~ @source drums @indices slices"
				}

			}
, 			{
				"box" : 				{
					"id" : "process",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 710.0, 190.0, 75.0, 22.0 ],
					"text" : "process"
				}

			}
, 			{
				"box" : 				{
					"id" : "analysis_note",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 800.0, 190.0, 260.0, 20.0 ],
					"text" : "Stores slice positions."
				}

			}
, 			{
				"box" : 				{
					"id" : "level_title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 580.0, 846.0, 100.0, 20.0 ],
					"text" : "Level"
				}

			}
, 			{
				"box" : 				{
					"id" : "meter",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 603.0, 870.0, 130.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "play_title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 325.0, 130.0, 20.0 ],
					"text" : "Playback"
				}

			}
, 			{
				"box" : 				{
					"id" : "play_button",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 355.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "play_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 358.0, 110.0, 20.0 ],
					"text" : "play full loop"
				}

			}
, 			{
				"box" : 				{
					"id" : "play_msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 355.0, 115.0, 22.0 ],
					"text" : "0, 8000 8000"
				}

			}
, 			{
				"box" : 				{
					"id" : "slice_title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 420.0, 170.0, 20.0 ],
					"text" : "Slice Playback"
				}

			}
, 			{
				"box" : 				{
					"id" : "toggle",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 455.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "toggle_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 458.0, 95.0, 20.0 ],
					"text" : "start / stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 175.0, 455.0, 80.0, 22.0 ],
					"text" : "metro 180"
				}

			}
, 			{
				"box" : 				{
					"id" : "random",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 275.0, 455.0, 95.0, 22.0 ],
					"text" : "random 8000"
				}

			}
, 			{
				"box" : 				{
					"id" : "random_num",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 385.0, 455.0, 70.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "trigger",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 275.0, 495.0, 50.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "length_num",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 385.0, 495.0, 70.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "length_default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.0, 495.0, 50.0, 22.0 ],
					"text" : "160"
				}

			}
, 			{
				"box" : 				{
					"id" : "length_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 525.0, 498.0, 105.0, 20.0 ],
					"text" : "length ms"
				}

			}
, 			{
				"box" : 				{
					"id" : "plus",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 340.0, 535.0, 65.0, 22.0 ],
					"text" : "+ 160"
				}

			}
, 			{
				"box" : 				{
					"id" : "pack",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 275.0, 575.0, 80.0, 22.0 ],
					"text" : "pack 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "slice_msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 275.0, 615.0, 100.0, 22.0 ],
					"text" : "$1, $2 120"
				}

			}
, 			{
				"box" : 				{
					"id" : "reverse_title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 665.0, 130.0, 20.0 ],
					"text" : "Reverse"
				}

			}
, 			{
				"box" : 				{
					"id" : "reverse_button",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 695.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "reverse_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 698.0, 120.0, 20.0 ],
					"text" : "reverse slice"
				}

			}
, 			{
				"box" : 				{
					"id" : "reverse_start",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 695.0, 70.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "reverse_start_default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.0, 695.0, 55.0, 22.0 ],
					"text" : "4000"
				}

			}
, 			{
				"box" : 				{
					"id" : "reverse_len",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 350.0, 695.0, 70.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "reverse_len_default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 430.0, 695.0, 50.0, 22.0 ],
					"text" : "300"
				}

			}
, 			{
				"box" : 				{
					"id" : "minus",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 500.0, 695.0, 65.0, 22.0 ],
					"text" : "- 300"
				}

			}
, 			{
				"box" : 				{
					"id" : "reverse_pack",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 580.0, 695.0, 80.0, 22.0 ],
					"text" : "pack 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "reverse_msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 675.0, 695.0, 105.0, 22.0 ],
					"text" : "$1, $2 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "settings_title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 260.0, 130.0, 20.0 ],
					"text" : "Controls"
				}

			}
, 			{
				"box" : 				{
					"id" : "tempo_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 295.0, 70.0, 20.0 ],
					"text" : "rate"
				}

			}
, 			{
				"box" : 				{
					"id" : "tempo",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 790.0, 295.0, 75.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "tempo_default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 875.0, 295.0, 50.0, 22.0 ],
					"text" : "180"
				}

			}
, 			{
				"box" : 				{
					"id" : "max_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 335.0, 100.0, 20.0 ],
					"text" : "range ms"
				}

			}
, 			{
				"box" : 				{
					"id" : "maxpos",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 820.0, 335.0, 90.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "max_default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 925.0, 335.0, 60.0, 22.0 ],
					"text" : "8000"
				}

			}
, 			{
				"box" : 				{
					"id" : "line",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 275.0, 755.0, 60.0, 22.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"id" : "play",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 360.0, 755.0, 100.0, 22.0 ],
					"text" : "play~ drums"
				}

			}
, 			{
				"box" : 				{
					"id" : "fx_title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 410.0, 140.0, 20.0 ],
					"text" : "Audio Effects"
				}

			}
, 			{
				"box" : 				{
					"id" : "drive_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 445.0, 60.0, 20.0 ],
					"text" : "drive"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "drive",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 775.0, 445.0, 60.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "drive_default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 845.0, 445.0, 40.0, 22.0 ],
					"text" : "1."
				}

			}
, 			{
				"box" : 				{
					"id" : "drive_gain",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 500.0, 755.0, 60.0, 22.0 ],
					"text" : "*~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 585.0, 755.0, 110.0, 22.0 ],
					"text" : "clip~ -0.9 0.9"
				}

			}
, 			{
				"box" : 				{
					"id" : "filter_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 485.0, 70.0, 20.0 ],
					"text" : "filter"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "filter_num",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 790.0, 485.0, 75.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "filter_default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 875.0, 485.0, 55.0, 22.0 ],
					"text" : "6000"
				}

			}
, 			{
				"box" : 				{
					"id" : "filter",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 720.0, 755.0, 130.0, 22.0 ],
					"text" : "lores~ 6000 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "delay_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 525.0, 70.0, 20.0 ],
					"text" : "delay"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "delay_num",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 790.0, 525.0, 60.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "delay_default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 860.0, 525.0, 45.0, 22.0 ],
					"text" : "0.2"
				}

			}
, 			{
				"box" : 				{
					"id" : "tapin",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "tapconnect" ],
					"patching_rect" : [ 875.0, 715.0, 95.0, 22.0 ],
					"text" : "tapin~ 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "tapout",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 875.0, 755.0, 95.0, 22.0 ],
					"text" : "tapout~ 250"
				}

			}
, 			{
				"box" : 				{
					"id" : "delay_gain",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 875.0, 795.0, 70.0, 22.0 ],
					"text" : "*~ 0.2"
				}

			}
, 			{
				"box" : 				{
					"id" : "mix",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 720.0, 820.0, 40.0, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "preset_title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1010.0, 410.0, 100.0, 20.0 ],
					"text" : "Presets"
				}

			}
, 			{
				"box" : 				{
					"id" : "preset_clean",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.0, 445.0, 190.0, 22.0 ],
					"text" : "180 160 8000 1. 6000 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "preset_cut",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.0, 480.0, 210.0, 22.0 ],
					"text" : "140 100 8000 1.8 2200 0.15"
				}

			}
, 			{
				"box" : 				{
					"id" : "preset_heavy",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.0, 515.0, 200.0, 22.0 ],
					"text" : "90 80 8000 2.5 900 0.35"
				}

			}
, 			{
				"box" : 				{
					"id" : "unpack",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "int", "int", "int", "float", "float", "float" ],
					"patching_rect" : [ 1010.0, 555.0, 180.0, 22.0 ],
					"text" : "unpack 0 0 0 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "preset_note",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1010.0, 585.0, 280.0, 20.0 ],
					"text" : "rate, length, range, drive, filter, delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "gain",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 785.0, 820.0, 120.0, 80.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 930.0, 835.0, 50.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "scope",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1030.0, 665.0, 260.0, 115.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "spectro",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1030.0, 800.0, 360.0, 85.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "filter", 0 ],
					"source" : [ "clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "delay_num", 0 ],
					"source" : [ "delay_default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "mix", 1 ],
					"source" : [ "delay_gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "delay_gain", 1 ],
					"source" : [ "delay_num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "drive_gain", 1 ],
					"source" : [ "drive", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "drive", 0 ],
					"source" : [ "drive_default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "clip", 0 ],
					"source" : [ "drive_gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "mix", 0 ],
					"order" : 1,
					"source" : [ "filter", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "tapin", 0 ],
					"order" : 0,
					"source" : [ "filter", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "filter_num", 0 ],
					"source" : [ "filter_default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "filter", 1 ],
					"source" : [ "filter_num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "dac", 1 ],
					"order" : 2,
					"source" : [ "gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "dac", 0 ],
					"order" : 3,
					"source" : [ "gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "meter", 0 ],
					"order" : 4,
					"source" : [ "gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "scope", 0 ],
					"order" : 1,
					"source" : [ "gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "spectro", 0 ],
					"order" : 0,
					"source" : [ "gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "length_num", 0 ],
					"source" : [ "length_default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "plus", 1 ],
					"source" : [ "length_num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "play", 0 ],
					"source" : [ "line", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "maxpos", 0 ],
					"source" : [ "max_default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "random", 1 ],
					"source" : [ "maxpos", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "random", 0 ],
					"source" : [ "metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "reverse_pack", 1 ],
					"source" : [ "minus", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "gain", 0 ],
					"source" : [ "mix", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "slice_msg", 0 ],
					"source" : [ "pack", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "drive_gain", 0 ],
					"source" : [ "play", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "play_msg", 0 ],
					"source" : [ "play_button", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "line", 0 ],
					"source" : [ "play_msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack", 1 ],
					"source" : [ "plus", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "unpack", 0 ],
					"source" : [ "preset_clean", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "unpack", 0 ],
					"source" : [ "preset_cut", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "unpack", 0 ],
					"source" : [ "preset_heavy", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "transient", 0 ],
					"source" : [ "process", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "random_num", 0 ],
					"order" : 0,
					"source" : [ "random", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "trigger", 0 ],
					"order" : 1,
					"source" : [ "random", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "buffer", 0 ],
					"source" : [ "replace", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "reverse_pack", 0 ],
					"source" : [ "reverse_button", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "minus", 1 ],
					"source" : [ "reverse_len", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "reverse_len", 0 ],
					"source" : [ "reverse_len_default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "line", 0 ],
					"source" : [ "reverse_msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "reverse_msg", 0 ],
					"source" : [ "reverse_pack", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "minus", 0 ],
					"order" : 1,
					"source" : [ "reverse_start", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "reverse_pack", 0 ],
					"order" : 0,
					"source" : [ "reverse_start", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "reverse_start", 0 ],
					"source" : [ "reverse_start_default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "line", 0 ],
					"source" : [ "slice_msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "delay_gain", 0 ],
					"source" : [ "tapout", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "metro", 1 ],
					"source" : [ "tempo", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "tempo", 0 ],
					"source" : [ "tempo_default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "metro", 0 ],
					"source" : [ "toggle", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack", 0 ],
					"source" : [ "trigger", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "plus", 0 ],
					"source" : [ "trigger", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "delay_num", 0 ],
					"source" : [ "unpack", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "drive", 0 ],
					"source" : [ "unpack", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "filter_num", 0 ],
					"source" : [ "unpack", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "length_num", 0 ],
					"source" : [ "unpack", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "maxpos", 0 ],
					"source" : [ "unpack", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "tempo", 0 ],
					"source" : [ "unpack", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "fluid.buftransientslice~.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0
	}

}
