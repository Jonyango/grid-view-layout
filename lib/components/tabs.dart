// Instead of using text widgets to shows the tabs you could use the tabcontroller

import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(color: Colors.red),
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text('HOT')),
            Expanded(child: Text('COVID-19')),
            Expanded(child: Text('Overseas')),
            Expanded(child: Text('Used Phone')),
          ]),
    );
  }
}
