import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_ecomerce/core/helper/app-functions.dart';
import 'package:shopping_ecomerce/core/utils/colors.dart';
import 'package:shopping_ecomerce/feature/cart/view/cart_screen.dart';
import 'package:shopping_ecomerce/feature/home/view_model/home_cubit.dart';
import 'package:shopping_ecomerce/feature/home/view_model/home_state.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Container(
            padding: const EdgeInsets.all(25),
            color: Colors.white,
            child: Row(children: [
              const Icon(Icons.sort, size: 30),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "DP Shop",
                style: TextStyle(
                    fontSize: 23,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              badges.Badge(
                badgeContent: Text(
                  "${cubit.selectedProduct.length}",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: Colors.red,
                  padding: EdgeInsets.all(5),
                ),
                child: InkWell(
                  onTap: () {
                    AppFunctions.navigateTo(
                        context: context, navigatedScreen: const CartScreen());
                  },
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
