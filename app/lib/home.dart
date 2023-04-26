import 'package:flutter/material.dart';
import 'package:app/immutable_widget.dart';
import 'home_screen_state.dart';
import 'app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[800],
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HomeScreenTextField(),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildItem('Erigeron acomanus', '(Acoma fleabane)',
                    'images/erigeron.jpg'),
                _buildItem(
                    'Cirsium gilense', '(Gila thistle)', 'images/gila.jpg'),
                _buildItem('Packera cardamine', '(Heartleaf groundsel)',
                    'images/heartleaf.jpg'),
                _buildItem('Synthyris oblongfolia',
                    '(Sierra Blanca kittentails)', 'images/kittentail.jpg'),
              ],
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
    );
  }

  Widget _buildItem(String title, String description, String imagePath) {
    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.lightGreen[100],
        boxShadow: [
          BoxShadow(
            color: Colors.lightGreen,
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
