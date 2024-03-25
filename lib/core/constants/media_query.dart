import 'package:flutter/material.dart';

double screenH(context) => MediaQuery.of(context).size.height;
double screenW(context) => MediaQuery.of(context).size.width;
Orientation phoneOrientation(context) => MediaQuery.of(context).orientation;
