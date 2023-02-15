import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../components/common_appbar_bottom_portion.dart';
import '../components/common_icon_text.dart';
import '../components/common_time_period_show_comtainer.dart';

// Define data structure for a bar group
class DataItem {
  int x;
  double y1;
  double y2;
  double y3;

  DataItem({required this.x, required this.y1, required this.y2, required this.y3});
}

class TicketDetailsScreen extends StatefulWidget {
  const TicketDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TicketDetailsScreen> createState() => _TicketDetailsScreenState();
}

class _TicketDetailsScreenState extends State<TicketDetailsScreen> {
  final double barWidth = 50;
  final Color barColor = Colors.black;

  // Generate dummy data to feed the chart
  final List<DataItem> _myData = List.generate(
      30,
      (index) => DataItem(
            x: index,
            y1: Random().nextInt(20) + Random().nextDouble(),
            y2: Random().nextInt(20) + Random().nextDouble(),
            y3: Random().nextInt(20) + Random().nextDouble(),
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: CommonAppbarBottomPortion(leadingText: "Ticket Details"),
        ),
      ),
      body: Column(
        children: [
          const CommonTimePeriodShowContainer(),
          SizedBox(
            height: 400,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: BarChart(BarChartData(groupsSpace: 5, barGroups: [
                BarChartGroupData(x: 6, barRods: [
                  BarChartRodData(fromY: 0, toY: 20, width: barWidth, color: barColor),
                ]),
                BarChartGroupData(x: 7, barRods: [
                  BarChartRodData(fromY: 0, toY: 10, width: barWidth, color: barColor),
                ]),
                BarChartGroupData(x: 8, barRods: [
                  BarChartRodData(fromY: 0, toY: 40, width: barWidth, color: barColor),
                ]),
                BarChartGroupData(x: 0, barRods: [
                  BarChartRodData(fromY: 0, toY: 50, width: barWidth, color: barColor),
                ]),
              ])),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CommonIconText(text: "Assigned"),
              CommonIconText(text: "Unassigned"),
              CommonIconText(text: "Closed"),
              CommonIconText(text: "In Progress"),
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: CommonIconTextColumn(
                text: 'Home',
                icon: Icon(Icons.home, color: Colors.white),
              ),
            ),
            CommonIconTextColumn(
              text: 'Tickets',
              icon: Icon(
                Icons.airplane_ticket,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: CommonIconTextColumn(
                text: 'profile',
                icon: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
