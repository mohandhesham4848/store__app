import 'package:store__app/features/home/data/models/proudct_model.dart';

abstract class ProductStates {}

class ProductInitial extends ProductStates {}

class ProductLoading extends ProductStates {}

class ProductSuccess extends ProductStates {
  final List<ProductModel> products;
  ProductSuccess(this.products);
}

class ProductError extends ProductStates {
  final String message;
  ProductError(this.message);
}