import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:preferencias_usuario/screens/screens.dart';


class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          
          const _DrawerHeader(),

          ListTile(
            leading: const FaIcon(FontAwesomeIcons.houseChimneyCrack ),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            }
          ),

          ListTile(
            leading: const FaIcon(FontAwesomeIcons.peopleGroup ),
            title: const Text('People'),
            onTap: () {

            }
          ),

          ListTile(
            leading: const FaIcon(FontAwesomeIcons.gear ),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, SettingsScreen.routeName);
            }
          )
        ]
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
     decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/header_drawer.jpg'),
          fit: BoxFit.cover
        )
     ),
     child: Container(),
    );
  }
}