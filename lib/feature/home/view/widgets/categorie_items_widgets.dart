import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_ecomerce/core/helper/app-functions.dart';
import 'package:shopping_ecomerce/core/model/item_model.dart';
import 'package:shopping_ecomerce/core/utils/colors.dart';
import 'package:shopping_ecomerce/feature/home/view_model/home_cubit.dart';
import 'package:shopping_ecomerce/feature/home/view_model/home_state.dart';
import 'package:shopping_ecomerce/feature/itemDetails/view/item_details.dart';

class ItemsWidgets extends StatelessWidget {
  const ItemsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.68,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            "-50%",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        AppFunctions.navigateTo(
                            context: context,
                            navigatedScreen: ItemDetails(
                              product: items[index],
                            ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          items[index].imgPath,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        items[index].name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: AppColors.primaryColor),
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "write description of product",
                        style: TextStyle(
                            fontSize: 13, color: AppColors.primaryColor),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$ ${items[index].price}",
                              style: const TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {
                                  cubit.add(items[index]);
                                },
                                icon: const Icon(
                                  Icons.shopping_cart_checkout,
                                  color: AppColors.primaryColor,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
