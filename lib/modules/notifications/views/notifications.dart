import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Notifications",
              style: TextStyle(
                color: Color(0xFF515C6F),
                fontSize: 35,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                fontFamily: 'NeusaNextPro',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xFF8B9DF1 + index),
                        child: Icon(
                          Icons.card_travel,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 200,
                        child: RichText(
                          text: TextSpan(
                            text: 'Smiley’s Store ',
                            children: [
                              const TextSpan(
                                text: 'marked your order ',
                                style: TextStyle(
                                  fontSize: 15,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'NeusaNextPro',
                                ),
                              ),
                              TextSpan(
                                text: '#1982984 ',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Theme.of(context).highlightColor,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'NeusaNextPro',
                                ),
                              ),
                              const TextSpan(
                                text: 'as shipped.',
                                style: TextStyle(
                                  fontSize: 15,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'NeusaNextPro',
                                ),
                              ),
                            ],
                            style: TextStyle(
                              fontSize: 15,
                              color: Theme.of(context).backgroundColor,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'NeusaNextPro',
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
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
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
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
                            child: const Text(
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
                  );
                },
                separatorBuilder: (context, index) => const Divider(
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
