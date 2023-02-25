import 'package:flutter/material.dart';
import 'package:preferencias_usuario/shared_preferences/preferences.dart';

import 'package:preferencias_usuario/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {

  static const String routeName= 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenuWidget(),
      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('DarkMode: ${Preferences.isDarkMode}'),
              const Divider(),
              Text('Género:  ${Preferences.gender == 1 ? 'Male' : 'Female'}'),
              Divider(),
              Text('Nombre de usuario:  ${Preferences.name}'),
              const Divider()
            ],
        )
    );
  }
}