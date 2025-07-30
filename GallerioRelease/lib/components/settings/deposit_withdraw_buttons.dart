import 'package:flutter/material.dart';

class DepositWithdrawCard extends StatelessWidget {
  const DepositWithdrawCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            child: Container(
              height: 65,
              width: 135,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                    color: Colors.grey.shade800,
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 35,
                    child: Text(
                      'Deposit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 0,
            child: Container(
              height: 65,
              width: 135,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                    color: Colors.grey.shade800,
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 30,
                    child: Text(
                      'Withdraw',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
