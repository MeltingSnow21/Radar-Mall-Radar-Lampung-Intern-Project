import 'package:flutter/material.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';

class ceklisSelasa extends StatefulWidget {
  @override
  ceklisSelasaState createState() {
    return new ceklisSelasaState();
  }
}

class ceklisSelasaState extends State<ceklisSelasa> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["Selasa"];

  @override
  Widget build(BuildContext context) {
    return Container(

      child :  Expanded(
          child: Container(
            height: 15.0,
            child: Column(

              children: text
                  .map((t) => CheckboxListTile(
                tileColor: Colors.white,
                title: AppText(size: 13,text: "Selasa",color: Colors.white,),
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