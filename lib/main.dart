import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server_driven_demo_project/employee_card.dart';
import 'package:server_driven_demo_project/helper/dynamic_widget_json_exporter.dart';
import 'package:server_driven_demo_project/helper/init_parser.dart';
import 'package:server_driven_demo_project/pages/second_page.dart';

void main() {
  InitParser.initParsers();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final finalJson = {
    "type": "ListView",
    "padding": "10, 10, 10, 10",
    "children": [
      {
        "type": "Container",
        "click_event": "/second",
        "child": {
          "type": "Card",
          "elevation": 8.0,
          "borderOnForeground": true,
          "semanticContainer": true,
          "child": {
            "type": "Stack",
            "fit": "passthrough",
            "children": [
              {
                "type": "OptimizedCacheImage",
                "memCacheHeight": 800,
                "memCacheWidth": 800,
                "maxHeightDiskCache": 800,
                "maxWidthDiskCache": 800,
                "imageUrl": "https://picsum.photos/200/300"
              },
              {
                "type": "Container",
                "alignment": null,
                "padding": "18.0,18.0,18.0,18.0",
                "color": null,
                "margin": null,
                "constraints": {
                  "minWidth": 345.0,
                  "maxWidth": 345.0,
                  "minHeight": 345.0,
                  "maxHeight": 345.0
                },
                "child": {
                  "type": "Row",
                  "crossAxisAlignment": "end",
                  "mainAxisAlignment": "spaceBetween",
                  "mainAxisSize": "max",
                  "textBaseline": "ideographic",
                  "textDirection": null,
                  "verticalDirection": "down",
                  "children": [
                    {
                      "type": "SizedBox",
                      "width": 220.0,
                      "height": null,
                      "child": {
                        "type": "Column",
                        "crossAxisAlignment": "start",
                        "mainAxisAlignment": "end",
                        "mainAxisSize": "max",
                        "textBaseline": "ideographic",
                        "textDirection": null,
                        "verticalDirection": "down",
                        "children": [
                          {
                            "type": "Text",
                            "data": "name",
                            "textAlign": "start",
                            "overflow": null,
                            "maxLines": null,
                            "semanticsLabel": null,
                            "softWrap": null,
                            "textDirection": "ltr",
                            "style": {
                              "color": "ffffff",
                              "debugLabel": null,
                              "decoration": "none",
                              "fontSize": 18.0,
                              "fontFamily": null,
                              "fontStyle": "normal",
                              "fontWeight": "w700"
                            },
                            "textScaleFactor": null
                          },
                          {
                            "type": "Text",
                            "data": "designation",
                            "textAlign": "start",
                            "overflow": null,
                            "maxLines": null,
                            "semanticsLabel": null,
                            "softWrap": null,
                            "textDirection": "ltr",
                            "style": {
                              "color": "ffffff",
                              "debugLabel": null,
                              "decoration": "none",
                              "fontSize": 14.0,
                              "fontFamily": null,
                              "fontStyle": "normal",
                              "fontWeight": "w400"
                            },
                            "textScaleFactor": null
                          },
                          {
                            "type": "Padding",
                            "padding": "0.0,4.0,0.0,0.0",
                            "child": {
                              "type": "Text",
                              "data": "teamName",
                              "textAlign": "start",
                              "overflow": null,
                              "maxLines": null,
                              "semanticsLabel": null,
                              "softWrap": null,
                              "textDirection": "ltr",
                              "style": {
                                "color": "ffffff",
                                "debugLabel": null,
                                "decoration": "none",
                                "fontSize": 14.0,
                                "fontFamily": null,
                                "fontStyle": "normal",
                                "fontWeight": "w600"
                              },
                              "textScaleFactor": null
                            }
                          }
                        ]
                      }
                    },
                  ]
                }
              }
            ]
          }
        },
      },
      {
        "type": "Container",
        "click_event": "/second",
        "child": {
          "type": "Card",
          "elevation": 8.0,
          "borderOnForeground": true,
          "semanticContainer": true,
          "child": {
            "type": "Stack",
            "fit": "passthrough",
            "children": [
              {
                "type": "OptimizedCacheImage",
                "memCacheHeight": 800,
                "memCacheWidth": 800,
                "maxHeightDiskCache": 800,
                "maxWidthDiskCache": 800,
                "imageUrl": "https://picsum.photos/200/300"
              },
              {
                "type": "Container",
                "alignment": null,
                "padding": "18.0,18.0,18.0,18.0",
                "color": null,
                "margin": null,
                "constraints": {
                  "minWidth": 345.0,
                  "maxWidth": 345.0,
                  "minHeight": 345.0,
                  "maxHeight": 345.0
                },
                "child": {
                  "type": "Row",
                  "crossAxisAlignment": "end",
                  "mainAxisAlignment": "spaceBetween",
                  "mainAxisSize": "max",
                  "textBaseline": "ideographic",
                  "textDirection": null,
                  "verticalDirection": "down",
                  "children": [
                    {
                      "type": "SizedBox",
                      "width": 220.0,
                      "height": null,
                      "child": {
                        "type": "Column",
                        "crossAxisAlignment": "start",
                        "mainAxisAlignment": "end",
                        "mainAxisSize": "max",
                        "textBaseline": "ideographic",
                        "textDirection": null,
                        "verticalDirection": "down",
                        "children": [
                          {
                            "type": "Text",
                            "data": "name",
                            "textAlign": "start",
                            "overflow": null,
                            "maxLines": null,
                            "semanticsLabel": null,
                            "softWrap": null,
                            "textDirection": "ltr",
                            "style": {
                              "color": "ffffff",
                              "debugLabel": null,
                              "decoration": "none",
                              "fontSize": 18.0,
                              "fontFamily": null,
                              "fontStyle": "normal",
                              "fontWeight": "w700"
                            },
                            "textScaleFactor": null
                          },
                          {
                            "type": "Text",
                            "data": "designation",
                            "textAlign": "start",
                            "overflow": null,
                            "maxLines": null,
                            "semanticsLabel": null,
                            "softWrap": null,
                            "textDirection": "ltr",
                            "style": {
                              "color": "ffffff",
                              "debugLabel": null,
                              "decoration": "none",
                              "fontSize": 14.0,
                              "fontFamily": null,
                              "fontStyle": "normal",
                              "fontWeight": "w400"
                            },
                            "textScaleFactor": null
                          },
                          {
                            "type": "Padding",
                            "padding": "0.0,4.0,0.0,0.0",
                            "child": {
                              "type": "Text",
                              "data": "teamName",
                              "textAlign": "start",
                              "overflow": null,
                              "maxLines": null,
                              "semanticsLabel": null,
                              "softWrap": null,
                              "textDirection": "ltr",
                              "style": {
                                "color": "ffffff",
                                "debugLabel": null,
                                "decoration": "none",
                                "fontSize": 14.0,
                                "fontFamily": null,
                                "fontStyle": "normal",
                                "fontWeight": "w600"
                              },
                              "textScaleFactor": null
                            }
                          }
                        ]
                      }
                    },
                  ]
                }
              }
            ]
          }
        },
      },
      {
        "type": "Container",
        "click_event": "/second",
        "child": {
          "type": "Card",
          "elevation": 8.0,
          "borderOnForeground": true,
          "semanticContainer": true,
          "child": {
            "type": "Stack",
            "fit": "passthrough",
            "children": [
              {
                "type": "OptimizedCacheImage",
                "memCacheHeight": 800,
                "memCacheWidth": 800,
                "maxHeightDiskCache": 800,
                "maxWidthDiskCache": 800,
                "imageUrl": "https://picsum.photos/200/300"
              },
              {
                "type": "Container",
                "alignment": null,
                "padding": "18.0,18.0,18.0,18.0",
                "color": null,
                "margin": null,
                "constraints": {
                  "minWidth": 345.0,
                  "maxWidth": 345.0,
                  "minHeight": 345.0,
                  "maxHeight": 345.0
                },
                "child": {
                  "type": "Row",
                  "crossAxisAlignment": "end",
                  "mainAxisAlignment": "spaceBetween",
                  "mainAxisSize": "max",
                  "textBaseline": "ideographic",
                  "textDirection": null,
                  "verticalDirection": "down",
                  "children": [
                    {
                      "type": "SizedBox",
                      "width": 220.0,
                      "height": null,
                      "child": {
                        "type": "Column",
                        "crossAxisAlignment": "start",
                        "mainAxisAlignment": "end",
                        "mainAxisSize": "max",
                        "textBaseline": "ideographic",
                        "textDirection": null,
                        "verticalDirection": "down",
                        "children": [
                          {
                            "type": "Text",
                            "data": "name",
                            "textAlign": "start",
                            "overflow": null,
                            "maxLines": null,
                            "semanticsLabel": null,
                            "softWrap": null,
                            "textDirection": "ltr",
                            "style": {
                              "color": "ffffff",
                              "debugLabel": null,
                              "decoration": "none",
                              "fontSize": 18.0,
                              "fontFamily": null,
                              "fontStyle": "normal",
                              "fontWeight": "w700"
                            },
                            "textScaleFactor": null
                          },
                          {
                            "type": "Text",
                            "data": "designation",
                            "textAlign": "start",
                            "overflow": null,
                            "maxLines": null,
                            "semanticsLabel": null,
                            "softWrap": null,
                            "textDirection": "ltr",
                            "style": {
                              "color": "ffffff",
                              "debugLabel": null,
                              "decoration": "none",
                              "fontSize": 14.0,
                              "fontFamily": null,
                              "fontStyle": "normal",
                              "fontWeight": "w400"
                            },
                            "textScaleFactor": null
                          },
                          {
                            "type": "Padding",
                            "padding": "0.0,4.0,0.0,0.0",
                            "child": {
                              "type": "Text",
                              "data": "teamName",
                              "textAlign": "start",
                              "overflow": null,
                              "maxLines": null,
                              "semanticsLabel": null,
                              "softWrap": null,
                              "textDirection": "ltr",
                              "style": {
                                "color": "ffffff",
                                "debugLabel": null,
                                "decoration": "none",
                                "fontSize": 14.0,
                                "fontFamily": null,
                                "fontStyle": "normal",
                                "fontWeight": "w600"
                              },
                              "textScaleFactor": null
                            }
                          }
                        ]
                      }
                    },
                  ]
                }
              }
            ]
          }
        },
      },
    ]
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: EmployeeCard(jsonEncode(finalJson)),

      //home: JSONExporter(),
      routes: {
        '/second': (context) => SecondRoute(),
      },
    );
  }
}
