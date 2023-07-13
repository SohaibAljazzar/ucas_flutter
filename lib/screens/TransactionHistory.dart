import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  State<TransactionHistoryScreen> createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: Color(0xFF9A9CB8),
          ),
        ),
        title: const Text(
          "Transaction History",
          style: const TextStyle(color: Color(0xFF444555)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width * 0.47,
                child: Card(
                  elevation: 0,
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: ListTile(
                          leading: Image.asset(
                            "assets/images/b.png",
                          ),
                          title: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "You Purchased",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "54.46",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "In total",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade400),
                              ),
                            ],
                          ),
                          subtitle: const Text(
                            "View Details",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(89, 39, 255, 1)),
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: ListTile(
                          leading: Image.asset(
                            "assets/images/b.png",
                          ),
                          title: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "You Purchased",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "54.46",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "In total",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade400),
                              ),
                            ],
                          ),
                          subtitle: const Text(
                            "View Details",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(89, 39, 255, 1)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width * 0.47,
                child: Card(
                  elevation: 0,
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: ListTile(
                          leading: Image.asset(
                            "assets/images/b.png",
                          ),
                          title: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "You Purchased",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "54.46",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "In total",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade400),
                              ),
                            ],
                          ),
                          subtitle: const Text(
                            "View Details",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(89, 39, 255, 1)),
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: ListTile(
                          leading: Image.asset(
                            "assets/images/b.png",
                          ),
                          title: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "You Purchased",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "54.46",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "In total",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade400),
                              ),
                            ],
                          ),
                          subtitle: const Text(
                            "View Details",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(89, 39, 255, 1)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          color: Color(0xFFF5F6FA),
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Transaction History",
                  style: TextStyle(
                      color: Color(0xFF444555),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Card(
          color: Color(0xFFF5F6FA),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                color: Color(0xFFF5F6FA),
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/d.png",
                  ),
                  title: const Text(
                    "Bit Coin",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
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
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward_ios_sharp)
                    ],
                  ),
                ),
              );
            },
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
          ),
        )
      ]),
    );
  }
}
