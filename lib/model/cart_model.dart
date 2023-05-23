import 'package:flutter/widgets.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    [
      'Avocado',
      '4.0' 'images/a.jpg',
    ],
    [
      'Apple',
      '2.0' 'images/b.jpg',
    ],
    [
      'Mango',
      '1.0' 'images/c.jpg',
    ],
  ];
  List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();

    void removeItemFromCart(int index) {
      _cartItems.removeAt(index);
      notifyListeners();
    }

    String calculateTotal() {
      double totalPrice = 0;
      for (int i = 0; i < _cartItems.length; i++) {
        totalPrice += double.parse(_cartItems[i][1]);
      }
      return totalPrice.toStringAsFixed(2);
    }
  }

  removeItemFromCart(int index) {}

  calculateTotal() {}

  // String calculateTotal() {}
}
