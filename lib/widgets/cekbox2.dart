import 'package:flutter/material.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';

class GetCheckValue2 extends StatefulWidget {
  @override
  GetCheckValue2State createState() {
    return new GetCheckValue2State();
  }
}

class GetCheckValue2State extends State<GetCheckValue2> {
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
                title: AppText(size : 13, text: "Setuju untuk mengakses data anda",color: Colors.white,),
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