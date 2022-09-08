import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokio_marine_app/src/pages/drawer_page.dart';

class FloatingActionButtonPage extends StatelessWidget {
  const FloatingActionButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 295),
        child: Container(
          alignment: Alignment.center,
          height: 80,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(43, 42, 58, 1),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                spreadRadius: 1.5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Container(
            alignment: Alignment.center,
            height: 65,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(51, 164, 143, 1),
                  Color.fromARGB(233, 223, 220, 47),
                ],
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Get.to(() => const DrawerPage());
              },
              child: const Icon(
                Icons.arrow_forward_outlined,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
