import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Conversor Monetário')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/currency-logo.png'),
              ),
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 56,
                      child: DropdownButton(
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
