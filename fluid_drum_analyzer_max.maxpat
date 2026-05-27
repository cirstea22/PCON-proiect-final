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
					"id" : "replace",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 80.0, 70.0, 22.0 ],
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
					"patching_rect" : [ 120.0, 80.0, 120.0, 22.0 ],
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
					"patching_rect" : [ 30.0, 130.0, 500.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "slice",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 600.0, 80.0, 360.0, 22.0 ],
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
					"patching_rect" : [ 600.0, 120.0, 80.0, 22.0 ],
					"text" : "process"
				}

			}
, 			{
				"box" : 				{
					"id" : "mfcc",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 600.0, 220.0, 150.0, 22.0 ],
					"text" : "fluid.bufmfcc~ 13"
				}

			}
, 			{
				"box" : 				{
					"id" : "loudness",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 770.0, 220.0, 150.0, 22.0 ],
					"text" : "fluid.bufloudness~"
				}

			}
, 			{
				"box" : 				{
					"id" : "spectral",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 940.0, 220.0, 180.0, 22.0 ],
					"text" : "fluid.bufspectralshape~"
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
					"patching_rect" : [ 30.0, 340.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 70.0, 340.0, 80.0, 22.0 ],
					"text" : "metro 250"
				}

			}
, 			{
				"box" : 				{
					"id" : "random",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.0, 340.0, 80.0, 22.0 ],
					"text" : "random 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "groove",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 420.0, 200.0, 22.0 ],
					"text" : "groove~ drums @loop 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "sig",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 250.0, 420.0, 60.0, 22.0 ],
					"text" : "sig~ 1."
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
					"patching_rect" : [ 30.0, 500.0, 120.0, 80.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 620.0, 50.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "scope",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 500.0, 250.0, 120.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "spectroscope",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 480.0, 500.0, 350.0, 120.0 ]
				}

			}
 ],
		"lines" : [ 			{
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
					"destination" : [ "scope", 0 ],
					"order" : 1,
					"source" : [ "gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "spectroscope", 0 ],
					"order" : 0,
					"source" : [ "gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "gain", 0 ],
					"source" : [ "groove", 0 ]
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
					"destination" : [ "slice", 0 ],
					"source" : [ "process", 0 ]
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
					"destination" : [ "groove", 0 ],
					"source" : [ "sig", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "metro", 0 ],
					"source" : [ "toggle", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "fluid.bufloudness~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "fluid.bufmfcc~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "fluid.bufspectralshape~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "fluid.buftransientslice~.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0
	}

}
