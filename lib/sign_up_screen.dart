// MY CONFIG
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtName = new TextEditingController();
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtUsername = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();
  bool isPasswordVisible = true;

  void setVisibilityPass() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // This Text widget uses the RobotoMono font.
              SizedBox(
                height: 45,
              ),
              Text(
                'Sign Up',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.purple[300],
                      fontWeight: FontWeight.w900,
                    ),
              ),
              SizedBox(
                height: 75,
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 45, right: 45),
                child: TextField(
                  controller: txtName,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    hintText: "Enter Full Name ...",
                    contentPadding: EdgeInsets.fromLTRB(0, 5, 20, 5),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyText2,
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () => FocusScope.of(context).nextFocus(),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 45, right: 45),
                child: TextField(
                  controller: txtEmail,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter Email ...",
                    contentPadding: EdgeInsets.fromLTRB(0, 5, 20, 5),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyText2,
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () => FocusScope.of(context).nextFocus(),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 45, right: 45),
                child: TextField(
                  controller: txtUsername,
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter Username ...",
                    contentPadding: EdgeInsets.fromLTRB(0, 5, 20, 5),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyText2,
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () => FocusScope.of(context).nextFocus(),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 45, right: 45),
                child: TextField(
                  controller: txtPassword,
                  obscureText: isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password ...",
                    contentPadding: EdgeInsets.fromLTRB(0, 5, 20, 5),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {
                        setVisibilityPass();
                      },
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyText2,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (_) => FocusScope.of(context).unfocus(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 45, right: 45),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the second screen when tapped.
                      // Navigator.pushNamed(context, '/four');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      minimumSize: Size(double.infinity, 30),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Already have an account? Sign in here!",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Colors.black45,
                      ),
                ),
              ),
              SizedBox(
                height: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
