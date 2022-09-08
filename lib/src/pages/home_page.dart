import 'package:flutter/material.dart';
import 'package:tokio_marine_app/src/commom_widgets/floating_action_button.dart';
import 'package:tokio_marine_app/src/pages/background2_home.dart';
import 'package:tokio_marine_app/src/pages/background_home.dart';
import 'package:tokio_marine_app/src/pages/sign_in_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  BackGroundHomePage(),
                  BackGround2HomePage(),
                ],
              ),
            ),
          ),
          const SignInScreen(),
          const FloatingActionButtonPage()
        ],
      ),
    );
  }
}
