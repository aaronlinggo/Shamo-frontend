// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Widget cartButton(){
    return FloatingActionButton(
      onPressed: (){},
      backgroundColor: secondaryColor,
      child: Image.asset(
        'assets/icon_cart.png', 
        width: 20,
      ),
    );
  }

  Widget customBottomNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: backgroundColor4,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png', 
                width: 21
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_chat.png', 
                width: 20
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_wishlist.png', 
                width: 20
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_profile.png', 
                width: 18
              ),
              label: '',
            ),
          ]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: Center(
        child: Text('Main Page'),
      ),
    );
  }
}