import 'package:flutter/material.dart';
import 'package:gridviewlayout/components/header.dart';
import 'package:gridviewlayout/components/tabs.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:12.0),
      child: Column(
        children: [
          
         Header(),
         SizedBox(height: 8.0,),
         Tabs(),
        ],
        
      ),
    );
  }
}