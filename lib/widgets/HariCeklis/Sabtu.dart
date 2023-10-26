import 'package:flutter/material.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';

class ceklisSabtu extends StatefulWidget {
  @override
  ceklisSabtuState createState() {
    return new ceklisSabtuState();
  }
}

class ceklisSabtuState extends State<ceklisSabtu> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["Sabtu"];

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
                title: AppText(size: 13,text: "Sabtu",color: Colors.white,),
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