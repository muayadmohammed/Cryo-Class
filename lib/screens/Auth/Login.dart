import 'package:TestApp/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../loading.dart';
import 'components/Background.dart';
import 'components/CustomInputFeild.dart';

class Login extends StatefulWidget {
  // bool isLoading;
  // Login({this.isLoading});
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  // bool isLoading = true;

  // @override
  // void initState() {
  //   super.initState();

  //   Future.delayed(const Duration(seconds: 5), () {
  //     setState(() {
  //       isLoading = false;
  //     });
  //   });
  // }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // if (isLoading == true) {
    //   return Loading();
    // } else {
    return Background(
      size: size,
      child: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: ListView(
            children: <Widget>[
              SizedBox(height: size.height / 3.5),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  "Log in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w300,
                    // fontFamily: 'bein1',
                        fontFamily: 'Montserrat',
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(height: 10),
              CustomInputField(
                hint: "Email",
                size: size,
                prefixIcon: Icons.email,
              ),
              CustomInputField(
                hint: "Password",
                size: size,
                prefixIcon: Icons.lock,
                obscure: true,
              ),
              SizedBox(height: size.height/8),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          ),
                        );
                      },
                      padding: EdgeInsets.all(20),
                      color: Color(0xFF0b132b),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  // }
}
