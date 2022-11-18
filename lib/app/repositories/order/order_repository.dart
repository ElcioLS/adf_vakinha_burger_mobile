import 'package:adf_vakinha_burger_mobile/app/models/order_pix.dart';

import '../../models/order.dart';

abstract class OrderRepository {
  Future<OrderPix> createOrder(Order order);
}
