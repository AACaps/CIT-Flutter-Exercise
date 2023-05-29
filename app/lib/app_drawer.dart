import 'package:app/flower_main_screen.dart';
import 'package:flutter/material.dart';
import 'about.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("images/preserv.app.png"),
                    fit: BoxFit.contain)),
            child: null,
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Flowers'),
             onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FlowerMainScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.supervisor_account_rounded,
            ),
            title: Text('About'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => aboutUs()),
              );
            },
          ),
          const ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
