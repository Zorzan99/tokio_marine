import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tokio_marine_app/src/utils/colors_standar.dart';

class AssistentScreen extends StatelessWidget {
  AssistentScreen({Key? key}) : super(key: key);
  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/2.png',
                width: 60,
                height: 60,
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "TOKIO MARINE \nSEGURADORA",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 10),
            child: Text(
              'Assistência',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 5),
            child: Text(
              'Automóvel',
              style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('CPF/CNPJ'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                isDense: true,
                label: Text('CPF'),
                border: OutlineInputBorder(),
              ),
              inputFormatters: [cpfFormatter],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('PLACA'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                isDense: true,
                label: Text('PLACA'),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: const BorderSide(color: Colors.green),
                  primary: Colors.white,
                ),
                onPressed: () {},
                child: const Text(
                  'Buscar',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
