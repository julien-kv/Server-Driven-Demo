import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

class EmployeeCard extends StatelessWidget {
  final String jsonString;

  EmployeeCard(this.jsonString);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Preview"),
      ),
      body: FutureBuilder<Widget>(
        future: _buildWidget(context),
        builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
          }
          return snapshot.hasData
              ? SizedBox.expand(
                  child: snapshot.data,
                )
              : Text("Loading...");
        },
      ),
    );
  }

  Future<Widget> _buildWidget(BuildContext context) async {
    return DynamicWidgetBuilder.build(
        jsonString, context, DefaultClickListener(context: context))!;
  }
}

class DefaultClickListener implements ClickListener {
  final BuildContext context;
  DefaultClickListener({required this.context});
  @override
  void onClicked(String? event) {
    print("Receive click event: ${event ?? ""}");
    if (event != null) {
      Navigator.pushNamed(context, event);
    }
  }
}
