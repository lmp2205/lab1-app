import 'package:flutter/material.dart';

import 'order_item_card.dart';
import 'order_manager.dart';
import '../share/app_drawer.dart';


class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('Buildung orders');
    final ordersManager = OrdersManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ('Your Orders'),
        ),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: ordersManager.orderCount,
        itemBuilder:(ctx, i) => OrderItemCard(ordersManager.orders[i]),
        ),
    );
  }
}
