import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radargass/misc/colors.dart';

class dropdownSearch extends StatefulWidget {
  const dropdownSearch({Key? key}) : super(key: key);

  @override
  State<dropdownSearch> createState() => _dropdownSearchState();
}

class _dropdownSearchState extends State<dropdownSearch> {
  final List<String> items = [
    'Lampung',
    'Bandar Lampung',
    'Mesuji',
    'Tanggamus',
    'Tulang Bawang',
    'Way Kanan',
    'Pesawaran',
    'Pesisir Barat',
    'Pringsewu',

  ];

  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.maxFinite,
      height: 30,
      margin: EdgeInsets.only(left: 20, right: 20, top : 20),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: AppColors.mainColor. withOpacity(0.5)),
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(10),
      ),

        child: Container(
          margin: EdgeInsets.only(left: 10),

          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              hint: Text(
                'Berdasarkan Lokasi',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.mainColor,
                ),
              ),
              items: items
                  .map((item) => DropdownMenuItem<String>(
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
              buttonWidth: 200,
              itemHeight: 40,
              dropdownMaxHeight: 200,
              searchController: textEditingController,
              searchInnerWidget: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 4,
                  right: 8,
                  left: 8,
                ),
                child: TextFormField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    hintText: 'Search for an item...',
                    hintStyle: const TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              searchMatchFn: (item, searchValue) {
                return (item.value.toString().contains(searchValue));
              },
              //This to clear the search value when you close the menu
              onMenuStateChange: (isOpen) {
                if (!isOpen) {
                  textEditingController.clear();
                }
              },
            ),
          ),
        ),

    );
  }
}
