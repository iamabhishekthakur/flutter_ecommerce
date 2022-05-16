import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  50,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                width: 100,
                child: Icon(
                  Icons.done,
                  size: 50,
                  color: Theme.of(context).highlightColor,
                ),
              ),
            ),
            const SizedBox(
              height: 37,
            ),
            Text(
              'Order Placed!',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 30,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                fontFamily: 'NeusaNextPro',
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                'Your order was placed successfully. For more details, check All My Orders page under Profile tab',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 15,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'NeusaNextPro',
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 160,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Success(),
                    ),
                  );
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).highlightColor,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "MY ORDERS",
                      style: TextStyle(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'NeusaNextPro',
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 14,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Theme.of(context).highlightColor,
                      ),
                    )
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
