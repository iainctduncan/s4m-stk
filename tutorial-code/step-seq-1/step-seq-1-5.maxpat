{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -210.0, -827.0, 861.0, 590.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "s4m",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-110",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.791666597127914, 418.0, 139.0, 33.0 ],
					"text" : "force gargage collection every 100 ms (optional)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.75, 540.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.75, 514.0, 29.5, 22.0 ],
					"text" : "gc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 14.0, 455.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 13.75, 487.0, 63.0, 22.0 ],
					"text" : "metro 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 299.0, 172.0, 67.0, 20.0 ],
					"text" : "play-speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 489.0, 172.0, 54.0, 20.0 ],
					"text" : "loop-len"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 394.0, 172.0, 54.0, 20.0 ],
					"text" : "loop-top"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-26",
					"maxclass" : "flonum",
					"maximum" : 2.0,
					"minimum" : 0.25,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 299.0, 200.333333611488342, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 299.0, 255.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.0, 228.0, 107.0, 22.0 ],
					"text" : "set! play-speed $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 394.0, 255.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 394.0, 228.0, 91.0, 22.0 ],
					"text" : "set! loop-top $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "number",
					"maximum" : 16,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 394.0, 200.333333611488342, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.5, 255.0, 157.0, 22.0 ],
					"text" : "prepend update-step-param"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 696.5, 172.0, 76.0, 20.0 ],
					"text" : "value (hot)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 641.0, 172.0, 44.0, 20.0 ],
					"text" : "param"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 582.5, 172.0, 33.0, 20.0 ],
					"text" : "step"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "number",
					"maximum" : 4,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 641.0, 200.333333611488342, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.5, 228.0, 103.0, 22.0 ],
					"text" : "join 3 @triggers 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 489.0, 255.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "number",
					"maximum" : 16,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 582.5, 200.333333611488342, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "number",
					"maximum" : 127,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 696.5, 200.333333611488342, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 449.5, 465.0, 150.0, 20.0 ],
					"text" : "All sliders write to velocity"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 489.0, 228.0, 91.0, 22.0 ],
					"text" : "set! loop-len $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "number",
					"maximum" : 16,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 489.0, 200.333333611488342, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 688.5, 401.0, 39.0, 22.0 ],
					"text" : "15 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 688.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 653.5, 401.0, 39.0, 22.0 ],
					"text" : "14 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 653.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 619.5, 401.0, 39.0, 22.0 ],
					"text" : "13 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 619.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 585.5, 401.0, 39.0, 22.0 ],
					"text" : "12 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 585.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 552.5, 401.0, 38.0, 22.0 ],
					"text" : "11 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 552.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 517.5, 401.0, 39.0, 22.0 ],
					"text" : "10 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 517.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 483.5, 401.0, 32.0, 22.0 ],
					"text" : "9 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 483.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 449.5, 401.0, 32.0, 22.0 ],
					"text" : "8 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 449.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 412.5, 401.0, 32.0, 22.0 ],
					"text" : "7 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 412.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 377.5, 401.0, 32.0, 22.0 ],
					"text" : "6 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 377.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 343.5, 401.0, 32.0, 22.0 ],
					"text" : "5 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 343.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 309.5, 401.0, 32.0, 22.0 ],
					"text" : "4 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 309.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 276.5, 401.0, 32.0, 22.0 ],
					"text" : "3 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 276.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 241.5, 401.0, 32.0, 22.0 ],
					"text" : "2 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 241.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 207.5, 401.0, 32.0, 22.0 ],
					"text" : "1 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 207.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 343.5, 502.0, 173.0, 22.0 ],
					"text" : "update-step-param 7 3 45"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 173.5, 401.0, 32.0, 22.0 ],
					"text" : "0 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 273.0, 502.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 273.0, 465.0, 153.0, 22.0 ],
					"text" : "update-step-param $1 3 $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 173.5, 302.0, 29.0, 91.0 ],
					"varname" : "slider-0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 151.0, 201.333333611488342, 62.0, 22.0 ],
					"text" : "seed-data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 13.75, 366.0, 38.0, 38.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 13.75, 302.0, 97.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 13.75, 267.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
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
							"pluginname" : "Podolski.vst",
							"plugindisplayname" : "Podolski 1.2.2",
							"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/u-he/Podolski.vst",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "3378.CMlaKA....fQPMDZ....A.0aj8F...P.....ALGckAWKyUVbsPWcz8lboEFa.................vf8unBPMUFcgofBAUGcn8lb5nvIIEVZtAxPfPEHDUmaiElamnfBp7hBJLRPM0CTuQ1arM2ZoovHVUlby0SLvHCLxnvHE4FYoEla8vVZzQGakovHt0VOwbiBiz1b831atUlBiz1b8zzajcEZkUFaJLRay0CToQ2XncEZkUFaJLRay0yPu4Fcx8FafDjBiz1b8LzatQmbuwFHBovHsMWOLYzSmw1ahEFaJLRay0yQgQWYJLRay0iUkw1aikFc4ovHsMWOPIWYyMWcxUlBiz1b8rTY4Yzarw1a2ovHsMWOKUVdF8Far81cxnvHsMWOAwFckImagQWYJLRay0iTg4FYu0lBiz1b8LzatMGcg4FcJLRay0SPxAWSuQVcrEFcuImBiz1b8Tja1UFauAWYwnvHsMWOLYzSwnvHtYWOxnvHsYWOGEFckovHsYWOE4lckw1avUVLJLxXs0SagklaJLzXOAWO4biKv.iBivjQOcTOwnvHCglby0SLJLBQrkWL8DiBiLVa8.0PuIWYJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8DiBRUlc8jyMxPiBLUDQ8.iKv.iBPEzQE0CLJ.UXmU1bO4VOvnvPuIWYN0yLJLEaoMVY8PiBUkzWuAWOwnPSoQVZA0SMJzTZjkFT8XiBDYzarQVO2nvPzIGaA0iLJLDcxwlP8DSLJLxXs0CSF8zQJLUdtMVOxn.Uxk1Y8.iBWElck0SLJ.EZyUVOxHiKv.iBP8FagIWOvnvHi0VOVMzPJLBSF8TL8DiBV8VZiU1b8.iBV8VZiklam0SLJzzajUVOxn.TuIGcg0SL13BLvn.TB0iLJ.kPD0iLJzDU04lS8fiBMQUctQUO4n.UxMGb8zRLxnfQTUma8.iKv.iBAI2Ti0CMJDjbOIGY8.iBAIGSv0CLJDjbOMFc8DiBAIGSL0SL1nPPxQkb8.iBAcFckESOxnPPzIGbwzCLJDjcuMVL8DiBA0VcrESOwnPPs8FYwzCLJDTSDAGcwzCLt.CLJDzYzUlL8HiBAQmbvISOvnPP181XxzSLJDTa0wlL8DiBA01ajISOvnPPMQDbzISOv3BLvnPPmQWYyziLJDDcxA2L8.iBAY2aiMSOwnPPsUGayzSLJDTauQ1L8.iBA0DQvQ2L8.iKv.iBAcFckQSOxnPPzIGbzzCLJDjcuMFM8DiBA0VcrQSOwnPPs8FYzzCLJDTSDAGczzCLt.CLJDzYzUVM8HiBAQmbvUSOvnPP181X0zSLJDTa0wVM8DiBA01ajUSOvnPPMQDbzUSOv3BLvnPPmQWY1ziLJDDcxAmM8.iBAY2aiYSOwnPPsUGa1zSLJDTauQlM8.iBA0DQvQmM8.iKv.iBAcFckcSOxnPPzIGb2zCLJDjcuM1M8DiBA0VcrcSOwnPPs8FY2zCLJDTSDAGc2zCLt.CLJDzYzUFN8HiBAQmbvgSOvnPP181X3zSLJDTa0wFN8DiBA01ajgSOvnPPMQDbzgSOv3BLvnPPmQWY4ziLJDDcxAWN8.iBAY2aikSOwnPPsUGa4zSLJDTauQVN8.iBA0DQvQWN8.iKv.iBAcFckECL8HiBAQmbvECL8.iBAY2aiECL8DiBA0VcrECL8DiBA01ajECL8.iBA0DQvQWLvzCLt.CLJDzYzUVLwziLJDDcxAWLwzCLJDjcuMVLwzSLJDTa0wVLwzSLJDTauQVLwzCLJDTSDAGcwDSOv3BLvnPPmQWYwHSOxnPPzIGbwHSOvnPP181XwHSOwnPPsUGawHSOwnPPs8FYwHSOvnPPMQDbzEiL8.iKv.iBAcFckEyL8HiBAQmbvEyL8.iBAY2aiEyL8DiBA0VcrEyL8DiBA01ajEyL8.iBA0DQvQWLyzCLt.CLJDzYzUVLzziLJDDcxAWLzzCLJDjcuMVLzzSLJDTa0wVLzzSLJDTauQVLzzCLJDTSDAGcwPSOv3BLvnPPmQWYwTSOxnPPzIGbwTSOvnPP181XwTSOwnPPsUGawTSOwnPPs8FYwTSOvnPPMQDbzESM8.iKv.iBAcFckEiM8HiBAQmbvEiM8.iBAY2aiEiM8DiBA0VcrEiM8DiBA01ajEiM8.iBA0DQvQWL1zCLt.CLJLxXs0SQNYULJzzajUVOvnPPzsVOw3BLvn.QkMVO0.iKv.iBSU2b8fCLt.CLJLUcyQUOv3BLvnfTkwVOw.iKv.iBVUFa8HSMt.CLJLxXs0CSF8TLJLUdtMVOxn.Uxk1Y8DiBWElck0SLJ.EZyUVOv3BLvn.TuwVXx0CLJPDa40CLt.CLJPTSSESOwn.QMQTL8DCLv3BLvnfTgQWY8.iKv.iBF0DQwzCLt.CLJLxXs0ySSMTLJPUctUVOv3BLvnvRkk2TiwVOw.CLt.CLJPUSSI2X8.iBT0DQvQWOv3BLvn.TnMWY8TCLt.CLJ.EZy0zTxMVOvn.TnMWSDAGc8.iKv.iBI4lcV8Fa8zRLv.iKv.iBSkWawzSMv3BLvnvUPMkbi0CLJbETDAGc8.iKv.iBVQ2aD0CLt.CLJLxXs0iUCYDLJPUdv0CLJLTcz0SLv3BLvnfTkMWOzLiKv.iBDImc8.iKv.iBF0TL8fyMt.CLJXzTwzyMJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0SMv3BLvnPPF0TOv3BLvnvPrsVOv3BLvnvHi0VOVMTPwn.Tg4VOv3BLvnfUuwVOy.iKv.iBVMTP8DiBM8FYSI2X8.iBM8FYDAGc8.iKv.iBPElaSI2X8.iBiLVa8LDZxMmBCUlaz0iLv3BLvnvTvUFY8TCLt.CLJPDbzgVO0.iKv.iBFUVYB0CLt.CLJzTZ30CLt.CLJLxXs0CQrkWLJLkaiwTO4nvTtMlT8PiBFUVYB0iMt.CLJLjbyITOw.iKv.iBMkFd8jiKv.iBJnfBJnvKu.xTkMFco8lafX1axARcmwVdfL1asAmbkM2bkQFHhklagIWdfPTXzElBu7BHD8jSmPEHT8TUCgDHTgTRSofBjPBIjDCNxfiB+bFYmMVYtUlX5TVXgEVXgEVX5DVXgIVXgEVX5DVXgEVZgQFb5DVXgEVXgUVX5DVXgEVYgUVX5DVXgEVZgUVX5nPXgEVXqEVYgoSXgEVXsEVYgoSXgEVXuEVYgoSXgoSYioSYhoyXgoCZgoCZkoSXioSXkoiXgoyXtoCYgoyYhoyYJXlNm8lNnQlNoElNgklNg0lNhIlNhUlNhklNh0lNiUlNiklNi0lNi8VHwMWP2LFblY1SMg1XAISMvDmbAcySF0jBEozSMglXJYDZlYzYvg1XmoFSm0lVmkFYiUTPzHSbxEzMwDmbAcCbpA2ZvwFbsAmav8FbvETXhcTXjgTXlE1Ygo.ZQElZgsVXrIUXtE1agAWRSI1XhQFUhYlXmIFZUIlZhslXrYkXtI1ahAGQiI1XiMFYWMlYic1Xng0XpM1ZiwVVJnjViA2RjIFYiQFYjUFYlQ1YjgFYoEGRAECLScjauETbyEzMkoFSmolSDUFYDYVYDUVYnYlSmQFSNEjLz.SbPEjBwLCNwMWPxXyLwIWPzLCc0Y2c3kmdwEzQAUCcAMCc0Y2c3kmdAIyPAESRCETLDMTPwrzPAESYgMTPwXVXCETLmoPXCETLEMTPw.0PAESZoMTPwnVXCETLpk1PAEyZgMTPwrVZCETLrE1PAECaoMTPwzVXCETLsk1PAEiagMTPw3VZJLTPw7VXCETLuk1PAECbgMTPw.WZCEjLBETLHITPwDkPAEiTBETLIITPwPkPAESUBETLVITPwPjPAEyUBETLXIjBAESVBETLKITPwPVYBETLjklPAECYsITPwTVXBETLkUlPAESYoITPwTVaBETLlElPAEiYkITPwXVZBETLl0lPAoPLmElPAEyYkITPwbVZBETLm0lPAESQBETLFITPwfVZBETLn0lPAECTBETLoMlPAESZkITPwj1YBETLoklPAESZJrlPAESZsITPwj1aBETLpElPAEiZiITPwnVYBETLpclPAEiZoITPwn1ZBETLp0lPAEiZuITPwrVXBETLqMlPAEiBqUlPAEyZmITPwrVZBETLqslPAEyZsITPwr1aBETLrElPAECaiITPwvVYBETLrclPAECaoITPwv1ZBETLr0lPAoPLr8lPAESagITPwz1XBETLsUlPAESamITPwzVZBETLsslPAESasITPwz1aBETLtElPAEiaiITPw3VYBETLtclPJDTLtklPAEiaqITPw3VaBETLt8lPAEyagITPw71XBETLuUlPAEyamITPw7VZBETLuslPAEyasITPw71aBETLvElBBETLvMlPAECbkITPw.2YBETLvklPAECbqITPw.WaBETLv8lP8fiLxHiMJ..."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Podolski 1.2.2",
									"origin" : "Podolski.vst",
									"type" : "VST",
									"subtype" : "Instrument",
									"embed" : 1,
									"snapshot" : 									{
										"pluginname" : "Podolski.vst",
										"plugindisplayname" : "Podolski 1.2.2",
										"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/u-he/Podolski.vst",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "3378.CMlaKA....fQPMDZ....A.0aj8F...P.....ALGckAWKyUVbsPWcz8lboEFa.................vf8unBPMUFcgofBAUGcn8lb5nvIIEVZtAxPfPEHDUmaiElamnfBp7hBJLRPM0CTuQ1arM2ZoovHVUlby0SLvHCLxnvHE4FYoEla8vVZzQGakovHt0VOwbiBiz1b831atUlBiz1b8zzajcEZkUFaJLRay0CToQ2XncEZkUFaJLRay0yPu4Fcx8FafDjBiz1b8LzatQmbuwFHBovHsMWOLYzSmw1ahEFaJLRay0yQgQWYJLRay0iUkw1aikFc4ovHsMWOPIWYyMWcxUlBiz1b8rTY4Yzarw1a2ovHsMWOKUVdF8Far81cxnvHsMWOAwFckImagQWYJLRay0iTg4FYu0lBiz1b8LzatMGcg4FcJLRay0SPxAWSuQVcrEFcuImBiz1b8Tja1UFauAWYwnvHsMWOLYzSwnvHtYWOxnvHsYWOGEFckovHsYWOE4lckw1avUVLJLxXs0SagklaJLzXOAWO4biKv.iBivjQOcTOwnvHCglby0SLJLBQrkWL8DiBiLVa8.0PuIWYJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8DiBRUlc8jyMxPiBLUDQ8.iKv.iBPEzQE0CLJ.UXmU1bO4VOvnvPuIWYN0yLJLEaoMVY8PiBUkzWuAWOwnPSoQVZA0SMJzTZjkFT8XiBDYzarQVO2nvPzIGaA0iLJLDcxwlP8DSLJLxXs0CSF8zQJLUdtMVOxn.Uxk1Y8.iBWElck0SLJ.EZyUVOxHiKv.iBP8FagIWOvnvHi0VOVMzPJLBSF8TL8DiBV8VZiU1b8.iBV8VZiklam0SLJzzajUVOxn.TuIGcg0SL13BLvn.TB0iLJ.kPD0iLJzDU04lS8fiBMQUctQUO4n.UxMGb8zRLxnfQTUma8.iKv.iBAI2Ti0CMJDjbOIGY8.iBAIGSv0CLJDjbOMFc8DiBAIGSL0SL1nPPxQkb8.iBAcFckESOxnPPzIGbwzCLJDjcuMVL8DiBA0VcrESOwnPPs8FYwzCLJDTSDAGcwzCLt.CLJDzYzUlL8HiBAQmbvISOvnPP181XxzSLJDTa0wlL8DiBA01ajISOvnPPMQDbzISOv3BLvnPPmQWYyziLJDDcxA2L8.iBAY2aiMSOwnPPsUGayzSLJDTauQ1L8.iBA0DQvQ2L8.iKv.iBAcFckQSOxnPPzIGbzzCLJDjcuMFM8DiBA0VcrQSOwnPPs8FYzzCLJDTSDAGczzCLt.CLJDzYzUVM8HiBAQmbvUSOvnPP181X0zSLJDTa0wVM8DiBA01ajUSOvnPPMQDbzUSOv3BLvnPPmQWY1ziLJDDcxAmM8.iBAY2aiYSOwnPPsUGa1zSLJDTauQlM8.iBA0DQvQmM8.iKv.iBAcFckcSOxnPPzIGb2zCLJDjcuM1M8DiBA0VcrcSOwnPPs8FY2zCLJDTSDAGc2zCLt.CLJDzYzUFN8HiBAQmbvgSOvnPP181X3zSLJDTa0wFN8DiBA01ajgSOvnPPMQDbzgSOv3BLvnPPmQWY4ziLJDDcxAWN8.iBAY2aikSOwnPPsUGa4zSLJDTauQVN8.iBA0DQvQWN8.iKv.iBAcFckECL8HiBAQmbvECL8.iBAY2aiECL8DiBA0VcrECL8DiBA01ajECL8.iBA0DQvQWLvzCLt.CLJDzYzUVLwziLJDDcxAWLwzCLJDjcuMVLwzSLJDTa0wVLwzSLJDTauQVLwzCLJDTSDAGcwDSOv3BLvnPPmQWYwHSOxnPPzIGbwHSOvnPP181XwHSOwnPPsUGawHSOwnPPs8FYwHSOvnPPMQDbzEiL8.iKv.iBAcFckEyL8HiBAQmbvEyL8.iBAY2aiEyL8DiBA0VcrEyL8DiBA01ajEyL8.iBA0DQvQWLyzCLt.CLJDzYzUVLzziLJDDcxAWLzzCLJDjcuMVLzzSLJDTa0wVLzzSLJDTauQVLzzCLJDTSDAGcwPSOv3BLvnPPmQWYwTSOxnPPzIGbwTSOvnPP181XwTSOwnPPsUGawTSOwnPPs8FYwTSOvnPPMQDbzESM8.iKv.iBAcFckEiM8HiBAQmbvEiM8.iBAY2aiEiM8DiBA0VcrEiM8DiBA01ajEiM8.iBA0DQvQWL1zCLt.CLJLxXs0SQNYULJzzajUVOvnPPzsVOw3BLvn.QkMVO0.iKv.iBSU2b8fCLt.CLJLUcyQUOv3BLvnfTkwVOw.iKv.iBVUFa8HSMt.CLJLxXs0CSF8TLJLUdtMVOxn.Uxk1Y8DiBWElck0SLJ.EZyUVOv3BLvn.TuwVXx0CLJPDa40CLt.CLJPTSSESOwn.QMQTL8DCLv3BLvnfTgQWY8.iKv.iBF0DQwzCLt.CLJLxXs0ySSMTLJPUctUVOv3BLvnvRkk2TiwVOw.CLt.CLJPUSSI2X8.iBT0DQvQWOv3BLvn.TnMWY8TCLt.CLJ.EZy0zTxMVOvn.TnMWSDAGc8.iKv.iBI4lcV8Fa8zRLv.iKv.iBSkWawzSMv3BLvnvUPMkbi0CLJbETDAGc8.iKv.iBVQ2aD0CLt.CLJLxXs0iUCYDLJPUdv0CLJLTcz0SLv3BLvnfTkMWOzLiKv.iBDImc8.iKv.iBF0TL8fyMt.CLJXzTwzyMJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0SMv3BLvnPPF0TOv3BLvnvPrsVOv3BLvnvHi0VOVMTPwn.Tg4VOv3BLvnfUuwVOy.iKv.iBVMTP8DiBM8FYSI2X8.iBM8FYDAGc8.iKv.iBPElaSI2X8.iBiLVa8LDZxMmBCUlaz0iLv3BLvnvTvUFY8TCLt.CLJPDbzgVO0.iKv.iBFUVYB0CLt.CLJzTZ30CLt.CLJLxXs0CQrkWLJLkaiwTO4nvTtMlT8PiBFUVYB0iMt.CLJLjbyITOw.iKv.iBMkFd8jiKv.iBJnfBJnvKu.xTkMFco8lafX1axARcmwVdfL1asAmbkM2bkQFHhklagIWdfPTXzElBu7BHD8jSmPEHT8TUCgDHTgTRSofBjPBIjDCNxfiB+bFYmMVYtUlX5TVXgEVXgEVX5DVXgIVXgEVX5DVXgEVZgQFb5DVXgEVXgUVX5DVXgEVYgUVX5DVXgEVZgUVX5nPXgEVXqEVYgoSXgEVXsEVYgoSXgEVXuEVYgoSXgoSYioSYhoyXgoCZgoCZkoSXioSXkoiXgoyXtoCYgoyYhoyYJXlNm8lNnQlNoElNgklNg0lNhIlNhUlNhklNh0lNiUlNiklNi0lNi8VHwMWP2LFblY1SMg1XAISMvDmbAcySF0jBEozSMglXJYDZlYzYvg1XmoFSm0lVmkFYiUTPzHSbxEzMwDmbAcCbpA2ZvwFbsAmav8FbvETXhcTXjgTXlE1Ygo.ZQElZgsVXrIUXtE1agAWRSI1XhQFUhYlXmIFZUIlZhslXrYkXtI1ahAGQiI1XiMFYWMlYic1Xng0XpM1ZiwVVJnjViA2RjIFYiQFYjUFYlQ1YjgFYoEGRAECLScjauETbyEzMkoFSmolSDUFYDYVYDUVYnYlSmQFSNEjLz.SbPEjBwLCNwMWPxXyLwIWPzLCc0Y2c3kmdwEzQAUCcAMCc0Y2c3kmdAIyPAESRCETLDMTPwrzPAESYgMTPwXVXCETLmoPXCETLEMTPw.0PAESZoMTPwnVXCETLpk1PAEyZgMTPwrVZCETLrE1PAECaoMTPwzVXCETLsk1PAEiagMTPw3VZJLTPw7VXCETLuk1PAECbgMTPw.WZCEjLBETLHITPwDkPAEiTBETLIITPwPkPAESUBETLVITPwPjPAEyUBETLXIjBAESVBETLKITPwPVYBETLjklPAECYsITPwTVXBETLkUlPAESYoITPwTVaBETLlElPAEiYkITPwXVZBETLl0lPAoPLmElPAEyYkITPwbVZBETLm0lPAESQBETLFITPwfVZBETLn0lPAECTBETLoMlPAESZkITPwj1YBETLoklPAESZJrlPAESZsITPwj1aBETLpElPAEiZiITPwnVYBETLpclPAEiZoITPwn1ZBETLp0lPAEiZuITPwrVXBETLqMlPAEiBqUlPAEyZmITPwrVZBETLqslPAEyZsITPwr1aBETLrElPAECaiITPwvVYBETLrclPAECaoITPwv1ZBETLr0lPAoPLr8lPAESagITPwz1XBETLsUlPAESamITPwzVZBETLsslPAESasITPwz1aBETLtElPAEiaiITPw3VYBETLtclPJDTLtklPAEiaqITPw3VaBETLt8lPAEyagITPw71XBETLuUlPAEyamITPw7VZBETLuslPAEyasITPw71aBETLvElBBETLvMlPAECbkITPw.2YBETLvklPAECbqITPw.WaBETLv8lP8fiLxHiMJ..."
									}
