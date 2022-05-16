import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                icon: const Icon(
                  Icons.chat_bubble_outline,
                  color: Color(
                    0xFF727C8E,
                  ),
                ),
                onPressed: () {},
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
          ),
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.notifications_none,
                  color: Color(
                    0xFF727C8E,
                  ),
                ),
                onPressed: () {},
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 2,
                ),
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
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://image.shutterstock.com/image-photo/image-dreaming-pleased-young-pretty-260nw-1657660690.jpg',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jane Doe',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NeusaNextPro',
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      'janedoe123@email.com',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'NeusaNextPro',
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    OutlinedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor,
                        ),
                        side: MaterialStateProperty.all(
                          BorderSide(
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.5),
                          ),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'EDIT PROFILE',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'NeusaNextPro',
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
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
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.format_list_bulleted_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text(
                          'All My Orders',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        const Spacer(),
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
                        const SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.local_shipping_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Pending Shipments',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        const Spacer(),
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
                        const SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.payment_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Pending Payments',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        const Spacer(),
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
                        const SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Finished Orders',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        const Spacer(),
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
                        const SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
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
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.email_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Invite Friends',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        const Spacer(),
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
                        const SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.support_agent_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Customer Support',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        const Spacer(),
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
                        const SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.star_rate_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Rate Our App',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        const Spacer(),
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
                        const SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20,
                      indent: 50,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.edit_note_outlined,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Make a Suggestion',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'NeusaNextPro',
                          ),
                        ),
                        const Spacer(),
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
                        const SizedBox(
                          width: 18,
                        ),
                      ],
                    ),
                    const SizedBox(
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
