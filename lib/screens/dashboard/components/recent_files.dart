import 'package:mnemr/models/RecentFile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Registered,Returning and Referred Clients",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: 900,
            height: 400,
            child: BarGraph(),
          ),
        ],
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile fileInfo) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                fileInfo.icon!,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(fileInfo.title!),
              ),
            ],
          ),
        ),
        DataCell(Text(fileInfo.date!)),
        DataCell(Text(fileInfo.size!)),
      ],
    );
  }
}

class BarGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: SingleChildScrollView(
            child: Container(
          child: Echarts(
            option: '''
   {
    legend: {},
    tooltip: {},
    dataset: {
        dimensions: ['visits', 'New', 'Returning', 'Referred'],
        source: [
            {visits: 'Jan/2021', 'New': 43.3, 'Returning': 85.8, 'Referred': 93.7},
            {visits: 'Feb/2021', 'New': 83.1, 'Returning': 73.4, 'Referred': 55.1},
            {visits: 'Mar/2021', 'New': 86.4, 'Returning': 65.2, 'Referred': 82.5},
            {visits: 'Apr/2021', 'New': 72.4, 'Returning': 53.9, 'Referred': 39.1}
        ]
    },
    
    xAxis: {type: 'category'},

    yAxis: {},
    // Declare several bar series, each will be mapped
    // to a column of dataset.source by default.
    series: [
        {type: 'bar'
        ,color: ['#7cb5ec']
        },
        {type: 'bar'
        ,color: ['#434348']
        },
        {type: 'bar'
        ,color: ['#90ed7d']
        }
    ]
}
  ''',
          ),
          width: 900,
          height: 400,
        )),
      ),
    );
  }
}
