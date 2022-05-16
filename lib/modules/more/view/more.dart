import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: Color(
                    0xFF727C8E,
                  ),
                ),
                onPressed: () {},
              ),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Color(
                    0xFFFF6969,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                height: 20,
                width: 20,
                child: Text(
                  "5",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'NeusaNextPro',
                  ),
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  color: Color(
                    0xFF727C8E,
                  ),
                ),
                onPressed: () {},
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 2,
                ),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Color(
                    0xFFFF6969,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                height: 20,
                width: 20,
                child: Text(
                  "10",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'NeusaNextPro',
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "More",
              style: TextStyle(
                color: Color(0xFF515C6F),
                fontSize: 35,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                fontFamily: 'NeusaNextPro',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.share_location,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Shipping Address',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                            size: 12,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.payments,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Payment Method',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                            size: 12,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.currency_exchange,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Currency',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                            size: 12,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.language,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Language',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                            size: 12,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.notifications_active_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Notification Settings',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                            size: 12,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.privacy_tip_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                            size: 12,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.question_answer_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Frequently Asked Questions',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                            size: 12,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.text_snippet_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Legal Information',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                            size: 12,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
