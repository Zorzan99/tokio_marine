import 'package:flutter/material.dart';
import 'package:tokio_marine_app/src/utils/colors_standar.dart';

class CardScreen extends StatelessWidget {
  final Icon selectedIcon;
  final String cardText;
  const CardScreen({Key? key, required this.selectedIcon, required this.cardText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: currentWidth < 600
          ? Container(
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: secondColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    selectedIcon,
                    const SizedBox(height: 15),
                    Text(
                      cardText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              height: 230,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: secondColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    selectedIcon,
                    const SizedBox(height: 15),
                    Text(
                      cardText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
