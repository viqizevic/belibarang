import 'package:belibarang/models/cart.dart';
import 'package:belibarang/models/orders.dart';
import 'package:belibarang/models/products.dart';
import 'package:belibarang/screens/cart_screen.dart';
import 'package:belibarang/screens/orders_screen.dart';
import 'package:belibarang/screens/product_detail_screen.dart';
import 'package:belibarang/screens/products_overview_screen.dart';
import 'package:belibarang/screens/user_products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.id: (context) => ProductDetailScreen(),
          CartScreen.id: (context) => CartScreen(),
          OrdersScreen.id: (context) => OrdersScreen(),
          UserProductsScreen.id: (context) => UserProductsScreen(),
        },
      ),
    );
  }
}
