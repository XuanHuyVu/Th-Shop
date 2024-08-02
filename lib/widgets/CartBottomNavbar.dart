import 'package:flutter/material.dart';

class CartBottomNavbar extends StatelessWidget {
  const CartBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar (
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Tổng thanh toán:",
                  style: TextStyle(
                    color: Color(0xFF0C5D7B),
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                const Text(
                  "300.000 vnđ",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: 110,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0C5D7B),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Text(
                    "Mua ngay",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
