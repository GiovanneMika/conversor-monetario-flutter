class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({
    required this.name,
    required this.real,
    required this.dolar,
    required this.euro,
    required this.bitcoin,
  });

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
        name: 'Real',
        real: 1.0,
        dolar: 0.19,
        euro: 0.16,
        bitcoin: 0.0000020,
      ),
      CurrencyModel(
        name: 'Dólar',
        real: 5.38,
        dolar: 1.0,
        euro: 0.86,
        bitcoin: 0.000011,
      ),
      CurrencyModel(
        name: 'Euro',
        real: 6.27,
        dolar: 1.17,
        euro: 1.0,
        bitcoin: 0.000012,
      ),
      CurrencyModel(
        name: 'Bitcoin',
        real: 501932.44,
        dolar: 93547.79,
        euro: 80272.28,
        bitcoin: 1.00,
      ),
    ];
  }
}
