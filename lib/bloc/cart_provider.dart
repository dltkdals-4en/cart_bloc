import 'package:cart_bloc/bloc/cart_bloc.dart';
import 'package:flutter/widgets.dart';

class CartProvider extends InheritedWidget {
  final CartBloc cartBloc;

  CartProvider({Key key, CartBloc cartBloc, Widget child})
      : cartBloc = cartBloc ?? CartBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static CartBloc of(BuildContext context)=>
      (context.dependOnInheritedWidgetOfExactType(aspect: CartProvider) as CartProvider).cartBloc;
}
