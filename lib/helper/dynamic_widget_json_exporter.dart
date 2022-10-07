import 'package:flutter/material.dart';

import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:optimized_cached_image/optimized_cached_image.dart';

import 'code_editor_page.dart';

class JSONExporter extends StatefulWidget {
  @override
  _JSONExporterState createState() => _JSONExporterState();
}

class _JSONExporterState extends State<JSONExporter> {
  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("export example"),
      ),
      body: Builder(
        builder: (context) => Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DynamicWidgetJsonExportor(
                key: key,
                child: Column(children: [
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 8,
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        // OptimizedCacheImage(
                        //   memCacheHeight: 800.toInt(),
                        //   memCacheWidth: 800.toInt(),
                        //   maxHeightDiskCache: 800.toInt(),
                        //   maxWidthDiskCache: 800.toInt(),
                        //   imageUrl: "https://picsum.photos/200/300",
                        //   imageBuilder: (context, imageProvider) => Ink(
                        //     width: 345,
                        //     height: 345,
                        //     decoration: BoxDecoration(
                        //       image: DecorationImage(
                        //         image: imageProvider,
                        //         fit: BoxFit.cover,
                        //       ),
                        //       borderRadius: const BorderRadius.all(
                        //         Radius.circular(10),
                        //       ),
                        //     ),
                        //   ),
                        //   errorWidget: (context, url, error) {
                        //     OptimizedCacheImage.evictFromCache(url);
                        //     return Ink(
                        //       width: 345,
                        //       height: 345,
                        //       decoration: const BoxDecoration(
                        //         image: DecorationImage(
                        //           image: ResizeImage(
                        //             NetworkImage(
                        //                 "https://picsum.photos/200/300"),
                        //             height: 345,
                        //             width: 345,
                        //           ),
                        //           fit: BoxFit.cover,
                        //         ),
                        //         borderRadius: BorderRadius.all(
                        //           Radius.circular(10),
                        //         ),
                        //       ),
                        //     );
                        //   },
                        // ),

                        Container(
                          padding: const EdgeInsets.all(18),
                          width: 345,
                          height: 345,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(0.1),
                                  Colors.black
                                ],
                                stops: const [
                                  0.55,
                                  1
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 220,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "name",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "designation",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "teamName",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // SocialMediaContactsWidget(
                              //   whatsappUrl: whatsappUrl,
                              //   slackUrl: slackUrl,
                              //   isFilled: false,
                              //   onTapWhatsapp: onTapWhatsapp,
                              //   onTapSlack: onTapSlack,
                              //   rowAlignment: MainAxisAlignment.end,
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Export"),
                  onPressed: () {
                    var exportor =
                        key.currentWidget as DynamicWidgetJsonExportor;
                    var exportJsonString = exportor.exportJsonString();
                    print(exportJsonString);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text("json string was exported to editor page.")));
                    Future.delayed(Duration(seconds: 1), () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CodeEditorPage(exportJsonString)));
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
