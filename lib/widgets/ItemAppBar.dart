import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF0C5D7B),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.favorite_outline,
            size: 30,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}