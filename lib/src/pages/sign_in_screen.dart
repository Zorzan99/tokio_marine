import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tokio_marine_app/src/controller/controller_home_page.dart';
import 'package:tokio_marine_app/src/pages/sign_up_screen.dart';
import 'package:tokio_marine_app/src/utils/colors_standar.dart';

import '../commom_widgets/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  final IconData? icon;

  const SignInScreen({Key? key, this.icon}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final phoneFormatter = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 300,
            width: 325,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(
                8,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  spreadRadius: 1.5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SignUpScreen());
                      },
                      child: const Text(
                        'Cadastrar',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                CustomTextField(
                  name: 'CPF',
                  textInput: TextInputType.number,
                  inputFormatters: [cpfFormatter],
                ),
                const CustomTextField(
                  name: 'Senha',
                  isSecret: true,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _onTapCheck(),
                      Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          color: customColors,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  _onTapCheck() {
    return GetBuilder<ControllerHomePage>(
      init: ControllerHomePage(),
      builder: (controllerHomePage) {
        return Row(
          children: [
            GestureDetector(
              onTap: () => controllerHomePage.showValue(),
              child: Icon(
                controllerHomePage.eyesValue ? Icons.circle_outlined : Icons.check_circle,
                color: gradientColor1,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            const Text(
              'Lembrar Sempre',
              style: TextStyle(color: Colors.white),
            ),
          ],
        );
      },
    );
  }
}
