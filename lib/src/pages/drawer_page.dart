import 'package:flutter/material.dart';
import 'package:tokio_marine_app/src/commom_widgets/card_screen.dart';
import 'package:tokio_marine_app/src/pages/lists_categories.dart';
import 'package:tokio_marine_app/src/pages/lists_drawer.dart';
import 'package:tokio_marine_app/src/pages/lists_tile_drawer.dart';
import 'package:tokio_marine_app/src/utils/colors_standar.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: Drawer(
        backgroundColor: primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80, left: 20),
              child: Text(
                'Olá',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Row(
                children: [
                  const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'CAIO MAXIMO',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Minhas contas',
                              style: TextStyle(
                                color: gradientColor1,
                              ),
                            ),
                            const Icon(Icons.expand_more, color: Colors.white)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            const ListsTileDrawer(),
            const SizedBox(height: 10),
            const ListsDrawer(),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    'assets/images/2.png',
                    color: Colors.white,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 1),
                    child: Text(
                      "TOKIO MARINE \nSEGURADORA",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
          trailing: const Icon(
            Icons.notifications_none_outlined,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [gradientColor1, gradientColor2],
                ),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 17),
                    child: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            'Bem vindo',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Caio Maximo',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 30),
              child: Text(
                "Cotar e Contratar",
                style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            const ListsCategories(),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 15),
              child: Text(
                'Minha família',
                style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const CardScreen(
              selectedIcon: Icon(
                Icons.add_circle_outline,
                size: 50,
                color: Colors.white,
              ),
              cardText: 'Adicione aqui membros da sua familia e \ncompartilhe os seguros com eles',
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 15),
              child: Text(
                'Contratados',
                style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const CardScreen(
              selectedIcon: Icon(
                Icons.sentiment_dissatisfied_sharp,
                size: 50,
                color: Colors.white,
              ),
              cardText: 'Você ainda não possui seguros contratados',
            )
          ],
        ),
      ),
    );
  }
}
