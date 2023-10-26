import 'package:flutter/material.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';

class ceklisRabu extends StatefulWidget {
  @override
  ceklisRabuState createState() {
    return new ceklisRabuState();
  }
}

class ceklisRabuState extends State<ceklisRabu> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["Senin"];

  @override
  Widget build(BuildContext context) {
    return Container(

      child :  Expanded(
          child: Container(
            height: 10.0,
            child: Column(

              children: text
                  .map((t) => CheckboxListTile(
                tileColor: Colors.white,
                title: AppText(size: 13,text: "Rabu",color: Colors.white,),
                value: _isChecked,
                onChanged: (val) {
                  setState(() {
                    _isChecked = val!;
                    if (val == true) {
                      _currText = t;
                    }
                  });
                },
              ))
                  .toList(),
            ),
          )),

    );

  }
}