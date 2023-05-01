import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask1/Screen1.dart';
import 'provid.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create:(context) => ProviderPage(),
    child:MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ScreenOne(),

    ) ,

  ));
}

