import 'package:ecommerce_app/models/produit.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  DescriptionPage({required this.produit, Key? key}) : super(key: key);
  late Produit produit;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(produit.image),
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  )
                ],
              ),
              Text(produit.nom),
              Text(produit.price.toString()),
              Text(produit.description),
            ],
          ),
        ),
      ),
    );
  }
}
