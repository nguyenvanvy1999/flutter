/// Bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;

  const SimpleBarChart(this.seriesList, {Key? key, required this.animate})
      : super(key: key);

  factory SimpleBarChart.withSampleData() {
    return SimpleBarChart(
      _createSampleData(),
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('Today', 55),
      OrdinalSales('Yesterday', 25),
      OrdinalSales('2 days', 100),
      OrdinalSales('24 Jun', 75),
      OrdinalSales('23 Jun', 15),
      OrdinalSales('22 Jun', 85),
      OrdinalSales('21 Jun', 45),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(active),
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
