import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tokio_marine_app/src/commom_widgets/category_tile.dart';
import 'package:tokio_marine_app/src/pages/assistent_screen.dart';
import 'package:tokio_marine_app/src/pages_routes/app_pages.dart';
import 'package:tokio_marine_app/src/utils/colors_standar.dart';

class ListsCategories extends StatelessWidget {
  const ListsCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => AssistentScreen());
              },
              child: CategoryTile(
                icon: Icon(
                  MdiIcons.car,
                  color: gradientColor1,
                ),
                nameIcon: 'Automóvel',
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => AssistentScreen());
              },
              child: CategoryTile(
                icon: Icon(
                  Icons.home,
                  color: gradientColor1,
                ),
                nameIcon: 'Residencia',
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => AssistentScreen());
              },
              child: CategoryTile(
                icon: Icon(
                  MdiIcons.heart,
                  color: gradientColor1,
                ),
                nameIcon: 'Vida',
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => AssistentScreen());
              },
              child: CategoryTile(
                icon: Icon(
                  MdiIcons.trophyBroken,
                  color: gradientColor1,
                ),
                nameIcon: 'Acidentes',
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => AssistentScreen());
              },
              child: CategoryTile(
                icon: Icon(
                  MdiIcons.motorbike,
                  color: gradientColor1,
                ),
                nameIcon: 'Motos',
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(PagesRoutes.assistentScreen);
              },
              child: CategoryTile(
                icon: Icon(
                  Icons.business,
                  color: gradientColor1,
                ),
                nameIcon: 'Empresas',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
