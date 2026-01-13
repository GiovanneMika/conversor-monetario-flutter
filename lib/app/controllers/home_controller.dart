import 'package:conversor_monetario/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  late List<CurrencyModel> currencies;
  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;
  late TextEditingController toTextController = TextEditingController();
  late TextEditingController fromTextController = TextEditingController();

  HomeController() {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert(double value) {
    // tem que implementar a conversão
  }
}
