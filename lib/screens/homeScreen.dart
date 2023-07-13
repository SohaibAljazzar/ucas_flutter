import 'package:flutter/material.dart';
import 'package:ucas_flutter/screens/TransactionHistory.dart';

import '../widget/coinsCard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/f.png",
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 300,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 40.0, start: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Your Account Value",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "₹48,374.68",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 160,
                left: 0,
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.only(start: 10, end: 4, top: 0),
                    child: SizedBox(
                      height: 150,
                      child: GridView.builder(
                        // controller:
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        padding: EdgeInsets.zero,
                        // _scrollController2,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 5,
                          childAspectRatio: 85 / 98,
                        ),
                        itemBuilder: (context, index) {
                          return CoinsCard(
                              coinName: "Bit Coin",
                              coinEx: "BTC",
                              coinPrice: "₹359,536.28",
                              coinStat: "-0.45",
                              colorStat: Color(0xFFF45B7E));
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Transaction History",
              style: TextStyle(
                  color: const Color(0xFF444555),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 10, end: 4, top: 0),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: SizedBox(
                height: 150,
                child: Center(
                  child: Container(
                    height: 120,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Center(
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/g.png",
                        ),
                        title: const Text(
                          "Set Price Alert",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        subtitle: Text(
                          '''When price goes up or down you will get
notified.''',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade400),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8, left: 10, right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Card(
                color: Colors.white,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: ListView(
                  shrinkWrap: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return TransactionHistoryScreen();
                        }));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Transaction History",
                              style: TextStyle(
                                  color: Color(0xFF444555),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "See All",
                              style: TextStyle(
                                  color: Color(0xFF5A35F4),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ListView.builder(
                      itemBuilder: (context, index) {
                        return Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 0,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Image.asset(
                                    "assets/images/d.png",
                                  ),
                                  title: const Text(
                                    "Bit Coin",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  subtitle: Text(
                                    "14:20 12 Apr",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade400),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text(
                                        "₹10,000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.arrow_forward_ios_sharp)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      // shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      shrinkWrap: true,
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
