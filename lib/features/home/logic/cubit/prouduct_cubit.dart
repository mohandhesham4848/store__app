import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:store__app/features/home/logic/cubit/prouduct_states.dart';
import 'package:store__app/features/home/data/models/proudct_model.dart';

class ProuductCubit extends Cubit<ProductStates> {
  ProuductCubit() : super(ProductInitial());

  final Dio dio = Dio();


  Future<void> getAllProduct() async {
    emit(ProductLoading());

    try {
      final Response response =
          await dio.get('https://fakestoreapi.com/products');

      final List data = response.data;

      final products =
          data.map((item) => ProductModel.fromJson(item)).toList();

      emit(ProductSuccess(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
  Future<void> getCategoryProducts(String category) async {
  emit(ProductLoading());

  try {
    final response = await dio.get(
      'https://fakestoreapi.com/products/category/$category',
    );

    final List data = response.data;

    final products = data
        .map((item) => ProductModel.fromJson(item))
        .toList();

    emit(ProductSuccess(products));
  } catch (e) {
    emit(ProductError(e.toString()));
  }
}
  }