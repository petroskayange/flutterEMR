import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
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
            "COVID-19 Statistic",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/covid3.svg",
            title: "New Cases",
            amountOfFiles: "1.3%",
            numOfFiles: 1328,
            color: primaryColor,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/covid3.svg",
            title: "Comfirmed Cases",
            amountOfFiles: "15.3%",
            numOfFiles: 1328,
            color: Color(0xFF26E5FF),
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/covid3.svg",
            title: "Tested Cases",
            amountOfFiles: "1.3%",
            numOfFiles: 1328,
            color: Color(0xFFFFCF26),
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/covid3.svg",
            title: "Test Conducted",
            amountOfFiles: "1.3%",
            numOfFiles: 140,
            color: Color(0xFFEE2727),
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/covid3.svg",
            title: "Test Conducted",
            amountOfFiles: "1.3%",
            numOfFiles: 140,
            color: primaryColor.withOpacity(0.1),
          ),
        ],
      ),
    );
  }
}
