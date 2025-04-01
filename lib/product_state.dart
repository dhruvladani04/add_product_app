// product_state.dart
import 'package:equatable/equatable.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
  final String message;

  const ProductSuccess({required this.message});

  @override
  List<Object?> get props => [message];
}

class ProductFailure extends ProductState {
  final String error;

  const ProductFailure({required this.error});

  @override
  List<Object?> get props => [error];
}
