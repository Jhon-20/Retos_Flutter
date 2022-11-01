import 'package:app_reto_03/app/routes/app_routes.dart';
import 'package:app_reto_03/app/ui/views/home/home_binding.dart';
import 'package:app_reto_03/app/ui/views/home/home_view.dart';
import 'package:app_reto_03/app/ui/views/menu/menu_view.dart';
import 'package:get/get.dart';

abstract class AppViews {
  static final views = [
    GetPage(
        name: AppRoutes.HOME,
        page: () => const HomeView(),
        binding: HomeBinding()),
    GetPage(
      name: AppRoutes.MENU,
      page: () => const MenuView(),
    ),
    // binding: LoginBinding()),),
  ];
}
