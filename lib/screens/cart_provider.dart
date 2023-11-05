// cart_state.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem {
  final String itemName;
  final String category;
  final double price;
  int quantity;

  CartItem({
    required this.itemName,
    required this.category,
    required this.price,
    this.quantity = 1,
  });
}

  class CartState extends ChangeNotifier {
    List<CartItem> cartItems = [];

    double get totalCheckoutPrice {
      return cartItems.fold(0.0, (sum, item) => sum + item.price * item.quantity);
    }

    void addItem(CartItem item) {
      cartItems.add(item);
      notifyListeners();
    }

    void removeItem(CartItem item) {
      cartItems.remove(item);
      notifyListeners();
    }
  }
 