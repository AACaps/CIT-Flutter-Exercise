import 'package:flutter/material.dart';
import 'package:app/fetch_flowers.dart';
import 'package:app/models/flowerModel.dart';
import 'app_drawer.dart';

class FlowerMainScreen extends StatelessWidget {
  const FlowerMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flower Gallery'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const AppDrawer(),
      body: const FlowerMain()
    );
  }
}

class FlowerMain extends StatefulWidget {
  const FlowerMain({super.key});

   @override
  _FlowerListState createState() => _FlowerListState();
}

class _FlowerListState extends State<FlowerMain> {
  String filterQuery = '';
  final FocusNode _searchFocusNode = FocusNode();
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: filterQuery);
    _searchController.addListener(_onSearchTextChanged);
  }

   @override
  void dispose() {
    _searchController.dispose();
     _searchFocusNode.dispose();
    super.dispose();
  }

  void _onSearchTextChanged() {
    setState(() {
      filterQuery = _searchController.text.toLowerCase();
    });

    _searchFocusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final flowerProvider = plantFetch.of(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
    _searchFocusNode.requestFocus();
  });
    return FutureBuilder<void>(
      future: flowerProvider?.fetchData(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator()
          );
        } else if (snapshot.hasError) {
          print(snapshot.error);
          return const Center(
            child: Text('Error fetching flowers'),
          );
        } else {
          final flowers = flowerProvider?.flowers;
          final filteredFlowers = flowers?.where((flower) {
          final name = flower.plantName.toLowerCase();
          return name.contains(filterQuery);
          }).toList();
          return Column(children: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              focusNode: _searchFocusNode, 
              decoration: const InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder()
              )
            ),
          ),
          Expanded(
            child: ListView.builder(
            itemCount: filteredFlowers?.length,
            itemBuilder: (context, index) {
              final flower = filteredFlowers?[index];
              return ListTile(
                title: Text(flower!.plantName),
                subtitle: Text(flower.plantKingdom),
                leading: Image.network(flower.url),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FlowerScreen(flowerTrue: flower),
                    ),
                  );
                },
              );
            },
            )
          )
          ],
          );
        }
      },
    );
  }
}

class FlowerScreen extends StatelessWidget {
  final flowerStat flowerTrue;

  const FlowerScreen({super.key, required this.flowerTrue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(flowerTrue.plantName),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(flowerTrue.url),
            const SizedBox(height: 16.0),
            Text(
               (flowerTrue.plantName),
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Kingdom: ${flowerTrue.plantKingdom}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Family: ${flowerTrue.plantFamily}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Genus: ${flowerTrue.plantGenus}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Local Name: ${flowerTrue.localName}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Description: ${flowerTrue.plantDescription}',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}


