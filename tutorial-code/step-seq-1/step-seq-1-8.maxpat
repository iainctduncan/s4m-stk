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
		"rect" : [ 1937.0, -849.0, 1229.0, 758.0 ],
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
					"id" : "obj-219",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 729.0, 187.5, 83.0, 22.0 ],
					"text" : "loadmess 120"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-218",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 811.5, 469.0, 77.0, 22.0 ],
					"text" : "loadmess 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-217",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 816.0, 639.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-216",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.0, 639.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-215",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.0, 639.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-214",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.0, 639.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 20.0,
					"id" : "obj-213",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 244.416666805744171, 44.5, 175.0, 29.0 ],
					"presentation_linecount" : 2,
					"text" : "multiple tracks"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 237.416666805744171, 335.0, 47.0, 97.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[3]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[3]"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-207",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 237.416666805744171, 300.0, 47.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[3]",
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
							"blob" : "3379.CMlaKA....fQPMDZ....A.0aj8F...P.....ALGckAWKyUVbsPWcz8lboEFa.................vv8unBPMUFcgofBAUGcn8lb5nvIIEVZtAxPfPEHDUmaiElamnfBp7hBJLRPM0CTuQ1arM2ZoovHVUlby0SLvHCLxnvHE4FYoEla8vVZzQGakovHt0VOwbiBiz1b831atUlBiz1b8zzajcEZkUFaJLRay0CToQ2XncEZkUFaJLRay0yPu4Fcx8FafDjBiz1b8LzatQmbuwFHBovHsMWOLYzSmw1ahEFaJLRay0yQgQWYJLRay0iUkw1aikFc4ovHsMWOPIWYyMWcxUlBiz1b8rTY4Yzarw1a2ovHsMWOKUVdF8Far81cxnvHsMWOAwFckImagQWYJLRay0iTg4FYu0lBiz1b8LzatMGcg4FcJLRay0SPxAWSuQVcrEFcuImBiz1b8Tja1UFauAWYwnvHsMWOLYzSwnvHtYWOxnvHsYWOGEFckovHsYWOE4lckw1avUVLJLxXs0SagklaJLzXOAWO4biKv.iBivjQOcTOwnvHCglby0SLJLBQrkWL8DiBiLVa8.0PuIWYJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8DiBRUlc8jyMxPiBLUDQ8.iKv.iBPEzQE0CLJ.UXmU1bO4VOvnvPuIWYN0yLJLEaoMVY8PiBUkzWuAWOynPSoQVZA0SMJzTZjkFT8XiBDYzarQVO2nvPzIGaA0iLJLDcxwlP8DSLJLxXs0CSF8zQJLUdtMVOwfiBTIWZm0CLJbUX1UVOwn.TnMWY8DiMt.CLJ.0arElb8.iBiLVa8X0PCovHLYzSwzSLJX0aoMVYy0CLJX0aoMVZtcVOwnPSuQVY8HiBP8lbzEVOxfiKv.iBPITOxn.TBQTOxnPSTUmaN0CNJzDU04FU8jiBTI2bv0SKwHiBFQUct0CLt.CLJDjbSMVOznPPx8jbj0CLJDjbLAWOvnPPx8zXz0SLJDjbLwTOwXiBAIGUx0CLJDzYzUVL8HiBAQmbvESOvnPP181XwzSLJDTa0wVL8DiBA01ajESOvnPPMQDbzESOv3BLvnPPmQWYxziLJDDcxAmL8.iBAY2aiISOwnPPsUGaxzSLJDTauQlL8.iBA0DQvQmL8.iKv.iBAcFckMSOxnPPzIGbyzCLJDjcuM1L8DiBA0VcrMSOwnPPs8FYyzCLJDTSDAGcyzCLt.CLJDzYzUFM8HiBAQmbvQSOvnPP181XzzSLJDTa0wFM8DiBA01ajQSOvnPPMQDbzQSOv3BLvnPPmQWY0ziLJDDcxAWM8.iBAY2aiUSOwnPPsUGa0zSLJDTauQVM8.iBA0DQvQWM8.iKv.iBAcFckYSOxnPPzIGb1zCLJDjcuMlM8DiBA0VcrYSOwnPPs8FY1zCLJDTSDAGc1zCLt.CLJDzYzU1M8HiBAQmbvcSOvnPP181X2zSLJDTa0w1M8DiBA01ajcSOvnPPMQDbzcSOv3BLvnPPmQWY3ziLJDDcxAGN8.iBAY2aigSOwnPPsUGa3zSLJDTauQFN8.iBA0DQvQGN8.iKv.iBAcFckkSOxnPPzIGb4zCLJDjcuMVN8DiBA0VcrkSOwnPPs8FY4zCLJDTSDAGc4zCLt.CLJDzYzUVLvziLJDDcxAWLvzCLJDjcuMVLvzSLJDTa0wVLvzSLJDTauQVLvzCLJDTSDAGcw.SOv3BLvnPPmQWYwDSOxnPPzIGbwDSOvnPP181XwDSOwnPPsUGawDSOwnPPs8FYwDSOvnPPMQDbzESL8.iKv.iBAcFckEiL8HiBAQmbvEiL8.iBAY2aiEiL8DiBA0VcrEiL8DiBA01ajEiL8.iBA0DQvQWLxzCLt.CLJDzYzUVLyziLJDDcxAWLyzCLJDjcuMVLyzSLJDTa0wVLyzSLJDTauQVLyzCLJDTSDAGcwLSOv3BLvnPPmQWYwPSOxnPPzIGbwPSOvnPP181XwPSOwnPPsUGawPSOwnPPs8FYwPSOvnPPMQDbzECM8.iKv.iBAcFckESM8HiBAQmbvESM8.iBAY2aiESM8DiBA0VcrESM8DiBA01ajESM8.iBA0DQvQWL0zCLt.CLJDzYzUVL1ziLJDDcxAWL1zCLJDjcuMVL1zSLJDTa0wVL1zSLJDTauQVL1zCLJDTSDAGcwXSOv3BLvnvHi0VOE4jUwnPSuQVY8.iBAQ2Z8DiKv.iBDU1X8LiMt.CLJLUcy0SL13BLvnvT0MGU8zxLx3BLvnfTkwVOv3BLvnfUkwVOyPiKv.iBiLVa8vjQOEiBSkmai0iLJPkbocVOwnvUgYWY8DiBPg1bk0CLt.CLJ.0arElb8.iBDwVd8.iKv.iBD0zTwzSLJPTSDESOw.CLt.CLJHUXzUVOv3BLvnfQMQTL8.iKv.iBiLVa87zTCEiBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJ.EZyUVO0DiKv.iBPg1bMMkbi0CLJ.EZy0DQvQWOv3BLvnPRtYmUuwVOx.iKv.iBSkWawzSMv3BLvnvUPMkbi0CLJbETDAGc8.iKv.iBVQ2aD0CLt.CLJLxXs0iUCYDLJPUdv0CLJLTcz0iLy3BLvnfTkMWO1TiKv.iBDImc8bSMt.CLJXTSwzCN23BLvnfQSESO2nfQMISOxPiKv.iBFMkL8TiBKUVdSMFa8HiMt.CLJDjQM0CLt.CLJLDaq0CMt.CLJLxXs0iUCETLJ.UXt0CLt.CLJX0ar0yLv3BLvnfUCETOwnPSuQ1TxMVOvnPSuQFQvQWOv3BLvn.Tg41TxMVOvnvHi0VOCglbyovPk4Fc8HCLt.CLJLEbkQVO0.iKv.iBDAGcn0SMv3BLvnfQkUlP8.iKv.iBMkFd8.iKv.iBiLVa8PDa4EiBS41XL0SNJLkaiIUOznfQkUlP8DyLt.CLJLjbyITOwPiKv.iBMkFd8fiKv.iBJnvKu.xTkMFco8lafX1axARcmwVdfL1asAmbkM2bkQFHhklagIWdfPTXzElBu7BHD8jSmPEHT8TUCgDHTgTRSofBjPBIjDCNxfiB+bFYmMVYtUlX5TVXgEVXgEVX5DVXgIVXgEVX5DVXgEVZgQFb5DVXgEVXgUVX5DVXgEVYgUVX5DVXgEVZgUVX5nPXgEVXqEVYgoSXgEVXsEVYgoSXgEVXuEVYgoSXgoSYioSYhoyXgoCYgoCZgoCZkoSXkoiXgoyXtoyYhoyYloyYJ7lNnQlNoElNgMlNgklNgslNg0lNhUlNhklNh0lNiUlNiglNiklNi0VHwMWP2LFblYlSLg1XAISMvDmbAciSGwjBFojSLglXJcDZlczYvg1Xmo1Rm01XucVZjMlQAQiLwIWP2DSbxEzMvoFbqAGav0FbtA2avAWPgIFTgQFRgYVXmoPXnEUXpIUXrMUXtE1agAWRhIlXiIFYTIlYhclXnUkXpI1ZhwlUh4lXuIFbDMlXiM1Xjc0XlM1YXk0XpM1ZiwlVJnzXuMFbEQlXjMFYjQVYjYFYmQFZjkVbHETLvfkajUjTwMWP2TlZKclZMQTYjQjYkQTYkglYMcFYK0TPxPCLw8jBAEyL3D2bAIiMyDmbAQyLzUmc2gWd5EWPPETMzEzLzUmc2gWd5EjLCETLIMTPwPzPAESQCETLkE1PAEiYgMTPwnvYgMTPwXzPAEySCETLok1PAEiZgMTPwnVZCETLqE1PAEyZoMTPwvVXCETLrk1PAESagMTPwzVZCETLtE1PAEiaJj1PAEyagMTPw7VZCETLvE1PAECboMTPxHTPwfjPAESTBETLSITPwjjPAECUBETLUITPwXkPAECQBETLWITPwjkBBETLZITPwTjPAECYkITPwPVZBETLj0lPAESYgITPwTVYBETLkklPAESYsITPwXVXBETLlUlPAEiYoITPwXVaBoPPwbVXBETLmUlPAEyYoITPwbVaBETLFITPwbjPAECZoITPwfVaBETLOITPwj1XBETLoUlPAESZmITPwjVZBETLJj1ZBETLo0lPAESZuITPwnVXBETLpMlPAEiZkITPwn1YBETLpklPAEiZqITPwnVaBETLp8lPAEyZgITPwr1XBEjBwrVYBETLqclPAEyZoITPwr1ZBETLq0lPAEyZuITPwvVXBETLrMlPAECakITPwv1YBETLrklPAECaqITPwvVaBoPPwv1aBETLsElPAESaiITPwzVYBETLsclPAESaoITPwz1ZBETLs0lPAESauITPw3VXBETLtMlPAEiakITPw31YJHTPw3VZBETLtslPAEiasITPw31aBETLuElPAEyaiITPw7VYBETLuclPAEyaoITPw71ZBETLu0lPAEyauITPw.mBgITPw.2XBETLvUlPAECbmITPw.WZBETLvslPAECbsITPw.2aB0CNxLSMwn...."
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
										"blob" : "3379.CMlaKA....fQPMDZ....A.0aj8F...P.....ALGckAWKyUVbsPWcz8lboEFa.................vv8unBPMUFcgofBAUGcn8lb5nvIIEVZtAxPfPEHDUmaiElamnfBp7hBJLRPM0CTuQ1arM2ZoovHVUlby0SLvHCLxnvHE4FYoEla8vVZzQGakovHt0VOwbiBiz1b831atUlBiz1b8zzajcEZkUFaJLRay0CToQ2XncEZkUFaJLRay0yPu4Fcx8FafDjBiz1b8LzatQmbuwFHBovHsMWOLYzSmw1ahEFaJLRay0yQgQWYJLRay0iUkw1aikFc4ovHsMWOPIWYyMWcxUlBiz1b8rTY4Yzarw1a2ovHsMWOKUVdF8Far81cxnvHsMWOAwFckImagQWYJLRay0iTg4FYu0lBiz1b8LzatMGcg4FcJLRay0SPxAWSuQVcrEFcuImBiz1b8Tja1UFauAWYwnvHsMWOLYzSwnvHtYWOxnvHsYWOGEFckovHsYWOE4lckw1avUVLJLxXs0SagklaJLzXOAWO4biKv.iBivjQOcTOwnvHCglby0SLJLBQrkWL8DiBiLVa8.0PuIWYJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8DiBRUlc8jyMxPiBLUDQ8.iKv.iBPEzQE0CLJ.UXmU1bO4VOvnvPuIWYN0yLJLEaoMVY8PiBUkzWuAWOynPSoQVZA0SMJzTZjkFT8XiBDYzarQVO2nvPzIGaA0iLJLDcxwlP8DSLJLxXs0CSF8zQJLUdtMVOwfiBTIWZm0CLJbUX1UVOwn.TnMWY8DiMt.CLJ.0arElb8.iBiLVa8X0PCovHLYzSwzSLJX0aoMVYy0CLJX0aoMVZtcVOwnPSuQVY8HiBP8lbzEVOxfiKv.iBPITOxn.TBQTOxnPSTUmaN0CNJzDU04FU8jiBTI2bv0SKwHiBFQUct0CLt.CLJDjbSMVOznPPx8jbj0CLJDjbLAWOvnPPx8zXz0SLJDjbLwTOwXiBAIGUx0CLJDzYzUVL8HiBAQmbvESOvnPP181XwzSLJDTa0wVL8DiBA01ajESOvnPPMQDbzESOv3BLvnPPmQWYxziLJDDcxAmL8.iBAY2aiISOwnPPsUGaxzSLJDTauQlL8.iBA0DQvQmL8.iKv.iBAcFckMSOxnPPzIGbyzCLJDjcuM1L8DiBA0VcrMSOwnPPs8FYyzCLJDTSDAGcyzCLt.CLJDzYzUFM8HiBAQmbvQSOvnPP181XzzSLJDTa0wFM8DiBA01ajQSOvnPPMQDbzQSOv3BLvnPPmQWY0ziLJDDcxAWM8.iBAY2aiUSOwnPPsUGa0zSLJDTauQVM8.iBA0DQvQWM8.iKv.iBAcFckYSOxnPPzIGb1zCLJDjcuMlM8DiBA0VcrYSOwnPPs8FY1zCLJDTSDAGc1zCLt.CLJDzYzU1M8HiBAQmbvcSOvnPP181X2zSLJDTa0w1M8DiBA01ajcSOvnPPMQDbzcSOv3BLvnPPmQWY3ziLJDDcxAGN8.iBAY2aigSOwnPPsUGa3zSLJDTauQFN8.iBA0DQvQGN8.iKv.iBAcFckkSOxnPPzIGb4zCLJDjcuMVN8DiBA0VcrkSOwnPPs8FY4zCLJDTSDAGc4zCLt.CLJDzYzUVLvziLJDDcxAWLvzCLJDjcuMVLvzSLJDTa0wVLvzSLJDTauQVLvzCLJDTSDAGcw.SOv3BLvnPPmQWYwDSOxnPPzIGbwDSOvnPP181XwDSOwnPPsUGawDSOwnPPs8FYwDSOvnPPMQDbzESL8.iKv.iBAcFckEiL8HiBAQmbvEiL8.iBAY2aiEiL8DiBA0VcrEiL8DiBA01ajEiL8.iBA0DQvQWLxzCLt.CLJDzYzUVLyziLJDDcxAWLyzCLJDjcuMVLyzSLJDTa0wVLyzSLJDTauQVLyzCLJDTSDAGcwLSOv3BLvnPPmQWYwPSOxnPPzIGbwPSOvnPP181XwPSOwnPPsUGawPSOwnPPs8FYwPSOvnPPMQDbzECM8.iKv.iBAcFckESM8HiBAQmbvESM8.iBAY2aiESM8DiBA0VcrESM8DiBA01ajESM8.iBA0DQvQWL0zCLt.CLJDzYzUVL1ziLJDDcxAWL1zCLJDjcuMVL1zSLJDTa0wVL1zSLJDTauQVL1zCLJDTSDAGcwXSOv3BLvnvHi0VOE4jUwnPSuQVY8.iBAQ2Z8DiKv.iBDU1X8LiMt.CLJLUcy0SL13BLvnvT0MGU8zxLx3BLvnfTkwVOv3BLvnfUkwVOyPiKv.iBiLVa8vjQOEiBSkmai0iLJPkbocVOwnvUgYWY8DiBPg1bk0CLt.CLJ.0arElb8.iBDwVd8.iKv.iBD0zTwzSLJPTSDESOw.CLt.CLJHUXzUVOv3BLvnfQMQTL8.iKv.iBiLVa87zTCEiBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJ.EZyUVO0DiKv.iBPg1bMMkbi0CLJ.EZy0DQvQWOv3BLvnPRtYmUuwVOx.iKv.iBSkWawzSMv3BLvnvUPMkbi0CLJbETDAGc8.iKv.iBVQ2aD0CLt.CLJLxXs0iUCYDLJPUdv0CLJLTcz0iLy3BLvnfTkMWO1TiKv.iBDImc8bSMt.CLJXTSwzCN23BLvnfQSESO2nfQMISOxPiKv.iBFMkL8TiBKUVdSMFa8HiMt.CLJDjQM0CLt.CLJLDaq0CMt.CLJLxXs0iUCETLJ.UXt0CLt.CLJX0ar0yLv3BLvnfUCETOwnPSuQ1TxMVOvnPSuQFQvQWOv3BLvn.Tg41TxMVOvnvHi0VOCglbyovPk4Fc8HCLt.CLJLEbkQVO0.iKv.iBDAGcn0SMv3BLvnfQkUlP8.iKv.iBMkFd8.iKv.iBiLVa8PDa4EiBS41XL0SNJLkaiIUOznfQkUlP8DyLt.CLJLjbyITOwPiKv.iBMkFd8fiKv.iBJnvKu.xTkMFco8lafX1axARcmwVdfL1asAmbkM2bkQFHhklagIWdfPTXzElBu7BHD8jSmPEHT8TUCgDHTgTRSofBjPBIjDCNxfiB+bFYmMVYtUlX5TVXgEVXgEVX5DVXgIVXgEVX5DVXgEVZgQFb5DVXgEVXgUVX5DVXgEVYgUVX5DVXgEVZgUVX5nPXgEVXqEVYgoSXgEVXsEVYgoSXgEVXuEVYgoSXgoSYioSYhoyXgoCYgoCZgoCZkoSXkoiXgoyXtoyYhoyYloyYJ7lNnQlNoElNgMlNgklNgslNg0lNhUlNhklNh0lNiUlNiglNiklNi0VHwMWP2LFblYlSLg1XAISMvDmbAciSGwjBFojSLglXJcDZlczYvg1Xmo1Rm01XucVZjMlQAQiLwIWP2DSbxEzMvoFbqAGav0FbtA2avAWPgIFTgQFRgYVXmoPXnEUXpIUXrMUXtE1agAWRhIlXiIFYTIlYhclXnUkXpI1ZhwlUh4lXuIFbDMlXiM1Xjc0XlM1YXk0XpM1ZiwlVJnzXuMFbEQlXjMFYjQVYjYFYmQFZjkVbHETLvfkajUjTwMWP2TlZKclZMQTYjQjYkQTYkglYMcFYK0TPxPCLw8jBAEyL3D2bAIiMyDmbAQyLzUmc2gWd5EWPPETMzEzLzUmc2gWd5EjLCETLIMTPwPzPAESQCETLkE1PAEiYgMTPwnvYgMTPwXzPAEySCETLok1PAEiZgMTPwnVZCETLqE1PAEyZoMTPwvVXCETLrk1PAESagMTPwzVZCETLtE1PAEiaJj1PAEyagMTPw7VZCETLvE1PAECboMTPxHTPwfjPAESTBETLSITPwjjPAECUBETLUITPwXkPAECQBETLWITPwjkBBETLZITPwTjPAECYkITPwPVZBETLj0lPAESYgITPwTVYBETLkklPAESYsITPwXVXBETLlUlPAEiYoITPwXVaBoPPwbVXBETLmUlPAEyYoITPwbVaBETLFITPwbjPAECZoITPwfVaBETLOITPwj1XBETLoUlPAESZmITPwjVZBETLJj1ZBETLo0lPAESZuITPwnVXBETLpMlPAEiZkITPwn1YBETLpklPAEiZqITPwnVaBETLp8lPAEyZgITPwr1XBEjBwrVYBETLqclPAEyZoITPwr1ZBETLq0lPAEyZuITPwvVXBETLrMlPAECakITPwv1YBETLrklPAECaqITPwvVaBoPPwv1aBETLsElPAESaiITPwzVYBETLsclPAESaoITPwz1ZBETLs0lPAESauITPw3VXBETLtMlPAEiakITPw31YJHTPw3VZBETLtslPAEiasITPw31aBETLuElPAEyaiITPw7VYBETLuclPAEyaoITPw71ZBETLu0lPAEyauITPw.mBgITPw.2XBETLvUlPAECbmITPw.WZBETLvslPAECbsITPw.2aB0CNxLSMwn...."
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
					"varname" : "vst~[3]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 242.666666805744171, 237.0, 29.5, 22.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-209",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 242.666666805744171, 182.0, 65.0, 22.0 ],
					"text" : "unpack i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-210",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 242.666666805744171, 210.0, 61.0, 22.0 ],
					"text" : "makenote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-211",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 242.666666805744171, 263.0, 65.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.666666805744171, 234.0, 31.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 154.749999805744153, 149.0, 31.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 159.416666805744171, 335.0, 47.0, 97.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[2]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[2]"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 159.416666805744171, 300.0, 47.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[2]",
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
							"blob" : "3379.CMlaKA....fQPMDZ....A.0aj8F...P.....ALGckAWKyUVbsPWcz8lboEFa.................vv8unBPMUFcgofBAUGcn8lb5nvIIEVZtAxPfPEHDUmaiElamnfBp7hBJLRPM0CTuQ1arM2ZoovHVUlby0SLvHCLxnvHE4FYoEla8vVZzQGakovHt0VOwbiBiz1b831atUlBiz1b8zzajcEZkUFaJLRay0CToQ2XncEZkUFaJLRay0yPu4Fcx8FafDjBiz1b8LzatQmbuwFHBovHsMWOLYzSmw1ahEFaJLRay0yQgQWYJLRay0iUkw1aikFc4ovHsMWOPIWYyMWcxUlBiz1b8rTY4Yzarw1a2ovHsMWOKUVdF8Far81cxnvHsMWOAwFckImagQWYJLRay0iTg4FYu0lBiz1b8LzatMGcg4FcJLRay0SPxAWSuQVcrEFcuImBiz1b8Tja1UFauAWYwnvHsMWOLYzSwnvHtYWOxnvHsYWOGEFckovHsYWOE4lckw1avUVLJLxXs0SagklaJLzXOAWO4biKv.iBivjQOcTOwnvHCglby0SLJLBQrkWL8DiBiLVa8.0PuIWYJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8DiBRUlc8jyMxPiBLUDQ8.iKv.iBPEzQE0CLJ.UXmU1bO4VOvnvPuIWYN0yLJLEaoMVY8PiBUkzWuAWOxnPSoQVZA0SMJzTZjkFT8XiBDYzarQVO2nvPzIGaA0iLJLDcxwlP8DSLJLxXs0CSF8zQJLUdtMVOwfiBTIWZm0CLJbUX1UVOwn.TnMWY8DiMt.CLJ.0arElb8.iBiLVa8X0PCovHLYzSwzSLJX0aoMVYy0CLJX0aoMVZtcVOwnPSuQVY8HiBP8lbzEVOxfiKv.iBPITOxn.TBQTOxnPSTUmaN0CNJzDU04FU8jiBTI2bv0SKwHiBFQUct0CLt.CLJDjbSMVOznPPx8jbj0CLJDjbLAWOvnPPx8zXz0SLJDjbLwTOwXiBAIGUx0CLJDzYzUVL8HiBAQmbvESOvnPP181XwzSLJDTa0wVL8DiBA01ajESOvnPPMQDbzESOv3BLvnPPmQWYxziLJDDcxAmL8.iBAY2aiISOwnPPsUGaxzSLJDTauQlL8.iBA0DQvQmL8.iKv.iBAcFckMSOxnPPzIGbyzCLJDjcuM1L8DiBA0VcrMSOwnPPs8FYyzCLJDTSDAGcyzCLt.CLJDzYzUFM8HiBAQmbvQSOvnPP181XzzSLJDTa0wFM8DiBA01ajQSOvnPPMQDbzQSOv3BLvnPPmQWY0ziLJDDcxAWM8.iBAY2aiUSOwnPPsUGa0zSLJDTauQVM8.iBA0DQvQWM8.iKv.iBAcFckYSOxnPPzIGb1zCLJDjcuMlM8DiBA0VcrYSOwnPPs8FY1zCLJDTSDAGc1zCLt.CLJDzYzU1M8HiBAQmbvcSOvnPP181X2zSLJDTa0w1M8DiBA01ajcSOvnPPMQDbzcSOv3BLvnPPmQWY3ziLJDDcxAGN8.iBAY2aigSOwnPPsUGa3zSLJDTauQFN8.iBA0DQvQGN8.iKv.iBAcFckkSOxnPPzIGb4zCLJDjcuMVN8DiBA0VcrkSOwnPPs8FY4zCLJDTSDAGc4zCLt.CLJDzYzUVLvziLJDDcxAWLvzCLJDjcuMVLvzSLJDTa0wVLvzSLJDTauQVLvzCLJDTSDAGcw.SOv3BLvnPPmQWYwDSOxnPPzIGbwDSOvnPP181XwDSOwnPPsUGawDSOwnPPs8FYwDSOvnPPMQDbzESL8.iKv.iBAcFckEiL8HiBAQmbvEiL8.iBAY2aiEiL8DiBA0VcrEiL8DiBA01ajEiL8.iBA0DQvQWLxzCLt.CLJDzYzUVLyziLJDDcxAWLyzCLJDjcuMVLyzSLJDTa0wVLyzSLJDTauQVLyzCLJDTSDAGcwLSOv3BLvnPPmQWYwPSOxnPPzIGbwPSOvnPP181XwPSOwnPPsUGawPSOwnPPs8FYwPSOvnPPMQDbzECM8.iKv.iBAcFckESM8HiBAQmbvESM8.iBAY2aiESM8DiBA0VcrESM8DiBA01ajESM8.iBA0DQvQWL0zCLt.CLJDzYzUVL1ziLJDDcxAWL1zCLJDjcuMVL1zSLJDTa0wVL1zSLJDTauQVL1zCLJDTSDAGcwXSOv3BLvnvHi0VOE4jUwnPSuQVY8.iBAQ2Z8DiKv.iBDU1X8LiMt.CLJLUcy0SL13BLvnvT0MGU8zxLx3BLvnfTkwVOv3BLvnfUkwVOyPiKv.iBiLVa8vjQOEiBSkmai0iLJPkbocVOwnvUgYWY8DiBPg1bk0CLt.CLJ.0arElb8.iBDwVd8.iKv.iBD0zTwzSLJPTSDESOw.CLt.CLJHUXzUVOv3BLvnfQMQTL8.iKv.iBiLVa87zTCEiBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJ.EZyUVO0DiKv.iBPg1bMMkbi0CLJ.EZy0DQvQWOv3BLvnPRtYmUuwVOx.iKv.iBSkWawzSMv3BLvnvUPMkbi0CLJbETDAGc8.iKv.iBVQ2aD0CLt.CLJLxXs0iUCYDLJPUdv0CLJLTcz0iLy3BLvnfTkMWO1TiKv.iBDImc8bSMt.CLJXTSwzCN23BLvnfQSESO2nfQMISOxPiKv.iBFMkL8TiBKUVdSMFa8HiMt.CLJDjQM0CLt.CLJLDaq0CMt.CLJLxXs0iUCETLJ.UXt0CLt.CLJX0ar0yLv3BLvnfUCETOwnPSuQ1TxMVOvnPSuQFQvQWOv3BLvn.Tg41TxMVOvnvHi0VOCglbyovPk4Fc8HCLt.CLJLEbkQVO0.iKv.iBDAGcn0SMv3BLvnfQkUlP8.iKv.iBMkFd8.iKv.iBiLVa8PDa4EiBS41XL0SNJLkaiIUOznfQkUlP8DyLt.CLJLjbyITOwPiKv.iBMkFd8fiKv.iBJnvKu.xTkMFco8lafX1axARcmwVdfL1asAmbkM2bkQFHhklagIWdfPTXzElBu7BHD8jSmPEHT8TUCgDHTgTRSofBjPBIjDCNxfiB+bFYmMVYtUlX5TVXgEVXgEVX5DVXgIVXgEVX5DVXgEVZgQFb5DVXgEVXgUVX5DVXgEVYgUVX5DVXgEVZgUVX5nPXgEVXqEVYgoSXgEVXsEVYgoSXgEVXuEVYgoSXgoSYioSYhoyXgoCYgoCZgoCZkoSXkoiXgoyXtoyYhoyYloyYJ7lNnQlNoElNgMlNgklNgslNg0lNhUlNhklNh0lNiUlNiklNi0lNi8VHwMWP2LFblYlSLg1XAISMvDmbAciSGwjBFojSLglXJcDZlczYvg1Xmo1Rm0lVmkFYiYTPzHSbxEzMwDmbAcCbpA2ZvwFbsAmav8FbvETXhAUXjgTXlE1Ygo.ZQElZREFaSElag8VXvkjXhI1XhQFUhYlXmIFZUIlZhslXrYkXtI1ahAGQiI1XiMFYWMlYic1Xng0XpM1ZiwVVJnjViAWQjIFYiQFYjUFYlQ1YjgFYoEGRAECLmAGbnUjTwMWP2TlZKclZMQTYjQjYkQTYkglYMcFYK0TPxPCLw8jBAEyL3D2bAIiMyDmbAQyLzUmc2gWd5EWPPETMzEzLzUmc2gWd5EjLCETLIMTPwPzPAESQCETLkE1PAEiYgMTPwnvYgMTPwXzPAEySCETLok1PAEiZgMTPwnVZCETLqE1PAEyZoMTPwvVXCETLrk1PAESagMTPwzVZCETLtE1PAEiaJj1PAEyagMTPw7VZCETLvE1PAECboMTPxHTPwfjPAESTBETLSITPwjjPAECUBETLUITPwXkPAECQBETLWITPwfkBBETLYITPwTjPAECYkITPwPVZBETLj0lPAESYgITPwTVYBETLkklPAESYsITPwXVXBETLlUlPAEiYoITPwXVaBoPPwbVXBETLmUlPAEyYoITPwbVaBETLFITPwbjPAECZoITPwfVaBETLOITPwj1XBETLoUlPAESZmITPwjVZBETLJj1ZBETLo0lPAESZuITPwnVXBETLpMlPAEiZkITPwn1YBETLpklPAEiZqITPwnVaBETLp8lPAEyZgITPwr1XBEjBwrVYBETLqclPAEyZoITPwr1ZBETLq0lPAEyZuITPwvVXBETLrMlPAECakITPwv1YBETLrklPAECaqITPwvVaBoPPwv1aBETLsElPAESaiITPwzVYBETLsclPAESaoITPwz1ZBETLs0lPAESauITPw3VXBETLtMlPAEiakITPw31YJHTPw3VZBETLtslPAEiasITPw31aBETLuElPAEyaiITPw7VYBETLuclPAEyaoITPw71ZBETLu0lPAEyauITPw.mBgITPw.2XBETLvUlPAECbmITPw.WZBETLvslPAECbsITPw.2aB0CNxLiMxn...."
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
										"blob" : "3379.CMlaKA....fQPMDZ....A.0aj8F...P.....ALGckAWKyUVbsPWcz8lboEFa.................vv8unBPMUFcgofBAUGcn8lb5nvIIEVZtAxPfPEHDUmaiElamnfBp7hBJLRPM0CTuQ1arM2ZoovHVUlby0SLvHCLxnvHE4FYoEla8vVZzQGakovHt0VOwbiBiz1b831atUlBiz1b8zzajcEZkUFaJLRay0CToQ2XncEZkUFaJLRay0yPu4Fcx8FafDjBiz1b8LzatQmbuwFHBovHsMWOLYzSmw1ahEFaJLRay0yQgQWYJLRay0iUkw1aikFc4ovHsMWOPIWYyMWcxUlBiz1b8rTY4Yzarw1a2ovHsMWOKUVdF8Far81cxnvHsMWOAwFckImagQWYJLRay0iTg4FYu0lBiz1b8LzatMGcg4FcJLRay0SPxAWSuQVcrEFcuImBiz1b8Tja1UFauAWYwnvHsMWOLYzSwnvHtYWOxnvHsYWOGEFckovHsYWOE4lckw1avUVLJLxXs0SagklaJLzXOAWO4biKv.iBivjQOcTOwnvHCglby0SLJLBQrkWL8DiBiLVa8.0PuIWYJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8DiBRUlc8jyMxPiBLUDQ8.iKv.iBPEzQE0CLJ.UXmU1bO4VOvnvPuIWYN0yLJLEaoMVY8PiBUkzWuAWOxnPSoQVZA0SMJzTZjkFT8XiBDYzarQVO2nvPzIGaA0iLJLDcxwlP8DSLJLxXs0CSF8zQJLUdtMVOwfiBTIWZm0CLJbUX1UVOwn.TnMWY8DiMt.CLJ.0arElb8.iBiLVa8X0PCovHLYzSwzSLJX0aoMVYy0CLJX0aoMVZtcVOwnPSuQVY8HiBP8lbzEVOxfiKv.iBPITOxn.TBQTOxnPSTUmaN0CNJzDU04FU8jiBTI2bv0SKwHiBFQUct0CLt.CLJDjbSMVOznPPx8jbj0CLJDjbLAWOvnPPx8zXz0SLJDjbLwTOwXiBAIGUx0CLJDzYzUVL8HiBAQmbvESOvnPP181XwzSLJDTa0wVL8DiBA01ajESOvnPPMQDbzESOv3BLvnPPmQWYxziLJDDcxAmL8.iBAY2aiISOwnPPsUGaxzSLJDTauQlL8.iBA0DQvQmL8.iKv.iBAcFckMSOxnPPzIGbyzCLJDjcuM1L8DiBA0VcrMSOwnPPs8FYyzCLJDTSDAGcyzCLt.CLJDzYzUFM8HiBAQmbvQSOvnPP181XzzSLJDTa0wFM8DiBA01ajQSOvnPPMQDbzQSOv3BLvnPPmQWY0ziLJDDcxAWM8.iBAY2aiUSOwnPPsUGa0zSLJDTauQVM8.iBA0DQvQWM8.iKv.iBAcFckYSOxnPPzIGb1zCLJDjcuMlM8DiBA0VcrYSOwnPPs8FY1zCLJDTSDAGc1zCLt.CLJDzYzU1M8HiBAQmbvcSOvnPP181X2zSLJDTa0w1M8DiBA01ajcSOvnPPMQDbzcSOv3BLvnPPmQWY3ziLJDDcxAGN8.iBAY2aigSOwnPPsUGa3zSLJDTauQFN8.iBA0DQvQGN8.iKv.iBAcFckkSOxnPPzIGb4zCLJDjcuMVN8DiBA0VcrkSOwnPPs8FY4zCLJDTSDAGc4zCLt.CLJDzYzUVLvziLJDDcxAWLvzCLJDjcuMVLvzSLJDTa0wVLvzSLJDTauQVLvzCLJDTSDAGcw.SOv3BLvnPPmQWYwDSOxnPPzIGbwDSOvnPP181XwDSOwnPPsUGawDSOwnPPs8FYwDSOvnPPMQDbzESL8.iKv.iBAcFckEiL8HiBAQmbvEiL8.iBAY2aiEiL8DiBA0VcrEiL8DiBA01ajEiL8.iBA0DQvQWLxzCLt.CLJDzYzUVLyziLJDDcxAWLyzCLJDjcuMVLyzSLJDTa0wVLyzSLJDTauQVLyzCLJDTSDAGcwLSOv3BLvnPPmQWYwPSOxnPPzIGbwPSOvnPP181XwPSOwnPPsUGawPSOwnPPs8FYwPSOvnPPMQDbzECM8.iKv.iBAcFckESM8HiBAQmbvESM8.iBAY2aiESM8DiBA0VcrESM8DiBA01ajESM8.iBA0DQvQWL0zCLt.CLJDzYzUVL1ziLJDDcxAWL1zCLJDjcuMVL1zSLJDTa0wVL1zSLJDTauQVL1zCLJDTSDAGcwXSOv3BLvnvHi0VOE4jUwnPSuQVY8.iBAQ2Z8DiKv.iBDU1X8LiMt.CLJLUcy0SL13BLvnvT0MGU8zxLx3BLvnfTkwVOv3BLvnfUkwVOyPiKv.iBiLVa8vjQOEiBSkmai0iLJPkbocVOwnvUgYWY8DiBPg1bk0CLt.CLJ.0arElb8.iBDwVd8.iKv.iBD0zTwzSLJPTSDESOw.CLt.CLJHUXzUVOv3BLvnfQMQTL8.iKv.iBiLVa87zTCEiBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJ.EZyUVO0DiKv.iBPg1bMMkbi0CLJ.EZy0DQvQWOv3BLvnPRtYmUuwVOx.iKv.iBSkWawzSMv3BLvnvUPMkbi0CLJbETDAGc8.iKv.iBVQ2aD0CLt.CLJLxXs0iUCYDLJPUdv0CLJLTcz0iLy3BLvnfTkMWO1TiKv.iBDImc8bSMt.CLJXTSwzCN23BLvnfQSESO2nfQMISOxPiKv.iBFMkL8TiBKUVdSMFa8HiMt.CLJDjQM0CLt.CLJLDaq0CMt.CLJLxXs0iUCETLJ.UXt0CLt.CLJX0ar0yLv3BLvnfUCETOwnPSuQ1TxMVOvnPSuQFQvQWOv3BLvn.Tg41TxMVOvnvHi0VOCglbyovPk4Fc8HCLt.CLJLEbkQVO0.iKv.iBDAGcn0SMv3BLvnfQkUlP8.iKv.iBMkFd8.iKv.iBiLVa8PDa4EiBS41XL0SNJLkaiIUOznfQkUlP8DyLt.CLJLjbyITOwPiKv.iBMkFd8fiKv.iBJnvKu.xTkMFco8lafX1axARcmwVdfL1asAmbkM2bkQFHhklagIWdfPTXzElBu7BHD8jSmPEHT8TUCgDHTgTRSofBjPBIjDCNxfiB+bFYmMVYtUlX5TVXgEVXgEVX5DVXgIVXgEVX5DVXgEVZgQFb5DVXgEVXgUVX5DVXgEVYgUVX5DVXgEVZgUVX5nPXgEVXqEVYgoSXgEVXsEVYgoSXgEVXuEVYgoSXgoSYioSYhoyXgoCYgoCZgoCZkoSXkoiXgoyXtoyYhoyYloyYJ7lNnQlNoElNgMlNgklNgslNg0lNhUlNhklNh0lNiUlNiklNi0lNi8VHwMWP2LFblYlSLg1XAISMvDmbAciSGwjBFojSLglXJcDZlczYvg1Xmo1Rm0lVmkFYiYTPzHSbxEzMwDmbAcCbpA2ZvwFbsAmav8FbvETXhAUXjgTXlE1Ygo.ZQElZREFaSElag8VXvkjXhI1XhQFUhYlXmIFZUIlZhslXrYkXtI1ahAGQiI1XiMFYWMlYic1Xng0XpM1ZiwVVJnjViAWQjIFYiQFYjUFYlQ1YjgFYoEGRAECLmAGbnUjTwMWP2TlZKclZMQTYjQjYkQTYkglYMcFYK0TPxPCLw8jBAEyL3D2bAIiMyDmbAQyLzUmc2gWd5EWPPETMzEzLzUmc2gWd5EjLCETLIMTPwPzPAESQCETLkE1PAEiYgMTPwnvYgMTPwXzPAEySCETLok1PAEiZgMTPwnVZCETLqE1PAEyZoMTPwvVXCETLrk1PAESagMTPwzVZCETLtE1PAEiaJj1PAEyagMTPw7VZCETLvE1PAECboMTPxHTPwfjPAESTBETLSITPwjjPAECUBETLUITPwXkPAECQBETLWITPwfkBBETLYITPwTjPAECYkITPwPVZBETLj0lPAESYgITPwTVYBETLkklPAESYsITPwXVXBETLlUlPAEiYoITPwXVaBoPPwbVXBETLmUlPAEyYoITPwbVaBETLFITPwbjPAECZoITPwfVaBETLOITPwj1XBETLoUlPAESZmITPwjVZBETLJj1ZBETLo0lPAESZuITPwnVXBETLpMlPAEiZkITPwn1YBETLpklPAEiZqITPwnVaBETLp8lPAEyZgITPwr1XBEjBwrVYBETLqclPAEyZoITPwr1ZBETLq0lPAEyZuITPwvVXBETLrMlPAECakITPwv1YBETLrklPAECaqITPwvVaBoPPwv1aBETLsElPAESaiITPwzVYBETLsclPAESaoITPwz1ZBETLs0lPAESauITPw3VXBETLtMlPAEiakITPw31YJHTPw3VZBETLtslPAEiasITPw31aBETLuElPAEyaiITPw7VYBETLuclPAEyaoITPw71ZBETLu0lPAEyauITPw.mBgITPw.2XBETLvUlPAECbmITPw.WZBETLvslPAECbsITPw.2aB0CNxLiMxn...."
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
					"varname" : "vst~[2]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 164.666666805744171, 237.0, 29.5, 22.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-201",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 164.666666805744171, 182.0, 65.0, 22.0 ],
					"text" : "unpack i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 164.666666805744171, 210.0, 61.0, 22.0 ],
					"text" : "makenote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 164.666666805744171, 263.0, 65.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-204",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 202.666666805744171, 234.0, 31.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 139.749999805744153, 134.0, 31.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 88.25, 335.0, 47.0, 97.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-191",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 88.25, 300.0, 47.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[1]",
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
							"blob" : "3380.CMlaKA....fQPMDZ....A.0aj8F...P.....ALGckAWKyUVbsPWcz8lboEFa.................v.9unBPMUFcgofBAUGcn8lb5nvIIEVZtAxPfPEHDUmaiElamnfBp7hBJLRPM0CTuQ1arM2ZoovHVUlby0SLvHCLxnvHE4FYoEla8vVZzQGakovHt0VOwbiBiz1b831atUlBiz1b8zzajcEZkUFaJLRay0CToQ2XncEZkUFaJLRay0yPu4Fcx8FafDjBiz1b8LzatQmbuwFHBovHsMWOLYzSmw1ahEFaJLRay0yQgQWYJLRay0iUkw1aikFc4ovHsMWOPIWYyMWcxUlBiz1b8rTY4Yzarw1a2ovHsMWOKUVdF8Far81cxnvHsMWOAwFckImagQWYJLRay0iTg4FYu0lBiz1b8LzatMGcg4FcJLRay0SPxAWSuQVcrEFcuImBiz1b8Tja1UFauAWYwnvHsMWOLYzSwnvHtYWOxnvHsYWOGEFckovHsYWOE4lckw1avUVLJLxXs0SagklaJLzXOAWO4biKv.iBivjQOcTOwnvHCglby0SLJLBQrkWL8DiBiLVa8.0PuIWYJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8DiBRUlc8jyMxPiBLUDQ8.iKv.iBPEzQE0CLJ.UXmU1bO4VOvnvPuIWYN0yLJLEaoMVY8PiBUkzWuAWOynPSoQVZA0SMJzTZjkFT8XiBDYzarQVO2nvPzIGaA0iLJLDcxwlP8DSLJLxXs0CSF8zQJLUdtMVOwfiBTIWZm0CLJbUX1UVOwn.TnMWY8DiMt.CLJ.0arElb8.iBiLVa8X0PCovHLYzSwzSLJX0aoMVYy0CLJX0aoMVZtcVOwnPSuQVY8HiBP8lbzEVOxfiKv.iBPITOxn.TBQTOxnPSTUmaN0CNJzDU04FU8jiBTI2bv0SKwHiBFQUct0CLt.CLJDjbSMVOznPPx8jbj0CLJDjbLAWOvnPPx8zXz0SLJDjbLwTOwXiBAIGUx0CLJDzYzUVL8HiBAQmbvESOvnPP181XwzSLJDTa0wVL8DiBA01ajESOvnPPMQDbzESOv3BLvnPPmQWYxziLJDDcxAmL8.iBAY2aiISOwnPPsUGaxzSLJDTauQlL8.iBA0DQvQmL8.iKv.iBAcFckMSOxnPPzIGbyzCLJDjcuM1L8DiBA0VcrMSOwnPPs8FYyzCLJDTSDAGcyzCLt.CLJDzYzUFM8HiBAQmbvQSOvnPP181XzzSLJDTa0wFM8DiBA01ajQSOvnPPMQDbzQSOv3BLvnPPmQWY0ziLJDDcxAWM8.iBAY2aiUSOwnPPsUGa0zSLJDTauQVM8.iBA0DQvQWM8.iKv.iBAcFckYSOxnPPzIGb1zCLJDjcuMlM8DiBA0VcrYSOwnPPs8FY1zCLJDTSDAGc1zCLt.CLJDzYzU1M8HiBAQmbvcSOvnPP181X2zSLJDTa0w1M8DiBA01ajcSOvnPPMQDbzcSOv3BLvnPPmQWY3ziLJDDcxAGN8.iBAY2aigSOwnPPsUGa3zSLJDTauQFN8.iBA0DQvQGN8.iKv.iBAcFckkSOxnPPzIGb4zCLJDjcuMVN8DiBA0VcrkSOwnPPs8FY4zCLJDTSDAGc4zCLt.CLJDzYzUVLvziLJDDcxAWLvzCLJDjcuMVLvzSLJDTa0wVLvzSLJDTauQVLvzCLJDTSDAGcw.SOv3BLvnPPmQWYwDSOxnPPzIGbwDSOvnPP181XwDSOwnPPsUGawDSOwnPPs8FYwDSOvnPPMQDbzESL8.iKv.iBAcFckEiL8HiBAQmbvEiL8.iBAY2aiEiL8DiBA0VcrEiL8DiBA01ajEiL8.iBA0DQvQWLxzCLt.CLJDzYzUVLyziLJDDcxAWLyzCLJDjcuMVLyzSLJDTa0wVLyzSLJDTauQVLyzCLJDTSDAGcwLSOv3BLvnPPmQWYwPSOxnPPzIGbwPSOvnPP181XwPSOwnPPsUGawPSOwnPPs8FYwPSOvnPPMQDbzECM8.iKv.iBAcFckESM8HiBAQmbvESM8.iBAY2aiESM8DiBA0VcrESM8DiBA01ajESM8.iBA0DQvQWL0zCLt.CLJDzYzUVL1ziLJDDcxAWL1zCLJDjcuMVL1zSLJDTa0wVL1zSLJDTauQVL1zCLJDTSDAGcwXSOv3BLvnvHi0VOE4jUwnPSuQVY8.iBAQ2Z8DiKv.iBDU1X8LiMt.CLJLUcy0SL13BLvnvT0MGU8zxLx3BLvnfTkwVOv3BLvnfUkwVOyPiKv.iBiLVa8vjQOEiBSkmai0iLJPkbocVOwnvUgYWY8DiBPg1bk0CLt.CLJ.0arElb8.iBDwVd8.iKv.iBD0zTwzSLJPTSDESOw.CLt.CLJHUXzUVOv3BLvnfQMQTL8.iKv.iBiLVa87zTCEiBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJ.EZyUVO0DiKv.iBPg1bMMkbi0CLJ.EZy0DQvQWOv3BLvnPRtYmUuwVOx.iKv.iBSkWawzSMv3BLvnvUPMkbi0CLJbETDAGc8.iKv.iBVQ2aD0CLt.CLJLxXs0iUCYDLJPUdv0CLJLTcz0iLy3BLvnfTkMWO1TiKv.iBDImc8bSMt.CLJXTSwzCN23BLvnfQSESO2nfQMISOxPiKv.iBFMkL8TiBKUVdSMFa8HiMt.CLJDjQM0CLt.CLJLDaq0CMt.CLJLxXs0iUCETLJ.UXt0CLt.CLJX0ar0yLv3BLvnfUCETOwnPSuQ1TxMVOvnPSuQFQvQWOv3BLvn.Tg41TxMVOvnvHi0VOCglbyovPk4Fc8HCLt.CLJLEbkQVO0.iKv.iBDAGcn0SMv3BLvnfQkUlP8.iKv.iBMkFd8.iKv.iBiLVa8PDa4EiBS41XL0SNJLkaiIUOznfQkUlP8DyLt.CLJLjbyITOwPiKv.iBMkFd8fiKv.iBJnvKu.xTkMFco8lafX1axARcmwVdfL1asAmbkM2bkQFHhklagIWdfPTXzElBu7BHD8jSmPEHT8TUCgDHTgTRSofBjPBIjDCNxfiB+bFYmMVYtUlX5TVXgEVXgEVX5DVXgIVXgEVX5DVXgEVZgQFb5DVXgEVXgUVX5DVXgEVYgUVX5DVXgEVZgUVX5nPXgEVXqEVYgoSXgEVXsEVYgoSXgEVXuEVYgoSXgoSYioSYhoyXgoCZgoCZkoSXkoiXgoyXtoCYgoyYhoyYloyYJ7lNnQlNoElNgMlNgklNgslNg0lNhUlNhklNhwlNh0lNiUlNiklNi0VHwMWP2LFblYlSLg1XAISMvDmbAciSFwjBEkjSLglXIYDZlYzYvg1Xmo1Rm01XucVZjMVQAQiLwIWP2DSbxEzMvoFbqAGav0FbtA2avAWPgIFTgQ1QgYVXmoPXnEUXpIUXrMUXtE1agAGRhIlXiIFYTIlYhclXnUkXpI1ZVckXtI1ahAGQiI1XiMFYXMlYic1Xnk0XpM1ZiwlVJjzXuMFbJQlXjMFYjQVYjYFYmQFZjkVbGETLvTFZVQlXRE2bAcSYpszYp0DQkQFQlUFQkUFZl0zYjsTSAICMvDmBOETLyfSbyEjL1LSbxEDMyPWc1cGd4oWbAAUP0PWPyPWc1cGd4oWPxLTPwfzPAECQCETLJMTPwTVXCETLlE1PAoPLmE1PAESQCETLOMTPwjVZCETLpE1PAEiZoMTPwrVXCETLqk1PAECagMTPwvVZCETLsE1PAESaoMTPw3VXCETLJ3VZCETLuE1PAEyaoMTPw.WXCETLvk1PAIiPAEyQBETLQITPwLkPAECRBETLTITPwTkPAEyUBETLDITPwfkPAEiBYITPwnkPAEiRBETLjUlPAECYoITPwPVaBETLkElPAESYkITPwTVZBETLk0lPAEiYgITPwXVYBETLlklPAEiYsofPAEyYgITPwbVYBETLmklPAEyYsITPwTjPAEiQBETLnklPAECZsITPw7jPAESZiITPwjVYBETLoclPAESZoITPJDSZqITPwjVaBETLo8lPAEiZgITPwn1XBETLpUlPAEiZmITPwnVZBETLpslPAEiZsITPwn1aBETLqElPAEyZiIjBAEyZkITPwr1YBETLqklPAEyZqITPwrVaBETLq8lPAECagITPwv1XBETLrUlPAECamITPwvVZBETLrslPAECasofPAECauITPwzVXBETLsMlPAESakITPwz1YBETLsklPAESaqITPwzVaBETLs8lPAEiagITPw31XBETLtUlPAEiaJblPAEiaoITPw31ZBETLt0lPAEiauITPw7VXBETLuMlPAEyakITPw71YBETLuklPAEyaqITPw7VaBETLu8lPAEiBvElPAECbiITPw.WYBETLvclPAECboITPw.2ZBETLv0lPAECbuITO3HCM2LiB..."
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
										"blob" : "3380.CMlaKA....fQPMDZ....A.0aj8F...P.....ALGckAWKyUVbsPWcz8lboEFa.................v.9unBPMUFcgofBAUGcn8lb5nvIIEVZtAxPfPEHDUmaiElamnfBp7hBJLRPM0CTuQ1arM2ZoovHVUlby0SLvHCLxnvHE4FYoEla8vVZzQGakovHt0VOwbiBiz1b831atUlBiz1b8zzajcEZkUFaJLRay0CToQ2XncEZkUFaJLRay0yPu4Fcx8FafDjBiz1b8LzatQmbuwFHBovHsMWOLYzSmw1ahEFaJLRay0yQgQWYJLRay0iUkw1aikFc4ovHsMWOPIWYyMWcxUlBiz1b8rTY4Yzarw1a2ovHsMWOKUVdF8Far81cxnvHsMWOAwFckImagQWYJLRay0iTg4FYu0lBiz1b8LzatMGcg4FcJLRay0SPxAWSuQVcrEFcuImBiz1b8Tja1UFauAWYwnvHsMWOLYzSwnvHtYWOxnvHsYWOGEFckovHsYWOE4lckw1avUVLJLxXs0SagklaJLzXOAWO4biKv.iBivjQOcTOwnvHCglby0SLJLBQrkWL8DiBiLVa8.0PuIWYJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8DiBRUlc8jyMxPiBLUDQ8.iKv.iBPEzQE0CLJ.UXmU1bO4VOvnvPuIWYN0yLJLEaoMVY8PiBUkzWuAWOynPSoQVZA0SMJzTZjkFT8XiBDYzarQVO2nvPzIGaA0iLJLDcxwlP8DSLJLxXs0CSF8zQJLUdtMVOwfiBTIWZm0CLJbUX1UVOwn.TnMWY8DiMt.CLJ.0arElb8.iBiLVa8X0PCovHLYzSwzSLJX0aoMVYy0CLJX0aoMVZtcVOwnPSuQVY8HiBP8lbzEVOxfiKv.iBPITOxn.TBQTOxnPSTUmaN0CNJzDU04FU8jiBTI2bv0SKwHiBFQUct0CLt.CLJDjbSMVOznPPx8jbj0CLJDjbLAWOvnPPx8zXz0SLJDjbLwTOwXiBAIGUx0CLJDzYzUVL8HiBAQmbvESOvnPP181XwzSLJDTa0wVL8DiBA01ajESOvnPPMQDbzESOv3BLvnPPmQWYxziLJDDcxAmL8.iBAY2aiISOwnPPsUGaxzSLJDTauQlL8.iBA0DQvQmL8.iKv.iBAcFckMSOxnPPzIGbyzCLJDjcuM1L8DiBA0VcrMSOwnPPs8FYyzCLJDTSDAGcyzCLt.CLJDzYzUFM8HiBAQmbvQSOvnPP181XzzSLJDTa0wFM8DiBA01ajQSOvnPPMQDbzQSOv3BLvnPPmQWY0ziLJDDcxAWM8.iBAY2aiUSOwnPPsUGa0zSLJDTauQVM8.iBA0DQvQWM8.iKv.iBAcFckYSOxnPPzIGb1zCLJDjcuMlM8DiBA0VcrYSOwnPPs8FY1zCLJDTSDAGc1zCLt.CLJDzYzU1M8HiBAQmbvcSOvnPP181X2zSLJDTa0w1M8DiBA01ajcSOvnPPMQDbzcSOv3BLvnPPmQWY3ziLJDDcxAGN8.iBAY2aigSOwnPPsUGa3zSLJDTauQFN8.iBA0DQvQGN8.iKv.iBAcFckkSOxnPPzIGb4zCLJDjcuMVN8DiBA0VcrkSOwnPPs8FY4zCLJDTSDAGc4zCLt.CLJDzYzUVLvziLJDDcxAWLvzCLJDjcuMVLvzSLJDTa0wVLvzSLJDTauQVLvzCLJDTSDAGcw.SOv3BLvnPPmQWYwDSOxnPPzIGbwDSOvnPP181XwDSOwnPPsUGawDSOwnPPs8FYwDSOvnPPMQDbzESL8.iKv.iBAcFckEiL8HiBAQmbvEiL8.iBAY2aiEiL8DiBA0VcrEiL8DiBA01ajEiL8.iBA0DQvQWLxzCLt.CLJDzYzUVLyziLJDDcxAWLyzCLJDjcuMVLyzSLJDTa0wVLyzSLJDTauQVLyzCLJDTSDAGcwLSOv3BLvnPPmQWYwPSOxnPPzIGbwPSOvnPP181XwPSOwnPPsUGawPSOwnPPs8FYwPSOvnPPMQDbzECM8.iKv.iBAcFckESM8HiBAQmbvESM8.iBAY2aiESM8DiBA0VcrESM8DiBA01ajESM8.iBA0DQvQWL0zCLt.CLJDzYzUVL1ziLJDDcxAWL1zCLJDjcuMVL1zSLJDTa0wVL1zSLJDTauQVL1zCLJDTSDAGcwXSOv3BLvnvHi0VOE4jUwnPSuQVY8.iBAQ2Z8DiKv.iBDU1X8LiMt.CLJLUcy0SL13BLvnvT0MGU8zxLx3BLvnfTkwVOv3BLvnfUkwVOyPiKv.iBiLVa8vjQOEiBSkmai0iLJPkbocVOwnvUgYWY8DiBPg1bk0CLt.CLJ.0arElb8.iBDwVd8.iKv.iBD0zTwzSLJPTSDESOw.CLt.CLJHUXzUVOv3BLvnfQMQTL8.iKv.iBiLVa87zTCEiBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJ.EZyUVO0DiKv.iBPg1bMMkbi0CLJ.EZy0DQvQWOv3BLvnPRtYmUuwVOx.iKv.iBSkWawzSMv3BLvnvUPMkbi0CLJbETDAGc8.iKv.iBVQ2aD0CLt.CLJLxXs0iUCYDLJPUdv0CLJLTcz0iLy3BLvnfTkMWO1TiKv.iBDImc8bSMt.CLJXTSwzCN23BLvnfQSESO2nfQMISOxPiKv.iBFMkL8TiBKUVdSMFa8HiMt.CLJDjQM0CLt.CLJLDaq0CMt.CLJLxXs0iUCETLJ.UXt0CLt.CLJX0ar0yLv3BLvnfUCETOwnPSuQ1TxMVOvnPSuQFQvQWOv3BLvn.Tg41TxMVOvnvHi0VOCglbyovPk4Fc8HCLt.CLJLEbkQVO0.iKv.iBDAGcn0SMv3BLvnfQkUlP8.iKv.iBMkFd8.iKv.iBiLVa8PDa4EiBS41XL0SNJLkaiIUOznfQkUlP8DyLt.CLJLjbyITOwPiKv.iBMkFd8fiKv.iBJnvKu.xTkMFco8lafX1axARcmwVdfL1asAmbkM2bkQFHhklagIWdfPTXzElBu7BHD8jSmPEHT8TUCgDHTgTRSofBjPBIjDCNxfiB+bFYmMVYtUlX5TVXgEVXgEVX5DVXgIVXgEVX5DVXgEVZgQFb5DVXgEVXgUVX5DVXgEVYgUVX5DVXgEVZgUVX5nPXgEVXqEVYgoSXgEVXsEVYgoSXgEVXuEVYgoSXgoSYioSYhoyXgoCZgoCZkoSXkoiXgoyXtoCYgoyYhoyYloyYJ7lNnQlNoElNgMlNgklNgslNg0lNhUlNhklNhwlNh0lNiUlNiklNi0VHwMWP2LFblYlSLg1XAISMvDmbAciSFwjBEkjSLglXIYDZlYzYvg1Xmo1Rm01XucVZjMVQAQiLwIWP2DSbxEzMvoFbqAGav0FbtA2avAWPgIFTgQ1QgYVXmoPXnEUXpIUXrMUXtE1agAGRhIlXiIFYTIlYhclXnUkXpI1ZVckXtI1ahAGQiI1XiMFYXMlYic1Xnk0XpM1ZiwlVJjzXuMFbJQlXjMFYjQVYjYFYmQFZjkVbGETLvTFZVQlXRE2bAcSYpszYp0DQkQFQlUFQkUFZl0zYjsTSAICMvDmBOETLyfSbyEjL1LSbxEDMyPWc1cGd4oWbAAUP0PWPyPWc1cGd4oWPxLTPwfzPAECQCETLJMTPwTVXCETLlE1PAoPLmE1PAESQCETLOMTPwjVZCETLpE1PAEiZoMTPwrVXCETLqk1PAECagMTPwvVZCETLsE1PAESaoMTPw3VXCETLJ3VZCETLuE1PAEyaoMTPw.WXCETLvk1PAIiPAEyQBETLQITPwLkPAECRBETLTITPwTkPAEyUBETLDITPwfkPAEiBYITPwnkPAEiRBETLjUlPAECYoITPwPVaBETLkElPAESYkITPwTVZBETLk0lPAEiYgITPwXVYBETLlklPAEiYsofPAEyYgITPwbVYBETLmklPAEyYsITPwTjPAEiQBETLnklPAECZsITPw7jPAESZiITPwjVYBETLoclPAESZoITPJDSZqITPwjVaBETLo8lPAEiZgITPwn1XBETLpUlPAEiZmITPwnVZBETLpslPAEiZsITPwn1aBETLqElPAEyZiIjBAEyZkITPwr1YBETLqklPAEyZqITPwrVaBETLq8lPAECagITPwv1XBETLrUlPAECamITPwvVZBETLrslPAECasofPAECauITPwzVXBETLsMlPAESakITPwz1YBETLsklPAESaqITPwzVaBETLs8lPAEiagITPw31XBETLtUlPAEiaJblPAEiaoITPw31ZBETLt0lPAEiauITPw7VXBETLuMlPAEyakITPw71YBETLuklPAEyaqITPw7VaBETLu8lPAEiBvElPAECbiITPw.WYBETLvclPAECboITPw.2ZBETLv0lPAECbuITO3HCM2LiB..."
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
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.5, 237.0, 29.5, 22.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 93.5, 182.0, 65.0, 22.0 ],
					"text" : "unpack i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 93.5, 210.0, 61.0, 22.0 ],
					"text" : "makenote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 93.5, 263.0, 65.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 131.5, 234.0, 31.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 124.749999805744153, 119.0, 31.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 816.0, 669.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 815.0, 697.0, 99.0, 22.0 ],
					"text" : "set-track-on 3 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 815.0, 726.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 695.0, 669.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 694.0, 697.0, 99.0, 22.0 ],
					"text" : "set-track-on 2 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 694.0, 726.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 575.0, 669.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 574.0, 697.0, 99.0, 22.0 ],
					"text" : "set-track-on 1 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 574.0, 726.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 451.0, 669.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-158",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 451.0, 601.0, 187.0, 24.0 ],
					"text" : "Track Mutes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 697.0, 99.0, 22.0 ],
					"text" : "set-track-on 0 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 726.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-145",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 451.5, 462.0, 187.0, 24.0 ],
					"text" : "Loop len tracks 1 to 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 811.5, 524.0, 98.0, 22.0 ],
					"text" : "set-loop-len 3 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 811.5, 553.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-148",
					"maxclass" : "number",
					"maximum" : 16,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 811.5, 497.0, 54.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.5, 524.0, 98.0, 22.0 ],
					"text" : "set-loop-len 2 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 695.5, 553.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-151",
					"maxclass" : "number",
					"maximum" : 16,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 695.5, 497.0, 54.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.5, 524.0, 98.0, 22.0 ],
					"text" : "set-loop-len 1 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 575.5, 553.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-154",
					"maxclass" : "number",
					"maximum" : 16,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 575.5, 497.0, 54.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.5, 524.0, 98.0, 22.0 ],
					"text" : "set-loop-len 0 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 451.5, 553.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-157",
					"maxclass" : "number",
					"maximum" : 16,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 451.5, 497.0, 54.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-144",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 455.0, 334.0, 187.0, 24.0 ],
					"text" : "Loop top tracks 1 to 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 815.0, 390.0, 99.0, 22.0 ],
					"text" : "set-loop-top 3 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 815.0, 419.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-143",
					"maxclass" : "number",
					"maximum" : 15,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 815.0, 363.0, 54.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 699.0, 390.0, 99.0, 22.0 ],
					"text" : "set-loop-top 2 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 699.0, 419.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-140",
					"maxclass" : "number",
					"maximum" : 15,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 699.0, 363.0, 54.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 579.0, 390.0, 99.0, 22.0 ],
					"text" : "set-loop-top 1 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 579.0, 419.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-137",
					"maxclass" : "number",
					"maximum" : 15,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 579.0, 363.0, 54.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 455.0, 390.0, 99.0, 22.0 ],
					"presentation_linecount" : 2,
					"text" : "set-loop-top 0 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 455.0, 419.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-132",
					"maxclass" : "number",
					"maximum" : 15,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 455.0, 363.0, 54.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-131",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 455.0, 160.0, 187.0, 24.0 ],
					"presentation_linecount" : 3,
					"text" : "Midi edit selectors"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-127",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 459.5, 191.5, 78.0, 24.0 ],
					"text" : "Track"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 459.5, 247.0, 87.0, 22.0 ],
					"presentation_linecount" : 2,
					"text" : "select-track $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 459.5, 276.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-130",
					"maxclass" : "number",
					"maximum" : 16,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 459.5, 220.5, 55.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 670.5, 191.5, 45.0, 24.0 ],
					"text" : "Dur"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 670.5, 247.0, 78.0, 22.0 ],
					"text" : "select-dur $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 670.5, 276.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-125",
					"maxclass" : "number",
					"maximum" : 1920,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 670.5, 220.5, 54.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 912.0, 281.0, 106.0, 22.0 ],
					"text" : "midi-note 79 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 877.0, 195.0, 117.0, 20.0 ],
					"text" : "<- set to your input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 835.0, 281.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 835.0, 254.0, 105.0, 22.0 ],
					"text" : "prepend midi-note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 835.0, 224.0, 40.0, 22.0 ],
					"text" : "join 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 834.0, 195.0, 41.0, 22.0 ],
					"text" : "notein"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-111",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 560.5, 191.5, 78.0, 24.0 ],
					"text" : "Step"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.5, 247.0, 83.0, 22.0 ],
					"text" : "select-step $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 560.5, 276.0, 61.0, 22.0 ],
					"text" : "s #0_s4m"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-38",
					"maxclass" : "number",
					"maximum" : 16,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 560.5, 220.5, 55.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.25, 584.0, 61.0, 22.0 ],
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
					"patching_rect" : [ 19.25, 558.0, 29.5, 22.0 ],
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
					"patching_rect" : [ 19.5, 499.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 19.25, 531.0, 63.0, 22.0 ],
					"text" : "metro 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 192.166666805744171, 95.0, 34.0, 22.0 ],
					"text" : "scan"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 353.416666805744171, 142.333333611488342, 74.0, 24.0 ],
					"text" : "seed-data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 107.0, 496.0, 38.0, 38.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 12.0, 335.0, 47.0, 97.0 ],
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
					"patching_rect" : [ 12.0, 300.0, 47.0, 22.0 ],
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
							"blob" : "3379.CMlaKA....fQPMDZ....A.0aj8F...P.....ALGckAWKyUVbsPWcz8lboEFa.................vv8unBPMUFcgofBAUGcn8lb5nvIIEVZtAxPfPEHDUmaiElamnfBp7hBJLRPM0CTuQ1arM2ZoovHVUlby0SLvHCLxnvHE4FYoEla8vVZzQGakovHt0VOwbiBiz1b831atUlBiz1b8zzajcEZkUFaJLRay0CToQ2XncEZkUFaJLRay0yPu4Fcx8FafDjBiz1b8LzatQmbuwFHBovHsMWOLYzSmw1ahEFaJLRay0yQgQWYJLRay0iUkw1aikFc4ovHsMWOPIWYyMWcxUlBiz1b8rTY4Yzarw1a2ovHsMWOKUVdF8Far81cxnvHsMWOAwFckImagQWYJLRay0iTg4FYu0lBiz1b8LzatMGcg4FcJLRay0SPxAWSuQVcrEFcuImBiz1b8Tja1UFauAWYwnvHsMWOLYzSwnvHtYWOxnvHsYWOGEFckovHsYWOE4lckw1avUVLJLxXs0SagklaJLzXOAWO4biKv.iBivjQOcTOwnvHCglby0SLJLBQrkWL8DiBiLVa8.0PuIWYJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8DiBRUlc8jyMxPiBLUDQ8.iKv.iBPEzQE0CLJ.UXmU1bO4VOvnvPuIWYN0yLJLEaoMVY8PiBUkzWuAWOynPSoQVZA0SMJzTZjkFT8XiBDYzarQVO2nvPzIGaA0iLJLDcxwlP8DSLJLxXs0CSF8zQJLUdtMVOwfiBTIWZm0CLJbUX1UVOwn.TnMWY8DiMt.CLJ.0arElb8.iBiLVa8X0PCovHLYzSwzSLJX0aoMVYy0CLJX0aoMVZtcVOwnPSuQVY8DiBP8lbzEVO13BLvn.TB0iLJ.kPD0iLJzDU04lS8fiBMQUctQUO4n.UxMGb8zRLxnfQTUma8.iKv.iBAI2Ti0CMJDjbOIGY8.iBAIGSv0CLJDjbOMFc8DiBAIGSL0SL1nPPxQkb8.iBAcFckESOxnPPzIGbwzCLJDjcuMVL8DiBA0VcrESOwnPPs8FYwzCLJDTSDAGcwzCLt.CLJDzYzUlL8HiBAQmbvISOvnPP181XxzSLJDTa0wlL8DiBA01ajISOvnPPMQDbzISOv3BLvnPPmQWYyziLJDDcxA2L8.iBAY2aiMSOwnPPsUGayzSLJDTauQ1L8.iBA0DQvQ2L8.iKv.iBAcFckQSOxnPPzIGbzzCLJDjcuMFM8DiBA0VcrQSOwnPPs8FYzzCLJDTSDAGczzCLt.CLJDzYzUVM8HiBAQmbvUSOvnPP181X0zSLJDTa0wVM8DiBA01ajUSOvnPPMQDbzUSOv3BLvnPPmQWY1ziLJDDcxAmM8.iBAY2aiYSOwnPPsUGa1zSLJDTauQlM8.iBA0DQvQmM8.iKv.iBAcFckcSOxnPPzIGb2zCLJDjcuM1M8DiBA0VcrcSOwnPPs8FY2zCLJDTSDAGc2zCLt.CLJDzYzUFN8HiBAQmbvgSOvnPP181X3zSLJDTa0wFN8DiBA01ajgSOvnPPMQDbzgSOv3BLvnPPmQWY4ziLJDDcxAWN8.iBAY2aikSOwnPPsUGa4zSLJDTauQVN8.iBA0DQvQWN8.iKv.iBAcFckECL8HiBAQmbvECL8.iBAY2aiECL8DiBA0VcrECL8DiBA01ajECL8.iBA0DQvQWLvzCLt.CLJDzYzUVLwziLJDDcxAWLwzCLJDjcuMVLwzSLJDTa0wVLwzSLJDTauQVLwzCLJDTSDAGcwDSOv3BLvnPPmQWYwHSOxnPPzIGbwHSOvnPP181XwHSOwnPPsUGawHSOwnPPs8FYwHSOvnPPMQDbzEiL8.iKv.iBAcFckEyL8HiBAQmbvEyL8.iBAY2aiEyL8DiBA0VcrEyL8DiBA01ajEyL8.iBA0DQvQWLyzCLt.CLJDzYzUVLzziLJDDcxAWLzzCLJDjcuMVLzzSLJDTa0wVLzzSLJDTauQVLzzCLJDTSDAGcwPSOv3BLvnPPmQWYwTSOxnPPzIGbwTSOvnPP181XwTSOwnPPsUGawTSOwnPPs8FYwTSOvnPPMQDbzESM8.iKv.iBAcFckEiM8HiBAQmbvEiM8.iBAY2aiEiM8DiBA0VcrEiM8DiBA01ajEiM8.iBA0DQvQWL1zCLt.CLJLxXs0SQNYULJzzajUVOvnPPzsVOw3BLvn.QkMVOzjiKv.iBSU2b8PiMt.CLJLUcyQUOsLiLt.CLJHUYr0CLt.CLJXUYr0CM03BLvnvHi0VOLYzSwnvT441X8HiBTIWZm0SLJbUX1UVOwn.TnMWY8.iKv.iBP8FagIWOvn.QrkWOv3BLvn.QMMUL8DiBD0DQwzSLv.iKv.iBREFck0CLt.CLJXTSDESOv3BLvnvHi0VOOM0Pwn.U04VY8.iKv.iBKUVdSMFa8DCLv3BLvn.UMMkbi0CLJPUSDAGc8.iKv.iBPg1bk0SMw3BLvn.TnMWSSI2X8.iBPg1bMQDbz0CLt.CLJjja1Y0ar0SK0PiKv.iBSkWawzSMv3BLvnvUPMkbi0CLJbETDAGc8.iKv.iBVQ2aD0CLt.CLJLxXs0iUCYDLJPUdv0CLJLTcz0iLx3BLvnfTkMWOyPiKv.iBDImc8XSLt.CLJXTSwzCN23BLvnfQSESO2nfQMISOwPiKv.iBFMkL8TiBKUVdSMFa8DSLt.CLJDjQM0CLt.CLJLDaq0CLt.CLJLxXs0iUCETLJ.UXt0CLt.CLJX0ar0yLv3BLvnfUCETOwnPSuQ1TxMVOvnPSuQFQvQWOv3BLvn.Tg41TxMVOvnvHi0VOCglbyovPk4Fc8HCLt.CLJLEbkQVO0.iKv.iBDAGcn0SMv3BLvnfQkUlP8.iKv.iBMkFd8.iKv.iBiLVa8PDa4EiBS41XL0SNJLkaiIUOznfQkUlP8DyLt.CLJLjbyITOwPiKv.iBMkFd8fiKv.iBJnvKu.xTkMFco8lafX1axARcmwVdfL1asAmbkM2bkQFHhklagIWdfPTXzElBu7BHD8jSmPEHT8TUCgDHTgTRSofBjPBIjDCNxfiB+bFYmMVYtUlX5TVXgEVXgEVX5DVXgIVXgEVX5DVXgEVZgQFb5DVXgEVXgUVX5DVXgEVYgUVX5DVXgEVZgUVX5nPXgEVXqEVYgoSXgEVXsEVYgoSXgEVXuEVYgoSXgoSYioSYhoyXgoCZgoCZkoSXkoiXgoyXtoCYgoCYkoyYhoyYJXlNm8lNnQlNoElNgMlNgklNgslNg0lNhUlNhklNh0lNiUlNiklNi0VHwMWP2LFblY1SMg1XAISMvDmbAcySF0jBEkzSMglXIYDZlYzYvg1XmoFSm01XucVZjMVQAQiLwIWP2DSbxEzMvoFbqAGav0FbtA2avAWPgIVTgQ1QgYVXmoPXnIUXpMUXrQUXtE1agAGRhIlXiIFYUIlYhclXnYkXpI1Zhw1Uh4lXuIFbDMlXiM1Xjg0XlM1YigVVio1XqMFaJnURi81XvoDYhQ1XjQ1RjYFYmQFZjkVbGETLvbFbmg1RSE2bAcSYpwzYp4DQkQFQlUFQkUFZl4zYjwjSAICMvDmBPETLyfSbyEjL1LSbxEDMyPWc1cGd4oWbAEUP0PWPyPWc1cGd4oWPxLTPwfzPAECQCETLJMTPwTVXCETLlE1PAoPLmE1PAESQCETLPMTPwjVZCETLpE1PAEiZoMTPwrVXCETLqk1PAECagMTPwvVZCETLsE1PAESaoMTPw3VXCETLJ3VZCETLuE1PAEyaoMTPw.WXCETLvk1PAIiPAEyQBETLRITPwPkPAECRBETLUITPwXkPAEyUBETLDITPwfkPAEiBYITPwnkPAEiRBETLKITPwPVZBETLj0lPAESYgITPwTVYBETLkklPAESYsITPwXVXBETLlUlPAEiYoITPwXVaBoPPwbVXBETLmUlPAEyYoITPwbVaBETLEITPwXjPAECZoITPwfVaBETLPITPwj1XBETLoUlPAESZmITPwjVZBETLJj1ZBETLo0lPAESZuITPwnVXBETLpMlPAEiZkITPwn1YBETLpklPAEiZqITPwnVaBETLp8lPAEyZgITPwr1XBEjBwrVYBETLqclPAEyZoITPwr1ZBETLq0lPAEyZuITPwvVXBETLrMlPAECakITPwv1YBETLrklPAECaqITPwvVaBoPPwv1aBETLsElPAESaiITPwzVYBETLsclPAESaoITPwz1ZBETLs0lPAESauITPw3VXBETLtMlPAEiakITPw31YJHTPw3VZBETLtslPAEiasITPw31aBETLuElPAEyaiITPw7VYBETLuclPAEyaoITPw71ZBETLu0lPAEyauITPw.mBgITPw.2XBETLvUlPAECbmITPw.WZBETLvslPAECbsITPw.2aB0CNxLyMwn...."
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
										"blob" : "3379.CMlaKA....fQPMDZ....A.0aj8F...P.....ALGckAWKyUVbsPWcz8lboEFa.................vv8unBPMUFcgofBAUGcn8lb5nvIIEVZtAxPfPEHDUmaiElamnfBp7hBJLRPM0CTuQ1arM2ZoovHVUlby0SLvHCLxnvHE4FYoEla8vVZzQGakovHt0VOwbiBiz1b831atUlBiz1b8zzajcEZkUFaJLRay0CToQ2XncEZkUFaJLRay0yPu4Fcx8FafDjBiz1b8LzatQmbuwFHBovHsMWOLYzSmw1ahEFaJLRay0yQgQWYJLRay0iUkw1aikFc4ovHsMWOPIWYyMWcxUlBiz1b8rTY4Yzarw1a2ovHsMWOKUVdF8Far81cxnvHsMWOAwFckImagQWYJLRay0iTg4FYu0lBiz1b8LzatMGcg4FcJLRay0SPxAWSuQVcrEFcuImBiz1b8Tja1UFauAWYwnvHsMWOLYzSwnvHtYWOxnvHsYWOGEFckovHsYWOE4lckw1avUVLJLxXs0SagklaJLzXOAWO4biKv.iBivjQOcTOwnvHCglby0SLJLBQrkWL8DiBiLVa8.0PuIWYJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8DiBRUlc8jyMxPiBLUDQ8.iKv.iBPEzQE0CLJ.UXmU1bO4VOvnvPuIWYN0yLJLEaoMVY8PiBUkzWuAWOynPSoQVZA0SMJzTZjkFT8XiBDYzarQVO2nvPzIGaA0iLJLDcxwlP8DSLJLxXs0CSF8zQJLUdtMVOwfiBTIWZm0CLJbUX1UVOwn.TnMWY8DiMt.CLJ.0arElb8.iBiLVa8X0PCovHLYzSwzSLJX0aoMVYy0CLJX0aoMVZtcVOwnPSuQVY8DiBP8lbzEVO13BLvn.TB0iLJ.kPD0iLJzDU04lS8fiBMQUctQUO4n.UxMGb8zRLxnfQTUma8.iKv.iBAI2Ti0CMJDjbOIGY8.iBAIGSv0CLJDjbOMFc8DiBAIGSL0SL1nPPxQkb8.iBAcFckESOxnPPzIGbwzCLJDjcuMVL8DiBA0VcrESOwnPPs8FYwzCLJDTSDAGcwzCLt.CLJDzYzUlL8HiBAQmbvISOvnPP181XxzSLJDTa0wlL8DiBA01ajISOvnPPMQDbzISOv3BLvnPPmQWYyziLJDDcxA2L8.iBAY2aiMSOwnPPsUGayzSLJDTauQ1L8.iBA0DQvQ2L8.iKv.iBAcFckQSOxnPPzIGbzzCLJDjcuMFM8DiBA0VcrQSOwnPPs8FYzzCLJDTSDAGczzCLt.CLJDzYzUVM8HiBAQmbvUSOvnPP181X0zSLJDTa0wVM8DiBA01ajUSOvnPPMQDbzUSOv3BLvnPPmQWY1ziLJDDcxAmM8.iBAY2aiYSOwnPPsUGa1zSLJDTauQlM8.iBA0DQvQmM8.iKv.iBAcFckcSOxnPPzIGb2zCLJDjcuM1M8DiBA0VcrcSOwnPPs8FY2zCLJDTSDAGc2zCLt.CLJDzYzUFN8HiBAQmbvgSOvnPP181X3zSLJDTa0wFN8DiBA01ajgSOvnPPMQDbzgSOv3BLvnPPmQWY4ziLJDDcxAWN8.iBAY2aikSOwnPPsUGa4zSLJDTauQVN8.iBA0DQvQWN8.iKv.iBAcFckECL8HiBAQmbvECL8.iBAY2aiECL8DiBA0VcrECL8DiBA01ajECL8.iBA0DQvQWLvzCLt.CLJDzYzUVLwziLJDDcxAWLwzCLJDjcuMVLwzSLJDTa0wVLwzSLJDTauQVLwzCLJDTSDAGcwDSOv3BLvnPPmQWYwHSOxnPPzIGbwHSOvnPP181XwHSOwnPPsUGawHSOwnPPs8FYwHSOvnPPMQDbzEiL8.iKv.iBAcFckEyL8HiBAQmbvEyL8.iBAY2aiEyL8DiBA0VcrEyL8DiBA01ajEyL8.iBA0DQvQWLyzCLt.CLJDzYzUVLzziLJDDcxAWLzzCLJDjcuMVLzzSLJDTa0wVLzzSLJDTauQVLzzCLJDTSDAGcwPSOv3BLvnPPmQWYwTSOxnPPzIGbwTSOvnPP181XwTSOwnPPsUGawTSOwnPPs8FYwTSOvnPPMQDbzESM8.iKv.iBAcFckEiM8HiBAQmbvEiM8.iBAY2aiEiM8DiBA0VcrEiM8DiBA01ajEiM8.iBA0DQvQWL1zCLt.CLJLxXs0SQNYULJzzajUVOvnPPzsVOw3BLvn.QkMVOzjiKv.iBSU2b8PiMt.CLJLUcyQUOsLiLt.CLJHUYr0CLt.CLJXUYr0CM03BLvnvHi0VOLYzSwnvT441X8HiBTIWZm0SLJbUX1UVOwn.TnMWY8.iKv.iBP8FagIWOvn.QrkWOv3BLvn.QMMUL8DiBD0DQwzSLv.iKv.iBREFck0CLt.CLJXTSDESOv3BLvnvHi0VOOM0Pwn.U04VY8.iKv.iBKUVdSMFa8DCLv3BLvn.UMMkbi0CLJPUSDAGc8.iKv.iBPg1bk0SMw3BLvn.TnMWSSI2X8.iBPg1bMQDbz0CLt.CLJjja1Y0ar0SK0PiKv.iBSkWawzSMv3BLvnvUPMkbi0CLJbETDAGc8.iKv.iBVQ2aD0CLt.CLJLxXs0iUCYDLJPUdv0CLJLTcz0iLx3BLvnfTkMWOyPiKv.iBDImc8XSLt.CLJXTSwzCN23BLvnfQSESO2nfQMISOwPiKv.iBFMkL8TiBKUVdSMFa8DSLt.CLJDjQM0CLt.CLJLDaq0CLt.CLJLxXs0iUCETLJ.UXt0CLt.CLJX0ar0yLv3BLvnfUCETOwnPSuQ1TxMVOvnPSuQFQvQWOv3BLvn.Tg41TxMVOvnvHi0VOCglbyovPk4Fc8HCLt.CLJLEbkQVO0.iKv.iBDAGcn0SMv3BLvnfQkUlP8.iKv.iBMkFd8.iKv.iBiLVa8PDa4EiBS41XL0SNJLkaiIUOznfQkUlP8DyLt.CLJLjbyITOwPiKv.iBMkFd8fiKv.iBJnvKu.xTkMFco8lafX1axARcmwVdfL1asAmbkM2bkQFHhklagIWdfPTXzElBu7BHD8jSmPEHT8TUCgDHTgTRSofBjPBIjDCNxfiB+bFYmMVYtUlX5TVXgEVXgEVX5DVXgIVXgEVX5DVXgEVZgQFb5DVXgEVXgUVX5DVXgEVYgUVX5DVXgEVZgUVX5nPXgEVXqEVYgoSXgEVXsEVYgoSXgEVXuEVYgoSXgoSYioSYhoyXgoCZgoCZkoSXkoiXgoyXtoCYgoCYkoyYhoyYJXlNm8lNnQlNoElNgMlNgklNgslNg0lNhUlNhklNh0lNiUlNiklNi0VHwMWP2LFblY1SMg1XAISMvDmbAcySF0jBEkzSMglXIYDZlYzYvg1XmoFSm01XucVZjMVQAQiLwIWP2DSbxEzMvoFbqAGav0FbtA2avAWPgIVTgQ1QgYVXmoPXnIUXpMUXrQUXtE1agAGRhIlXiIFYUIlYhclXnYkXpI1Zhw1Uh4lXuIFbDMlXiM1Xjg0XlM1YigVVio1XqMFaJnURi81XvoDYhQ1XjQ1RjYFYmQFZjkVbGETLvbFbmg1RSE2bAcSYpwzYp4DQkQFQlUFQkUFZl4zYjwjSAICMvDmBPETLyfSbyEjL1LSbxEDMyPWc1cGd4oWbAEUP0PWPyPWc1cGd4oWPxLTPwfzPAECQCETLJMTPwTVXCETLlE1PAoPLmE1PAESQCETLPMTPwjVZCETLpE1PAEiZoMTPwrVXCETLqk1PAECagMTPwvVZCETLsE1PAESaoMTPw3VXCETLJ3VZCETLuE1PAEyaoMTPw.WXCETLvk1PAIiPAEyQBETLRITPwPkPAECRBETLUITPwXkPAEyUBETLDITPwfkPAEiBYITPwnkPAEiRBETLKITPwPVZBETLj0lPAESYgITPwTVYBETLkklPAESYsITPwXVXBETLlUlPAEiYoITPwXVaBoPPwbVXBETLmUlPAEyYoITPwbVaBETLEITPwXjPAECZoITPwfVaBETLPITPwj1XBETLoUlPAESZmITPwjVZBETLJj1ZBETLo0lPAESZuITPwnVXBETLpMlPAEiZkITPwn1YBETLpklPAEiZqITPwnVaBETLp8lPAEyZgITPwr1XBEjBwrVYBETLqclPAEyZoITPwr1ZBETLq0lPAEyZuITPwvVXBETLrMlPAECakITPwv1YBETLrklPAECaqITPwvVaBoPPwv1aBETLsElPAESaiITPwzVYBETLsclPAESaoITPwz1ZBETLs0lPAESauITPw3VXBETLtMlPAEiakITPw31YJHTPw3VZBETLtslPAEiasITPw31aBETLuElPAEyaiITPw7VYBETLuclPAEyaoITPw71ZBETLu0lPAEyauITPw.mBgITPw.2XBETLvUlPAECbmITPw.WZBETLvslPAECbsITPw.2aB0CNxLyMwn...."
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
					"patching_rect" : [ 17.25, 237.0, 29.5, 22.0 ],
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
					"patching_rect" : [ 17.25, 182.0, 65.0, 22.0 ],
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
					"patching_rect" : [ 17.25, 210.0, 61.0, 22.0 ],
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
					"patching_rect" : [ 17.25, 263.0, 65.0, 22.0 ],
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
					"patching_rect" : [ 55.25, 234.0, 31.0, 22.0 ],
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
					"patching_rect" : [ 244.416666805744171, 10.0, 127.0, 29.0 ],
					"text" : "step-seq-1-8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 448.0, 127.0, 83.0, 22.0 ],
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
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 373.75, 220.5, 42.0, 24.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 373.75, 180.333333611488342, 41.0, 24.0 ],
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
					"patching_rect" : [ 448.0, -5.0, 488.0, 128.0 ],
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
					"patching_rect" : [ 353.416666805744171, 276.0, 61.0, 22.0 ],
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
					"patching_rect" : [ 145.166666805744171, 95.0, 35.0, 22.0 ],
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
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 17.0, 131.0, 175.0, 22.0 ],
					"saved_object_attributes" : 					{
						"ins" : 1,
						"log-null" : 0,
						"outs" : 4,
						"thread" : 104
					}
