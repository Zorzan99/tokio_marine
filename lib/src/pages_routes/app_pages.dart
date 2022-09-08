import 'package:get/get.dart';
import 'package:tokio_marine_app/src/pages/assistent_screen.dart';
import 'package:tokio_marine_app/src/pages/drawer_page.dart';
import 'package:tokio_marine_app/src/pages/home_page.dart';
import 'package:tokio_marine_app/src/pages/sign_in_screen.dart';
import 'package:tokio_marine_app/src/pages/sign_up_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: PagesRoutes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: PagesRoutes.signin,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: PagesRoutes.signup,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: PagesRoutes.drawerPage,
      page: () => const DrawerPage(),
    ),
    GetPage(
      name: PagesRoutes.assistentScreen,
      page: () => AssistentScreen(),
    ),
  ];
}

abstract class PagesRoutes {
  static const String home = '/home';
  static const String signin = '/signin';
  static const String signup = '/signup';
  static const String drawerPage = '/drawerPage';
  static const String assistentScreen = '/assistentScreen';
}