,
									"fileref" : 									{
										"name" : "Podolski 1.2.2",
										"filename" : "Podolski 1.2.2_20210417.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "6f3fbd17afb0c71fedda22b43b562163"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 204.0, 29.5, 22.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 19.0, 149.0, 65.0, 22.0 ],
					"text" : "unpack i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 19.0, 177.0, 61.0, 22.0 ],
					"text" : "makenote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 19.0, 230.0, 82.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.0, 204.0, 31.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 109.749999805744153, 104.0, 31.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 20.0,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 192.5, 2.0, 127.0, 29.0 ],
					"text" : "step-seq-1-5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 350.0, 131.0, 83.0, 22.0 ],
					"text" : "s #s4m_str_in"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 2.0, 81.0, 22.0 ],
					"text" : "r #s4m_str_in"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 254.333333194255829, 201.333333611488342, 33.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 216.333333194255829, 201.333333611488342, 33.0, 22.0 ],
					"text" : "play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 31.000000059604645, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-9",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "s4m.repl.maxpat",
					"numinlets" : 0,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 350.0, -1.0, 488.0, 128.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 90.0, 59.0, 22.0 ],
					"text" : "r #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.0, 251.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 135.166666805744171, 61.666666388511658, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 83.166666805744171, 31.000000059604645, 97.0, 22.0 ],
					"text" : "udpreceive 7777"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 114.166666805744171, 90.0, 35.0, 22.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 61.666666388511658, 111.0, 22.0 ],
					"text" : "prepend eval-string"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 119.0, 127.0, 22.0 ],
					"saved_object_attributes" : 					{
						"ins" : 1,
						"log-null" : 0,
						"outs" : 1,
						"thread" : 104
					}
,
					"text" : "s4m step-seq-1-5.scm"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 2 ],
					"source" : [ "obj-12", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 308.5, 256.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"order" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"order" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 403.5, 256.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"midpoints" : [ 498.5, 256.0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 2 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 1 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"midpoints" : [ 593.0, 282.0, 577.0, 282.0, 577.0, 251.0, 498.5, 251.0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-22" : [ "live.gain~", "live.gain~", 0 ],
			"obj-23" : [ "vst~", "vst~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "s4m.repl.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/max-sdk-8.0.3/source/scheme-for-max/Scheme-For-Max/patchers",
				"patcherrelativepath" : "../../../../Max 8/Packages/max-sdk-8.0.3/source/scheme-for-max/Scheme-For-Max/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Podolski 1.2.2_20210417.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "s4m.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
