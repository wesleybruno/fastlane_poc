import 'package:flutter/material.dart';


class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(String.fromEnvironment('API_URL')),
          ],
        ),
      ),
    );
  }
}
