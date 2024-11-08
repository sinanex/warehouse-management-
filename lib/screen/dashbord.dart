import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:warehouse_manag/screen/profile.dart';

class Dashbord extends StatelessWidget {
  final Map<String, double> dataMap = {
    "Phone": 30,
    "Laptop": 15,
    "Headphone": 15,
    "Speakers": 10,
    'smart watches': 15,
    'television': 10
  };

  final List<Color> colorList = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.purple

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',style: style(),),
      ),
      body: PieChart(
        key: const Key("pie_chart"), 
        dataMap: dataMap,
        colorList: colorList,
        chartRadius: MediaQuery.of(context).size.width / 2.2,
        legendOptions: LegendOptions(
          showLegendsInRow: false,
          legendPosition: LegendPosition.right,
          showLegends: true,
          legendShape: BoxShape.circle,
          legendTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        chartValuesOptions: ChartValuesOptions(
          showChartValuesInPercentage: true,
          showChartValuesOutside: true,
          decimalPlaces: 1,
        ),
      ),
    );
  }
}
