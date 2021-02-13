import 'package:crayon/Screens/OTPScreen.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final emailField = TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter mobile number';
        }
        return null;
      },
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Phone Number",
        prefix: Padding(
          padding: EdgeInsets.all(4),
          child: Text('+971'),
        ),
      ),
      maxLength: 9,
      keyboardType: TextInputType.number,
      controller: _controller,
    );

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
            emailField,
            Container(
              margin: EdgeInsets.all(10),
              width: 100,
              // color: Color.fromRGBO(140, 137, 218, 0),
              child: FlatButton(
                color: Color.fromRGBO(140, 137, 218, 1),
                // color: Colors.deepPurple[200],
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OTPScreen(_controller.text)));
                },
                // onPressed: () => Navigator.of(context)
                //     .push(MaterialPageRoute(builder: null)),
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
