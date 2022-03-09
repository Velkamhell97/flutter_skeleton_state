import 'package:flutter/material.dart';
import 'package:skeleton_state/src/services/user_services.dart';

import '../models/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final userServices = UserServices();

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
        child: StreamBuilder<User?>(
          stream: userServices.userStream,
          initialData: null,
          builder: (context, snapshot) {
            if(!snapshot.hasData){
              return const Center(child: Text('There is not loaded user'));
            }

            final user = snapshot.data!;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('General', style: Theme.of(context).textTheme.titleLarge),
                ListTile(title: Text('Name: ${user.name}')),
                ListTile(title: Text('Age: ${user.age ?? ''}')),

                const SizedBox(height: 10.0),

                Text('Professions', style: Theme.of(context).textTheme.titleLarge),
                for(String profession in user.professions) ListTile(title: Text(profession))
              ],
            );
          },
        ),
      )
    );
  }
}