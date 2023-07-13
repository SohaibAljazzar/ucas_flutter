import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../screens/TransactionHistory.dart';
import '../screens/welcomeScreen.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  GlobalKey formKey = GlobalKey();
  TextEditingController passValue = TextEditingController();
  String initialCountry = 'SA';
  PhoneNumber number = PhoneNumber(isoCode: 'SA');
  Icon iconSuffix = const Icon(
    Icons.phone,
    color: Colors.transparent,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: const Color.fromRGBO(89, 39, 255, 1),
              child: Center(
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Bit Cuckoo',
                            style: TextStyle(
                                color: Color.fromRGBO(89, 39, 255, 1),
                                fontSize: 30)),
                        Text(
                          'Hi, SIGNIN!',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xFFAF8344)),
                          ),
                          child: Stack(
                            children: [
                              InternationalPhoneNumberInput(
                                onInputChanged: (value) {
                                  debugPrint(" here value $value");
                                  number = value;
                                },
                                onInputValidated: (bool value) {
                                  debugPrint("value Validated ? $value");
                                  //TODO: HERE CHANGE SUFFIX ICON
                                },
                                cursorColor: Color.fromRGBO(89, 39, 255, 1),
                                formatInput: false,
                                hintText: 'Search',
                                textFieldController: TextEditingController(),
                                autoFocus: false,
                                autoFocusSearch: false,
                                // countries: const ["PS"],
                                selectorConfig: const SelectorConfig(
                                    selectorType:
                                        PhoneInputSelectorType.BOTTOM_SHEET),
                                countrySelectorScrollControlled: true,
                                onSubmit: () {
                                  // print("number here ${number.phoneNumber.toString()}");
                                },
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: false),
                                inputBorder: const OutlineInputBorder(),
                                onSaved: (PhoneNumber number) {
                                  // print('On Saved: $number');
                                  this.number = number;
                                },
                                ignoreBlank: false,
                                autoValidateMode: AutovalidateMode.disabled,
                                selectorTextStyle: const TextStyle(
                                    color: Color.fromRGBO(89, 39, 255, 1),
                                    fontFamily: 'Almarai'),
                                initialValue: number,
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(89, 39, 255, 1),
                                    fontFamily: 'Almarai'),
                                inputDecoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(bottom: 0, left: 0),
                                    border: InputBorder.none,
                                    hintText: '',
                                    prefixIcon: iconSuffix,
                                    hintStyle: const TextStyle(
                                        color: Color.fromRGBO(89, 39, 255, 1),
                                        fontFamily: 'Almarai')),
                              ),
                              Positioned(
                                  left: 90,
                                  top: 8,
                                  bottom: 8,
                                  width: 1,
                                  child: Container(
                                      height: 40,
                                      width: 1,
                                      color: Colors.black.withOpacity(0.13)))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Form(
                          key: formKey,
                          child: TextFormField(
                            key: const ValueKey('phoneNumber'),
                            autocorrect: true,
                            obscureText: false,
                            enableSuggestions: true,
                            textCapitalization: TextCapitalization.words,
                            validator: (val) {
                              if (val!.isEmpty || val.length < 4) {
                                return "Please enter at least 4 characters";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                value != ''
                                    ? value = passValue as String?
                                    : passValue = '' as TextEditingController;
                              });
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              focusColor:
                                  const Color.fromRGBO(240, 240, 240, 1),
                              filled: true,
                              suffixIcon: const Icon(Icons.visibility),
                              hintText: '**********',
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 20),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromRGBO(240, 240, 240, 1)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    width: 0,
                                    color: Color.fromRGBO(240, 240, 240, 1)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'New Member?',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  Text(
                                    'Sign up',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(175, 131, 68, 1),
                                        fontSize: 16,
                                        decoration: TextDecoration.underline),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(150, 50)),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(129, 96, 239, 1)),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (ctx) {
                                    return WelcomeScreen();
                                  }));
                                },
                                child: const Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 75,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              style: const ButtonStyle(),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (ctx) {
                                  return TransactionHistoryScreen();
                                }));
                              },
                              child: Row(
                                children: const [
                                  Text(
                                    'Get Start Now',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.black,
                                    size: 22,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
