import 'package:flutter/material.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';

class ceklisSenin extends StatefulWidget {
  @override
  ceklisSeninState createState() {
    return new ceklisSeninState();
  }
}

class ceklisSeninState extends State<ceklisSenin> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["Senin"];

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
                title: AppText(size: 13,text: "Senin",color: Colors.white,),
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