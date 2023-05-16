import 'package:flutter/material.dart';

class PaymentConfirmationPage extends StatelessWidget {
  var scanData;

  PaymentConfirmationPage({required this.scanData});

  @override
  Widget build(BuildContext context) {
    // Effectuez le traitement nécessaire sur les données scannées (scanData)

    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation de paiement'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Données scannées :'),
            SizedBox(height: 20),
            Text(scanData),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logique pour confirmer le paiement
                // Affichez un message de confirmation
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Paiement confirmé'),
                      content: Text('Le paiement a été effectué avec succès.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Confirmer le paiement'),
            ),
          ],
        ),
      ),
    );
  }
}