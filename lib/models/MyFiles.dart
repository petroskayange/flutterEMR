import 'package:mnemr/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Total Users",
    numOfFiles: 1328,
    svgSrc: "assets/icons/user.svg",
    totalStorage: "1.9%",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Total Patient",
    numOfFiles: 1328,
    svgSrc: "assets/icons/patient.svg",
    totalStorage: "2.9%",
    color: Color(0xFF814F02),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Total COVID-19 Cases ",
    numOfFiles: 1328,
    svgSrc: "assets/icons/convid.svg",
    totalStorage: "1%",
    color: Color(0xFFC90F0F),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Total Malaria Cases",
    numOfFiles: 5328,
    svgSrc: "assets/icons/mosquito.svg",
    totalStorage: "7.3%",
    color: Color(0xFF044C86),
    percentage: 78,
  ),
];
