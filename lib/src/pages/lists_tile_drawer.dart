import 'package:flutter/material.dart';
import 'package:tokio_marine_app/src/utils/colors_standar.dart';

class ListsTileDrawer extends StatelessWidget {
  const ListsTileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          height: 1,
          thickness: 1.5,
          indent: 0,
          endIndent: 100,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Icon(
            Icons.settings,
            color: gradientColor1,
          ),
          title: const Text(
            "Home/Seguro",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Divider(
          height: 1,
          thickness: 2.5,
          indent: 0,
          endIndent: 100,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Icon(
            Icons.settings,
            color: gradientColor1,
          ),
          title: const Text("Minhas cobranças",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        const Divider(
          height: 1,
          thickness: 2.5,
          indent: 0,
          endIndent: 100,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Icon(
            Icons.settings,
            color: gradientColor1,
          ),
          title: const Text("Assistência",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        const Divider(
          height: 1,
          thickness: 2.5,
          indent: 0,
          endIndent: 100,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Icon(
            Icons.settings,
            color: gradientColor1,
          ),
          title: const Text("Minha família",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        const Divider(
          height: 1,
          thickness: 2.5,
          indent: 0,
          endIndent: 100,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Icon(
            Icons.settings,
            color: gradientColor1,
          ),
          title: const Text("Meus bens",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        const Divider(
          height: 1,
          thickness: 2.5,
          indent: 0,
          endIndent: 100,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Icon(
            Icons.settings,
            color: gradientColor1,
          ),
          title: const Text("Pagamentos",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        const Divider(
          height: 1,
          thickness: 2.5,
          indent: 0,
          endIndent: 100,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Icon(
            Icons.settings,
            color: gradientColor1,
          ),
          title: const Text("Corretores",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        const Divider(
          height: 1,
          thickness: 2.5,
          indent: 0,
          endIndent: 100,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Icon(
            Icons.settings,
            color: gradientColor1,
          ),
          title: const Text("Validar Boleto",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        const Divider(
          height: 1,
          thickness: 2.5,
          indent: 0,
          endIndent: 100,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Icon(
            Icons.settings,
            color: gradientColor1,
          ),
          title: const Text("Telefones importantes",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        const Divider(
          height: 1,
          thickness: 2.5,
          indent: 0,
          endIndent: 100,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Icon(
            Icons.settings,
            color: gradientColor1,
          ),
          title: const Text("Configurações",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        const Divider(
          height: 1,
          thickness: 2.5,
          indent: 0,
          endIndent: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 10),
          child: Text(
            'Sair',
            style: TextStyle(color: gradientColor1, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
