import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radargass/misc/colors.dart';

class dropdownB extends StatefulWidget {
  const dropdownB({Key? key}) : super(key: key);

  @override
  State<dropdownB> createState() => _dropdownStateB();
}

class _dropdownStateB extends State<dropdownB> {


  final List<String> items = [
    'Pemerintahan',
    'Ekonomi Bisnis',
    'Pemerintah',
    'Otomotif',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.maxFinite,
      height: 30,
      margin: EdgeInsets.only(left: 20, right: 20, top : 20),
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: AppColors.mainColor. withOpacity(0.5)),
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(10),
      ),

      child:  DropdownButtonHideUnderline(
        child: Container(
          margin: EdgeInsets.only(left: 10),
          child: DropdownButton2(

            hint: Text(
              'Kategori',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.mainColor,
              ),
            ),
            items: items
                .map((item) =>
                DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
            buttonHeight: 40,
            buttonWidth: 140,
            buttonElevation: 2,
            itemHeight: 40,
          ),
        ),
      ),

    );
  }


}

