import 'package:flutter/material.dart';
import 'package:tokio_marine_app/src/utils/colors_standar.dart';

class BackGround2HomePage extends StatelessWidget {
  const BackGround2HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 30,
                    child: Image.asset(
                      'assets/images/2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text.rich(
                    TextSpan(
                      style: const TextStyle(),
                      children: [
                        const TextSpan(
                          text: 'tokio',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: '\nresolve',
                          style: TextStyle(color: Colors.amber.shade400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Acesse através das redes sociais',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/google1.png',
                  height: 30,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    'assets/images/facebook1.png',
                    height: 30,
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  'assets/images/twitter.png',
                  height: 30,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
