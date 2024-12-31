import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:star_cart2/model/mod.dart';



// Define states for the product fetching process
abstract class ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> products;

  ProductLoaded(this.products);
}

class ProductError extends ProductState {
  final String message;

  ProductError(this.message);
}

// Cubit to fetch and manage product data
class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductLoading());

  // Fetch product data
  Future<void> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        List<Product> products = List<Product>.from(
          data.map((x) => Product.fromJson(x)),
        );
        emit(ProductLoaded(products));  // Update the state with loaded products
      } else {
        emit(ProductError('Failed to load products'));
      }
    } catch (e) {
      emit(ProductError('An error occurred while fetching products.'));
    }
  }
}
