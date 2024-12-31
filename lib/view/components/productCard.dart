import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final EdgeInsets margin;
  final Function onTap;

  const ProductCard({
    super.key,
  
    required this.onTap,
    this.margin = const EdgeInsets.only(),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onTap(),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 10,
                ),
              ],
              borderRadius: BorderRadius.circular(16),
              color: Colors.white54),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 245, 241, 241))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('₹ ',
                    style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 244, 238, 238))),
              ),
              const SizedBox(
                height: 1.0,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                     
                    },
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                     
                    },
                    icon: const Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Color.fromARGB(255, 218, 216, 216),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}