,
					"text" : "s4m step-seq-1-8.scm @outs 4"
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
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-100", 0 ]
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
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-106", 0 ]
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
					"destination" : [ "obj-113", 2 ],
					"source" : [ "obj-112", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 1 ],
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"order" : 1,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 1 ],
					"order" : 0,
					"source" : [ "obj-116", 0 ]
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
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 383.25, 206.0, 362.916666805744171, 206.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-138", 0 ]
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
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 383.25, 252.0, 362.916666805744171, 252.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"source" : [ "obj-168", 0 ]
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
					"destination" : [ "obj-168", 0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"source" : [ "obj-190", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 1 ],
					"source" : [ "obj-191", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 2 ],
					"source" : [ "obj-193", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 1 ],
					"source" : [ "obj-193", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 1 ],
					"source" : [ "obj-194", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"source" : [ "obj-194", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"source" : [ "obj-195", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"source" : [ "obj-198", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-198", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-198", 1 ],
					"source" : [ "obj-199", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-198", 0 ],
					"source" : [ "obj-199", 0 ]
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
					"destination" : [ "obj-203", 0 ],
					"source" : [ "obj-200", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-202", 2 ],
					"source" : [ "obj-201", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-202", 1 ],
					"source" : [ "obj-201", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-202", 0 ],
					"source" : [ "obj-201", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-200", 1 ],
					"source" : [ "obj-202", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-200", 0 ],
					"source" : [ "obj-202", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"source" : [ "obj-203", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"source" : [ "obj-204", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"order" : 0,
					"source" : [ "obj-206", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 1,
					"source" : [ "obj-206", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-206", 1 ],
					"source" : [ "obj-207", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-206", 0 ],
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-211", 0 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 2 ],
					"source" : [ "obj-209", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 1 ],
					"source" : [ "obj-209", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 0 ],
					"source" : [ "obj-209", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 1 ],
					"source" : [ "obj-210", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 0 ],
					"source" : [ "obj-210", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-207", 0 ],
					"source" : [ "obj-211", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-207", 0 ],
					"source" : [ "obj-212", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-216", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"source" : [ "obj-217", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"order" : 0,
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"midpoints" : [ 700.5, 490.0 ],
					"order" : 1,
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"midpoints" : [ 583.5, 490.0 ],
					"order" : 2,
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"midpoints" : [ 458.5, 492.0 ],
					"order" : 3,
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-219", 0 ]
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
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-193", 0 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-201", 0 ],
					"source" : [ "obj-37", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 0 ],
					"source" : [ "obj-37", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-38", 0 ]
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
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-190" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-191" : [ "vst~[1]", "vst~", 0 ],
			"obj-198" : [ "live.gain~[2]", "live.gain~", 0 ],
			"obj-199" : [ "vst~[2]", "vst~", 0 ],
			"obj-206" : [ "live.gain~[3]", "live.gain~", 0 ],
			"obj-207" : [ "vst~[3]", "vst~", 0 ],
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
