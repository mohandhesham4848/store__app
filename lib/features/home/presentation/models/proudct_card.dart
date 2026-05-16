import 'package:flutter/material.dart';
import 'package:store__app/features/home/data/models/proudct_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  const ProductCard({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 145,
        height: 190,
        decoration: BoxDecoration(
            color: Color.fromRGBO(167, 161, 161, 0.333),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(4),
                width: 150,
                height: 125,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Image.network(
                  productModel.image,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Expanded(child: Text('   ${productModel.title}')),
            Row(
              children: [
                Text('   \$${productModel.price}'),
                Spacer(flex: 1),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              ],
            )
          ],
        ));
  }
}

