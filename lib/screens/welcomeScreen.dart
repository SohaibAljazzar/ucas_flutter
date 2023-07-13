import 'package:flutter/material.dart';
import 'package:ucas_flutter/screens/homeScreen.dart';

import 'TransactionHistory.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/backgrondSplash.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill),
          Container(
            child: ListView(
              children: [
                const SizedBox(
                  height: 75,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 170,
                      height: 150,
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100),
                              topRight: Radius.circular(100))),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/images/logo.png',
                              alignment: Alignment.centerLeft)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Bits',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            decoration: TextDecoration.none),
                      ),
                      const Text(
                        'Cuckoo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            decoration: TextDecoration.none),
                      ),
                      const Text(
                        'Collect your bit coins',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const Text(
                        'How Cuckoo will help?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(68, 228, 165, 1),
                                  borderRadius: BorderRadius.circular(15))),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text(
                            'Cuckoo will help you to buy/sell your bit coins',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(68, 228, 165, 1),
                                  borderRadius: BorderRadius.circular(15))),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text(
                            'Cuckoo will help you to set the price tracker',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(68, 228, 165, 1),
                                  borderRadius: BorderRadius.circular(15))),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text(
                            'Cuckoo is faster smart & Sweet',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const Text(
                        'Enter your Mobile Number',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        maxLines: 1,
                        keyboardType: TextInputType.number,
                        onChanged: (v) {},
                        decoration: InputDecoration(
                            hintText: '98412012345',
                            hintStyle: const TextStyle(
                                color: Color.fromRGBO(225, 221, 248, 1),
                                fontSize: 18),
                            prefixIcon: Container(
                              color: const Color.fromRGBO(244, 244, 244, 1),
                              width: 45,
                              margin: const EdgeInsets.only(left: 10),
                              child: const Center(
                                child: Text(
                                  '91',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            suffixIcon: ElevatedButton(
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0.0),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(20)),
                                  shape: MaterialStateProperty.resolveWith<
                                      OutlinedBorder>((_) {
                                    return const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20)));
                                  }),
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color.fromRGBO(68, 228, 165, 1),
                                  )),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (ctx) {
                                  return HomeScreen();
                                }));
                              },
                              child: const Icon(Icons.arrow_forward),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(21),
                                  bottomRight: Radius.circular(21),
                                  topLeft: Radius.circular(13),
                                  bottomLeft: Radius.circular(13)),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
