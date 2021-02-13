import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:pinput/pin_put/pin_put_state.dart';

class OTPWidget extends StatefulWidget {
  final String phone;
  OTPWidget(this.phone);
  @override
  _OTPWidgetState createState() => _OTPWidgetState();
}

class _OTPWidgetState extends State<OTPWidget> {
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    // color: const Color.fromRGBO(140, 137, 218, 1),
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: const Color.fromRGBO(140, 137, 218, 1),
    ),
  );
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 85,
            ),
            Container(
              height: 200,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    '/Users/hebanazim/FlutterProjects/school_app/assets/logo/logo.png',
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Text(
                    'Crayon & Co.',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Verify +971 ${widget.phone}',
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: PinPut(
                fieldsCount: 6,
                withCursor: true,
                textStyle: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
                eachFieldWidth: 10.0,
                eachFieldHeight: 10.0,
                // onSubmit: (String pin) => _showSnackBar(pin),
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,
                submittedFieldDecoration: pinPutDecoration,
                selectedFieldDecoration: pinPutDecoration,
                followingFieldDecoration: pinPutDecoration,
                pinAnimationType: PinAnimationType.fade,
              ),
            )
          ],
        ),
      ),
    );
  }
}
