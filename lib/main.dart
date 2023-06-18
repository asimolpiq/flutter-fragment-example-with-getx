import 'package:flutter/material.dart';
import 'package:fragmentexample/appmain_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // App'i Getx'den faydalanabilmek için GetMaterialApp Widget'ı ile sarmalıyoruz.
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppMainView(),
    );
  }
}
