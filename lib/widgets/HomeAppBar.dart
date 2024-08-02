import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 40,
            color: Color(0xFF0C5D7B),
          ),
          const Padding(
            padding: EdgeInsets.only (left: 20, top: 2),
            child: Text (
              "TH Shop",
              style: TextStyle (
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0C5D7B),
              ),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeContent: const Text (
              '3',
              style: TextStyle(color: Colors.white)
            ),
            position: badges.BadgePosition.topEnd(),
            showBadge: true,
            ignorePointer: false,
            badgeAnimation: const badges.BadgeAnimation.slide(
              toAnimate: true,
              animationDuration: Duration(seconds: 1),
            ),
            badgeStyle: badges.BadgeStyle (
              shape: badges.BadgeShape.circle,
              padding: const EdgeInsets.all(8),
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white, width: 2,),
              badgeGradient: const badges.BadgeGradient.linear(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
            ),
            child: InkWell (
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: const Icon (
                Icons.shopping_cart,
                size: 40,
                color: Color(0xFF0C5D7B),
              ),

            ),
          ),
        ],
      ),
    );
  }
}