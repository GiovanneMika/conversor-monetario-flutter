import 'package:conversor_monetario/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController toTextController = TextEditingController();
  final TextEditingController fromTextController = TextEditingController();
  final homeController = HomeController(
    toTextController: toTextController,
    fromTextController: fromTextController,
  );

  test('should be able to convert from real to dolar', () {
    fromTextController.text = '2.0';
    homeController.convert();
    expect(toTextController.text, '0.38');
  });

  test('should be able to convert from real to dolar with comma', () {
    fromTextController.text = '2,0';
    homeController.convert();
    expect(toTextController.text, '0.38');
  });

    test('should be able to convert from dolar to real', () {
    fromTextController.text = '2,0';
    homeController.fromCurrency = homeController.currencies[1]; // Dólar
    homeController.toCurrency = homeController.currencies[0]; // Real
    homeController.convert();
    expect(toTextController.text, '10.76');
  });

}
