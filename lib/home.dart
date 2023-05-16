import 'package:flutter/material.dart';
import 'package:payement/scanner.dart';

import 'generation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon application de paiement'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Logique pour générer le QR code
                // Naviguez vers l'écran de génération de QR code
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GenerateQRCodePage(paymentAmount: 'Test', paymentDescription: 'Ceci est un test',),
                  ),
                );
              },
              child: Text('Générer un QR code'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logique pour ouvrir le scanner de QR code
                // Naviguez vers l'écran de scan du QR code
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScanQRCodePage(),
                  ),
                );
              },
              child: Text('Scanner un QR code'),
            ),
          ],
        ),
      ),
    );
  }
}