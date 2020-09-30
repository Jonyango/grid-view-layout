import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xffF8F9FA)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 6.0,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Products'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width:10.0),
            CircleAvatar(
              radius: 25.0,
              child: Icon(Icons.chat),
              backgroundColor: Color(0xffF8F9FA),
            ),
          ]),
    );
  }
}
