import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton(
              iconEnabledColor: Color.fromARGB(255, 16, 68, 137),
              isExpanded: true,
              underline: Container(
                height: 1,
                color: const Color.fromARGB(255, 16, 68, 137),
              ),
              items: [
                DropdownMenuItem(
                  value: 'Real',
                  enabled: true,
                  child: Text("Real"),
                ),
                DropdownMenuItem(
                  value: 'Dolar',
                  enabled: true,
                  child: Text("Dolar"),
                ),
              ],
              onChanged: (value) {},
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
