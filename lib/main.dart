import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokio_marine_app/src/pages_routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: PagesRoutes.home,
      getPages: AppPages.pages,
    );
  }
}
