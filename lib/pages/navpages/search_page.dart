import 'package:flutter/material.dart';
import 'package:radargass/widgets/chart.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: FiChartPage(),
    ));
  }
}
