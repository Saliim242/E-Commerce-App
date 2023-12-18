import 'package:flutter/material.dart';
import 'package:flutter_projects/features/shop/screens/home/home.dart';
import 'package:flutter_projects/utils/constants/colors.dart';
import 'package:flutter_projects/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final nav = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: nav.selectedIndex.value,
          onDestinationSelected: (index) => nav.updateIndex(index),
          backgroundColor: darkMode ? TColors.black : TColors.white,
          indicatorColor: darkMode
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shop),
              label: 'Store',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'Wishlist',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(
        () => nav.screens[nav.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  void updateIndex(index) {
    selectedIndex.value = index;
    update();
  }

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: const Color.fromARGB(255, 192, 213, 203),
    ),
  ];
}
