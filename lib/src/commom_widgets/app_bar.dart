import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
          Icons.notifications,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
