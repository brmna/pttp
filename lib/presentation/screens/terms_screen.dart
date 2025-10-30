import 'package:flutter/material.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  bool accepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            '/assets/images/terminos.jpg',
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black.withOpacity(0.4)),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      "Términos y condiciones",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "1. Aceptación\nAl registrarte y utilizar esta aplicación, aceptas estos términos y condiciones.\n\n"
                      "2. Uso permitido\nNo debes usar esta app para fines fraudulentos o ilegales.\n\n"
                      "3. Privacidad\nTus datos se usarán solo para el funcionamiento de la app.\n\n",
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: accepted,
                          onChanged: (value) {
                            setState(() {
                              accepted = value!;
                            });
                          },
                        ),
                        const Expanded(
                          child: Text(
                            "He leído y acepto los Términos y Condiciones",
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: accepted
                          ? () {
                              Navigator.pushNamed(context, '/get-started');
                            }
                          : null,
                      child: const Text("Siguiente"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
