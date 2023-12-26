import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_ecomerce/core/utils/colors.dart';
import 'package:shopping_ecomerce/feature/home/view/widgets/categorie_items_widgets.dart';
import 'package:shopping_ecomerce/feature/home/view/widgets/categories.dart';
import 'package:shopping_ecomerce/feature/home/view/widgets/home_appbar.dart';
import 'package:shopping_ecomerce/feature/home/view_model/home_cubit.dart';
import 'package:shopping_ecomerce/feature/home/view_model/home_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          // var cubit = HomeCubit.get(context);
          return Scaffold(
            body: ListView(
              children: [
                // appBar
                const HomeAppBar(),
                Container(
                  padding: const EdgeInsets.only(top: 15),
                  decoration: const BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )),
                  child: Column(
                    children: [
                      // Search Widget
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              height: 50,
                              width: 280,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "search here ..... ",
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.camera_alt,
                              size: 27,
                              color: AppColors.primaryColor,
                            ),
                          ],
                        ),
                      ),
                      // categories
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        child: const Text(
                          "Categories",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: AppColors.primaryColor),
                        ),
                      ),
                      // CategoriesWidget
                      const CategoriesWidget(),
                      // Items
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        child: const Text(
                          "Best Selling",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: AppColors.primaryColor),
                        ),
                      ),
                      // Items Widgets
                      const ItemsWidgets(),
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: CurvedNavigationBar(
              onTap: (index) {},
              height: 65,
              backgroundColor: Colors.transparent,
              color: AppColors.primaryColor,
              items: const [
                Icon(Icons.home, size: 30, color: Colors.white),
                Icon(CupertinoIcons.cart_fill, size: 30, color: Colors.white),
                Icon(Icons.list, size: 30, color: Colors.white),
              ],
            ),
          );
        },
      ),
    );
  }
}
