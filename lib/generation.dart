import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCodePage extends StatelessWidget {
  final String paymentAmount;
  final String paymentDescription;

  GenerateQRCodePage({required this.paymentAmount, required this.paymentDescription});

  @override
  Widget build(BuildContext context) {
    String qrData = 'Amount: $paymentAmount, Description: $paymentDescription';

    return Scaffold(
      appBar: AppBar(
        title: Text('Générer un QR code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImage(
              data: qrData,
              version: QrVersions.auto,
              size: 200.0,
            ),
            SizedBox(height: 20),
            Text('Montant: $paymentAmount'),
            Text('Description: $paymentDescription'),
          ],
        ),
      ),
    );
  }
}