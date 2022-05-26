import 'package:flutter/material.dart';

class PageGetStared extends StatefulWidget {
  @override
  PageGetStaredState createState() => PageGetStaredState();
}

class PageGetStaredState extends State<PageGetStared>
    with SingleTickerProviderStateMixin {
  late List<Widget> tabList;
  late TabController tabController;

  TextEditingController signUpEmail =
      TextEditingController(text: "email@email.com");
  TextEditingController signUpUsername =
      TextEditingController(text: "username");
  TextEditingController signUpPass = TextEditingController(text: "password");

  @override
  void initState() {
    super.initState();

    tabList = [
      const Tab(
          child: Text("Sign Up",
              style: TextStyle(
                  fontFamily: 'NeusaNextPro', fontWeight: FontWeight.bold))),
      const Tab(
          child: Text("Log In",
              style: TextStyle(
                  fontFamily: 'NeusaNextPro', fontWeight: FontWeight.bold))),
      const Tab(
          child: Text("Forgot Password",
              style: TextStyle(
                  fontFamily: 'NeusaNextPro', fontWeight: FontWeight.bold))),
    ];

    tabController = TabController(length: tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            labelPadding: const EdgeInsets.only(left: 20, right: 70),
            isScrollable: true,
            indicator: const BoxDecoration(color: Colors.transparent),
            labelStyle: const TextStyle(fontSize: 30),
            labelColor: const Color(0xFF515C6F),
            unselectedLabelColor: const Color(0x50515C6F),
            controller: tabController,
            tabs: tabList,
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: TabBarView(controller: tabController, children: <Widget>[
          _buildFormSignUp(),
          _buildFormLogIn(),
          _buildFormForgotPassword(),
        ]),
      ),
    );
  }

  _buildFormSignUp() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200]!, spreadRadius: 1, blurRadius: 10)
              ],
            ),
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            margin: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.mail_outline),
                    labelText: "EMAIL",
                    border: InputBorder.none,
                    labelStyle: TextStyle(fontSize: 20),
                  ),
                  cursorColor: const Color(0xFFFF6969),
                  controller: signUpEmail,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person_outline),
                      labelText: "USERNAME",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 20)),
                  controller: signUpUsername,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock_outline),
                      labelText: "PASSWORD",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 20)),
                  obscureText: true,
                  controller: signUpPass,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: FlatButton(
              color: const Color(0xFFFF6969),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              onPressed: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Row(
                  children: const <Widget>[
                    Expanded(
                        child: Text(
                      "SING UP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'NeusaNextPro',
                          fontWeight: FontWeight.bold),
                    )),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child:
                          Icon(Icons.chevron_right, color: Color(0xFFFF6969)),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Text(
              "By creating an account, you agree to our\nTerms of Service and Privacy Policy",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'NeusaNextPro', color: Color(0xFF515C6F)))
        ],
      ),
    );
  }

  _buildFormLogIn() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200]!, spreadRadius: 1, blurRadius: 10)
              ],
            ),
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            margin: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person_outline),
                      labelText: "USERNAME / EMAIL",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 20)),
                  controller: signUpUsername,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock_outline),
                      labelText: "PASSWORD",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 20)),
                  obscureText: true,
                  controller: signUpPass,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: FlatButton(
              color: const Color(0xFFFF6969),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/PageHome");
              },
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      child: Text("LOG IN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'NeusaNextPro',
                              fontWeight: FontWeight.bold)),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child:
                          Icon(Icons.chevron_right, color: Color(0xFFFF6969)),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Text(
              "Don’t have an account? \nSwipe right to create a new account.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'NeusaNextPro', color: Color(0xFF515C6F)))
        ],
      ),
    );
  }

  _buildFormForgotPassword() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(bottom: 10, left: 50, right: 50),
            child: Text(
                "Enter the email address you used to create your account and we will email you a link to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    wordSpacing: 2,
                    fontFamily: 'NeusaNextPro',
                    color: Color(0xFF515C6F))),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200]!, spreadRadius: 1, blurRadius: 10)
              ],
            ),
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            margin: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.mail_outline),
                      labelText: "EMAIL",
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 20)),
                  controller: signUpEmail,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: FlatButton(
              color: const Color(0xFFFF6969),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              onPressed: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Row(
                  children: const <Widget>[
                    Expanded(
                        child: Text(
                      "SEND MAIL",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'NeusaNextPro',
                          fontWeight: FontWeight.bold),
                    )),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child:
                          Icon(Icons.chevron_right, color: Color(0xFFFF6969)),
                    )
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
