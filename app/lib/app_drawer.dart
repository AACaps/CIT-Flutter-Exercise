import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("images/preserv.app.png"),
                    fit: BoxFit.contain)),
            child: null,
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(
              Icons.image_outlined,
            ),
            title: Text('Images'),
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
