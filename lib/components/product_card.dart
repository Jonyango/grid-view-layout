import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget{

  String imgUrl;
  String productPrice;
  String productTag;
  ProductCard({this.imgUrl,this.productPrice,this.productTag})
  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Icon(Icons.bookmark),
        Image(
          image: NetworkImage(imgUrl),
        ),
        Text('')
      ],
    );
  }
}