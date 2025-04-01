// product_event.dart
import 'package:equatable/equatable.dart';
import 'product_model.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object?> get props => [];
}

class AddProduct extends ProductEvent {
  final Product product;

  const AddProduct({required this.product});

  @override
  List<Object?> get props => [product];
}
