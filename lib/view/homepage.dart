import 'dart:async';

import 'package:ade_flutterwave_working_version/core/ade_flutterwave.dart';
import 'package:beauty_mapping/view/creditCard.dart';
import 'package:beauty_mapping/view/login.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utils/global.colors.dart';

class HomepageWithCard extends StatefulWidget {
  HomepageWithCard({super.key});

  @override
  State<HomepageWithCard> createState() => _HomepageWithCardState();
}

class _HomepageWithCardState extends State<HomepageWithCard> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: CreditCardsPage(),
          ),
          const SizedBox(height: 50),
          Container(
            padding: const EdgeInsets.only(top: 3, left: 15),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 7,
                ),
              ],
              color: Colors.white,
            ),
            child: TextFormField(
              controller: _fullNameController,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: const InputDecoration(
                  hintText: 'Name',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(height: 1)),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.only(top: 3, left: 15),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 7,
                ),
              ],
              color: Colors.white,
            ),
            child: TextFormField(
              controller: _phoneController,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: const InputDecoration(
                  hintText: 'Telephone',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(height: 1)),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.only(top: 3, left: 15),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 7,
                ),
              ],
              color: Colors.white,
            ),
            child: TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: const InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(height: 1)),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(top: 3, left: 15),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 7,
                ),
              ],
              color: Colors.white,
            ),
            child: TextFormField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: 'Amount',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(height: 1)),
            ),
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              //check if the fields are empty
              if (_amountController.text.isEmpty ||
                  _emailController.text.isEmpty ||
                  _phoneController.text.isEmpty ||
                  _fullNameController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Please fill all the fields'),
                  ),
                );
                return;
              }
              //data
              var data = {
                'amount': _amountController.text,
                'email': _emailController.text,
                'phone': _phoneController.text,
                'name': _fullNameController.text,
                'payment_options': 'card, banktransfer, ussd',
                'title': 'Flutterwave payment',
                'currency': "RWF",
                'tx_ref':
                    "AdeFlutterwave-${DateTime.now().millisecondsSinceEpoch}",
                'icon':
                    "https://www.aqskill.com/wp-content/uploads/2020/05/logo-pde.png",
                'public_key': "FLWPUBK_TEST-c422237e8c861b5b15ffb587a92b4be2-X",
                'sk_key': 'FLWSECK_TEST-930055105b78cc1331dfbebd5af3c290-X'
              };

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdeFlutterWavePay(data),
                ),
              ).then((response) {
                //response is the response from the payment
                // print(response);
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 55,
              decoration: BoxDecoration(
                color: GlobalColors.mainColor,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Text(
                'Pay',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ]),
      ))),
    );
  }
}
