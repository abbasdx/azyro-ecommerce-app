import 'package:azyro_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:azyro_ecommerce_app/features/shop/screens/order/widgets/order_list.dart';
import 'package:azyro_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AzyroAppBar(title: Text('My Orders', style: Theme.of(context).textTheme.headlineSmall,),showBackArrow: true,),
      body: const Padding(padding: EdgeInsets.symmetric(horizontal:  SizeConstants.defaultSpace),
      child: OrderListItems(),),
    );
  }
}