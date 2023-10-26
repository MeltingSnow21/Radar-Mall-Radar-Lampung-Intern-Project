import 'package:flutter/material.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';

class ceklisJumat extends StatefulWidget {
  @override
  ceklisJumatState createState() {
    return new ceklisJumatState();
  }
}

class ceklisJumatState extends State<ceklisJumat> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["Jumat"];

  @override
  Widget build(BuildContext context) {
    return Container(

      child :  Expanded(
          child: Container(
            height: 0,
            child: Column(

              children: text
                  .map((t) => CheckboxListTile(
                tileColor: Colors.white,
                title: AppText(size: 13,text: "Jum'at",color: Colors.white,),
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