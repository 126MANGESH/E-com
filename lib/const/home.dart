


import 'package:ecom/const/const.dart';
import 'package:ecom/const/home_controlar.dart';
import 'package:ecom/pages/cart_screen.dart';
import 'package:ecom/pages/categories_page/categories_screen.dart';
import 'package:ecom/pages/homescreen.dart';
import 'package:ecom/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26),label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26),label: account),


    ];

    var navBody = [
      const HomeScreen(),
      const CategoriesScreen(),
      const CartScreen(),
      const ProfileScreen()
    ];

return Scaffold(
  body: Column(
    children: [
      Obx(() => 
      Expanded(child: navBody.elementAt(controller.currentNavIndex.value)),
      )
      
    ],
  ),
  
  
  bottomNavigationBar:Obx(() =>  
  BottomNavigationBar(
    currentIndex: controller.currentNavIndex.value,
    selectedLabelStyle: const TextStyle(fontFamily: semibold),
    selectedItemColor: redColor,
    backgroundColor: whiteColor,
    type: BottomNavigationBarType.fixed,
    // unselectedFontSize: 0.0,
    // selectedFontSize: 0.0,
    items: navbarItem,
    onTap: (value) => {
      controller.currentNavIndex.value=value
    },

    ),
)
);
   }
}
