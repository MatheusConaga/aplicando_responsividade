import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
          "images/logo.png",
        fit: BoxFit.contain,
      ),
      actions: [
        IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.search)
        ),
        IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.shopping_cart_rounded)
        ),
        IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.more_vert)
        ),
      ],
    );
  }
}



