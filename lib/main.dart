import 'package:flutter/material.dart';
import 'package:vakpati/Otp_scrren.dart';
import 'package:vakpati/Splach_screen.dart';
import 'package:vakpati/approvel_admin_show_scrren.dart';
import 'package:vakpati/cart/cart_page.dart';
import 'package:vakpati/cart/checkout_page.dart';
import 'package:vakpati/product_page/Order_history_2.dart';
import 'package:vakpati/product_page/categaris_images_screen.dart';
import 'package:vakpati/home_screen.dart';
import 'package:vakpati/product_page/my_invoice.dart';
import 'package:vakpati/product_page/product_Page.dart';
import 'package:vakpati/sign%20in.dart';
import 'package:vakpati/sign%20up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderHistoryPage()
    );
  }
}


