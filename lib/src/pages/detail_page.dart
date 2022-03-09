import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ElevatedButtonTheme(
          data: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              //-Tambien con crossAligment strech y  FractionallySizedBox
              fixedSize: Size.fromWidth(size.width * 0.5) 
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(width: double.maxFinite),
              ElevatedButton(
                onPressed: () {}, 
                child: const Text('Set User')
              ),
              ElevatedButton(
                onPressed: () {}, 
                child: const Text('Set Age')
              ),
              ElevatedButton(
                onPressed: () {}, 
                child: const Text('Add Profession')
              )
            ],
          ),
        ),
      ),
    );
  }
}