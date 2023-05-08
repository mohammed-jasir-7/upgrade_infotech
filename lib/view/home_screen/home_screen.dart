import 'package:flutter/material.dart';
import 'package:upgrade/view/home_screen/widgets/list_of_items.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("upgrade infotech"),
      ),
      body: SafeArea(
        child: Column(
          children: const [Expanded(child: CustomList())],
        ),
      ),
    );
  }
}
