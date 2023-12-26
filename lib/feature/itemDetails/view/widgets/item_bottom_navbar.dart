import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ecomerce/core/utils/colors.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 73,
      decoration: BoxDecoration(color: AppColors.white, boxShadow: [
        BoxShadow(
          blurRadius: 10,
          spreadRadius: 1,
          color: Colors.grey.withOpacity(0.5),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "\$120",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
          ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primaryColor)),
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.cart_badge_plus,
                color: AppColors.white,
              ),
              label: const Text(
                "Add to Cart",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
    );
  }
}
