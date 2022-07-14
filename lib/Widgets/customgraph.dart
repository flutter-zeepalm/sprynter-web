// ignore_for_file: must_call_super

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

import '../Models/graph.dart';
import '../Utils/colors.dart';
import '../Utils/typography.dart';

class GraphBar extends StatefulWidget {
  const GraphBar({
    Key? key,
  }) : super(key: key);

  @override
  State<GraphBar> createState() => _GraphBarState();
}

class _GraphBarState extends State<GraphBar> {
  late TrackballBehavior trackballBehavior;

  @override
  void initState() {
    trackballBehavior = TrackballBehavior(
        lineType: TrackballLineType.horizontal,
        tooltipSettings: InteractiveTooltip(
            format: 'point.x : point.y',
            color: CustomColors.kContainerColor,
            textStyle: TextStyle(color: CustomColors.kBlackIconColor)),
        lineWidth: 2,
        enable: true,
        activationMode: ActivationMode.singleTap);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: SfCartesianChart(
            trackballBehavior: trackballBehavior,
            primaryXAxis: CategoryAxis(
              majorGridLines: const MajorGridLines(width: 0),
              majorTickLines: const MajorTickLines(width: 0),
              minorGridLines: const MinorGridLines(width: 0),
              minorTickLines: const MinorTickLines(width: 0),
              labelStyle: CustomTextStyle.kGraphTextStyle
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 10.sp),
            ),
            primaryYAxis: NumericAxis(
              labelFormat: '{value}k',
              labelStyle: CustomTextStyle.kGraphTextStyle
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 10.sp),
              minimum: 0,
              maximum: 240,
            ),
            series: <ChartSeries>[
          SplineSeries<GraphData, String>(
            color: CustomColors.kbrownIconColor,
            splineType: SplineType.natural,
            cardinalSplineTension: 3.8,
            // Bind data source
            dataSource: myGraphList,
            xValueMapper: (GraphData graph, _) => graph.month,
            yValueMapper: (GraphData graph, _) => graph.sales,
          )
        ]));
  }
}
