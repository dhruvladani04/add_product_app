// product_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'product_event.dart';
import 'product_state.dart';
import 'product_model.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<AddProduct>(_onAddProduct);
  }

  Future<void> _onAddProduct(
    AddProduct event,
    Emitter<ProductState> emit,
  ) async {
    emit(ProductLoading());
    try {
      // Simulate a network or database operation with a delay
      await Future.delayed(const Duration(seconds: 2));

      // Here, you could add the product to a repository or database
      // For now, we simulate a success scenario.
      emit(ProductSuccess(message: 'Product added successfully'));
    } catch (e) {
      emit(ProductFailure(error: 'Failed to add product: $e'));
    }
  }
}
