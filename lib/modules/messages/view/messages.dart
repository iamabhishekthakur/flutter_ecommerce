import 'package:flutter/material.dart';

import 'message_window.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.close,
              color: Theme.of(context).highlightColor,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Messages",
              style: TextStyle(
                color: Color(0xFF515C6F),
                fontSize: 35,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                fontFamily: 'NeusaNextPro',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Search Conversations',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MessageWindow(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Smiley’s Store',
                              style: TextStyle(
                                fontSize: 15,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'NeusaNextPro',
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                style: TextStyle(
                                  fontSize: 13,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'NeusaNextPro',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              '9:20 AM',
                              style: TextStyle(
                                fontSize: 13,
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.4),
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'NeusaNextPro',
                              ),
                            ),
                            SizedBox(
                              height: 10,
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
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                  indent: 60,
                ),
                itemCount: 21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
