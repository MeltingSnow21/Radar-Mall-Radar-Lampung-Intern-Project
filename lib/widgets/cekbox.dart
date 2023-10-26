import 'package:flutter/material.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';

class GetCheckValue extends StatefulWidget {
  @override
  GetCheckValueState createState() {
    return new GetCheckValueState();
  }
}

class GetCheckValueState extends State<GetCheckValue> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["Dengan ini, Anda menerima syarat dan ketentuan RADARMALL "];

  @override
  Widget build(BuildContext context) {
    return Container(

         child :  Expanded(
              child: Container(
                height: 20.0,
                child: Column(

                  children: text
                      .map((t) => CheckboxListTile(
                    tileColor: Colors.white,
                    title: AppText(size: 13,text: "Dengan Ini, anda menerima syarat dan ketentuan Radar Mall",color: Colors.white,),
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