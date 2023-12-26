import 'package:flutter/material.dart';
import 'package:shopping_ecomerce/core/helper/app-functions.dart';
import 'package:shopping_ecomerce/core/utils/colors.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.all(20),
      child: Row(children: [
        IconButton(
            onPressed: () {
              AppFunctions.popNavigate(context: context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: AppColors.primaryColor,
              size: 40,
            )),
        const SizedBox(width: 20),
        const Text(
          "Cart",
          style: TextStyle(
              fontSize: 23,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Icon(
          Icons.more_vert,
          color: AppColors.primaryColor,
          size: 30,
        )
      ]),
    );
  }
}
