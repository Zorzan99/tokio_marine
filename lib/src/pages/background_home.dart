import 'package:flutter/material.dart';
import 'package:tokio_marine_app/src/utils/colors_standar.dart';

class BackGroundHomePage extends StatelessWidget {
  const BackGroundHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return currentWidth < 600
        ? Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [gradientColor1, gradientColor2],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 30,
                        child: Image.asset(
                          'assets/images/2.png',
                          color: Colors.white,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'TOKIO MARINE \nSEGURADORA',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Text(
                    'Bem vindo!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Aqui você gerencia seus seguros e de seus familiares em poucos cliques!',
                    style: TextStyle(fontSize: 13, color: Colors.white, height: 1.5),
                  ),
                ),
              ],
            ),
          )
        : Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [gradientColor1, gradientColor2],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 30,
                        child: Image.asset(
                          'assets/images/2.png',
                          fit: BoxFit.cover,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'TOKIO MARINE \nSEGURADORA',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Text(
                    'Bem vindo!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Aqui você gerencia seus seguros e de seus familiares em poucos cliques!',
                    style: TextStyle(fontSize: 13, color: Colors.white, height: 1.5),
                  ),
                ),
              ],
            ),
          );
  }
}
