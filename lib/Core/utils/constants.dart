// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';


class KMediaQuery
{
  KMediaQuery(this.context);
  final BuildContext context;

  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;
}

const String kGtSectraFine = 'GT Sectra Fine';
const Color kButtonsBlueColor = Color.fromRGBO(61, 93, 255, 1);



const Color kCardColorPinkCardContainer = Color(0xffFFE7EE);
const Color kCardColorPinkLinearLine = Color(0xffEC7B9C);

const Color kCardColorBlueCardContainer = Color(0xffBAD6FF);
const Color kCardColorBlueLinearLine = Color(0xff3D5CFF);

const Color kCardColorGreenCardContainer = Color(0xffBAE0DB);
const Color kCardColorGreenLinearLine = Color(0xff398A80);