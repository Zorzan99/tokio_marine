import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tokio_marine_app/src/commom_widgets/custom_text_field.dart';
import 'package:tokio_marine_app/src/pages/drawer_page.dart';
import 'package:tokio_marine_app/src/pages/home_page.dart';
import 'package:tokio_marine_app/src/utils/colors_standar.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
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
    final size = MediaQuery.of(context).size;
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: currentWidth < 600
          ? Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    gradientColor1,
                    gradientColor2,
                  ],
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 320, top: 25),
                      child: IconButton(
                        onPressed: () {
                          Get.to(const HomePage());
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/images/2.png',
                        height: 100,
                      ),
                    ),
                    const Text(
                      "Tokio Marine Seguradora",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Container(
                        height: 500,
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
                              children: const [
                                Padding(
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
                                Text(
                                  'Cadastrar',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const CustomTextField(
                              name: 'Nome Completo',
                              icon: Icons.abc,
                            ),
                            const CustomTextField(
                              name: 'Email',
                              textInput: TextInputType.emailAddress,
                              icon: Icons.email,
                            ),
                            CustomTextField(
                              name: 'Celular',
                              icon: Icons.phone,
                              textInput: TextInputType.number,
                              inputFormatters: [phoneFormatter],
                            ),
                            CustomTextField(
                              name: 'CPF',
                              icon: Icons.file_copy,
                              textInput: TextInputType.number,
                              inputFormatters: [cpfFormatter],
                            ),
                            const CustomTextField(
                              icon: Icons.lock,
                              name: 'Senha',
                              isSecret: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                              child: SizedBox(
                                height: 60,
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    Get.to(() => const DrawerPage());
                                  },
                                  child: const Text("Cadastrar"),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    gradientColor1,
                    gradientColor2,
                  ],
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: IconButton(
                            onPressed: () {
                              Get.to(const HomePage());
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/images/2.png',
                        height: 150,
                      ),
                    ),
                    const Text(
                      "Tokio Marine Seguradora",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Container(
                        height: size.height * 0.5,
                        width: size.width * 0.5,
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
                              children: const [
                                Padding(
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
                                Text(
                                  'Cadastrar',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const CustomTextField(
                              name: 'Nome Completo',
                              icon: Icons.abc,
                            ),
                            const CustomTextField(
                              name: 'Email',
                              textInput: TextInputType.emailAddress,
                              icon: Icons.email,
                            ),
                            CustomTextField(
                              name: 'Celular',
                              icon: Icons.phone,
                              textInput: TextInputType.number,
                              inputFormatters: [phoneFormatter],
                            ),
                            CustomTextField(
                              name: 'CPF',
                              icon: Icons.file_copy,
                              textInput: TextInputType.number,
                              inputFormatters: [cpfFormatter],
                            ),
                            const CustomTextField(
                              icon: Icons.lock,
                              name: 'Senha',
                              isSecret: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                              child: SizedBox(
                                height: 60,
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    Get.to(() => const DrawerPage());
                                  },
                                  child: const Text("Cadastrar"),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
