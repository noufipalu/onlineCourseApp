import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String selectedCard = '';
  bool isCardDetailsVisible = false;

  void onCardSelected(String cardType) {
    setState(() {
      if (selectedCard == cardType) {
        isCardDetailsVisible = !isCardDetailsVisible;
      } else {
        selectedCard = cardType;
        isCardDetailsVisible = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CardTile(
                cardType: 'Visa',
                isSelected: selectedCard == 'Visa',
                onCardSelected: onCardSelected,
              ),
              CardTile(
                cardType: 'MasterCard',
                isSelected: selectedCard == 'MasterCard',
                onCardSelected: onCardSelected,
              ),
              if (isCardDetailsVisible) ...[
                const SizedBox(height: 16),
                CardDetails(
                  selectedCard,
                  cardType: 'Visa',
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class CardDetails extends StatelessWidget {
  const CardDetails(String selectedCard, {super.key, required this.cardType});

  final String cardType;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Card Details for $cardType',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Card Number: **** **** **** 1234'),
            const Text('Expiry Date: 12/24'),
            const Text('CVV: ***'),
          ],
        ),
      ),
    );
  }
}

class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
    required this.cardType,
    required this.isSelected,
    required this.onCardSelected,
  });

  final String cardType;
  final bool isSelected;
  final Function(String) onCardSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(cardType),
      tileColor: isSelected ? Colors.blue[100] : null,
      onTap: () {
        onCardSelected(cardType);
      },
    );
  }
}
