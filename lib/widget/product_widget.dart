
import 'package:distrobo1/app/auth/model/product_model.dart';

import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  final ProductModel myProduct;
  const ProductWidget({super.key,  required this.myProduct});
  
  

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Text(widget.myProduct.name!),
      
      ],
    );
  }
}










