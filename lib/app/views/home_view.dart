import 'package:conversor_monetario/app/components/currency_box.dart';
import 'package:conversor_monetario/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final TextEditingController toTextController = TextEditingController();
  final TextEditingController fromTextController = TextEditingController();
  late final HomeController homeController;
  HomeView() {
    homeController = HomeController(
      toTextController: toTextController,
      fromTextController: fromTextController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Conversor Monetário')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 80,
            left: 30,
            right: 30,
            bottom: 20,
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/currency-logo.png'),
              ),
              const SizedBox(height: 40),
              CurrencyBox(
                items: homeController.currencies,
                controller: fromTextController,
                onChanged: (model) {},
              ),
              const SizedBox(height: 10),
              CurrencyBox(
                items: homeController.currencies,
                controller: toTextController,
                onChanged: (model) {},
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF94BF3D),
                  ),
                ),
                child: Text("Converter", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
