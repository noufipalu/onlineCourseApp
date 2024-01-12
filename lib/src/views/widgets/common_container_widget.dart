import 'package:flutter/material.dart';

class CommomContainerWidget extends StatelessWidget {
  const CommomContainerWidget(
      {super.key,
      required this.titleText1,
      required this.subText1,
      required this.button1,
      this.button2,
      required this.line});
  final Container line;
  final Text titleText1;
  final Text subText1;
  final Container button1;
  final Container? button2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        height: (MediaQuery.of(context).size.height) / 2,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: line,
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: titleText1,
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: subText1,
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(child: button1),
                if (button2 != null) const SizedBox(width: 16.0),
                if (button2 != null) Expanded(child: button2!),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
