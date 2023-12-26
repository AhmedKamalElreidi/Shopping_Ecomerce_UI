import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_ecomerce/core/model/item_model.dart';
import 'package:shopping_ecomerce/feature/home/view_model/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  List selectedProduct = [];
  double price = 0;

  add(Item product) {
    selectedProduct.add(product);
    emit(UpdateSelectedProduct());
    price += product.price.round();
    emit(UpdatePrice());
  }

  delete(Item product) {
    selectedProduct.remove(product);
    emit(UpdateSelectedProduct());
    price -= product.price.round();
    emit(UpdatePrice());
  }
}
