import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              // trở về trang chủ
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF0C5D7B),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 20),
            child: Text(
              "Giỏ hàng",
              style: TextStyle(
                color: Color(0xFF0C5D7B),
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            IconlyLight.message,
            size: 30,
            color: Color(0xFF0C5D7B),
          ),
        ],
      ),
    );
  }
}