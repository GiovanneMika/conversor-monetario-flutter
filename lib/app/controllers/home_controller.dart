import 'package:conversor_monetario/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  late List<CurrencyModel> currencies;
  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;
  final TextEditingController toTextController;
  final TextEditingController fromTextController;

  HomeController({
    required this.toTextController,
    required this.fromTextController,
  }) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    String text = fromTextController.text;
    text == null || text.isEmpty ? fromTextController.text = '1' : null;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue;

    switch (toCurrency.name) {
      case 'Real':
        returnValue = value * fromCurrency.real;
        break;
      case 'Dólar':
        returnValue = value * fromCurrency.dolar;
        break;
      case 'Euro':
        returnValue = value * fromCurrency.euro;
        break;
      case 'Bitcoin':
        returnValue = value * fromCurrency.bitcoin;
        break;
      default:
        returnValue = -1;
    }
    toCurrency.name == 'Bitcoin'
        ? toTextController.text = returnValue.toStringAsFixed(8)
        : toTextController.text = returnValue.toStringAsFixed(2);
  }
}
