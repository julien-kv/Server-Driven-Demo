import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:flutter/material.dart';

class CodeEditorPage extends StatefulWidget {
  final String jsonString;

  CodeEditorPage(this.jsonString);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CodeEditorPageState(jsonString);
  }
}

class _CodeEditorPageState extends State<CodeEditorPage> {
  String jsonString;
  TextEditingController controller = TextEditingController();

  _CodeEditorPageState(this.jsonString);

  @override
  Widget build(BuildContext context) {
    var widget = Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Code Editor"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                constraints: BoxConstraints.expand(
                    width: double.infinity, height: double.infinity),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(hintText: 'Enter json string'),
                  maxLines: 1000000,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ));
    controller.text = jsonString;
    return widget;
  }
}
