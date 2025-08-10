import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ecommerce/model/product_model.dart';

final cartProvider = StateNotifierProvider<CartNotifier, List<Product>>((ref) {
  return CartNotifier();
});

class CartNotifier extends StateNotifier<List<Product>> {
  CartNotifier() : super([]);

  void addToCart(Product product) {
    state = [...state, product];
  }

  void removeFromCart(int productId) {
    state = state.where((p) => p.id != productId).toList();
  }
}


final favoritesProvider = StateNotifierProvider<FavoritesNotifier, List<Product>>((ref) {
  return FavoritesNotifier();
});

class FavoritesNotifier extends StateNotifier<List<Product>> {
  FavoritesNotifier() : super([]);

  void toggleFavorite(Product product) {
    state.contains(product)
        ? state = state.where((p) => p.id != product.id).toList()
        : state = [...state, product];
  }
}