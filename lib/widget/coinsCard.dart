import 'package:flutter/material.dart';

class CoinsCard extends StatelessWidget {
  final String coinName;
  final String coinEx;
  final String coinPrice;
  final String coinStat;
  final Color colorStat;

  CoinsCard({
    required this.coinName,
    required this.coinEx,
    required this.coinPrice,
    required this.coinStat,
    required this.colorStat,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 145,
      child: Card(
        elevation: 5,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 26),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/images/e.png'),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    coinName,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 58, top: 2),
              child: Text(
                coinEx,
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 10.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, top: 14),
              child: Row(
                children: [
                  const Icon(Icons.money_off, size: 15),
                  const SizedBox(width: 2),
                  Text(
                    coinPrice,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 28, top: 4),
              child: Text(
                coinStat,
                style: TextStyle(
                  color: colorStat,
                  fontSize: 11.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
