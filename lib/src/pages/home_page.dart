import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed('/detail'), 
            icon: const Icon(Icons.arrow_forward)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('General', style: Theme.of(context).textTheme.titleLarge),
            ListTile(title: Text('Name: ')),
            ListTile(title: Text('Age: ')),

            const SizedBox(height: 10.0),

            Text('Professions', style: Theme.of(context).textTheme.titleLarge),
            ListTile(title: Text('Software Engineer')),
            ListTile(title: Text('Electronic Engineer ')),
            ListTile(title: Text('Tender Engineer')),

          ],
        ),
      )
    );
  }
}