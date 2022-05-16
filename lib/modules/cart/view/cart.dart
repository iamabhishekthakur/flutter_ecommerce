import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/modules/cart/view/checkout.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
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
          ),
        ],
      ),
      body: Container(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Cart",
              style: TextStyle(
                color: Color(0xFF515C6F),
                fontSize: 35,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                fontFamily: 'NeusaNextPro',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                          child: Image.asset(
                            'assets/images/atki.png',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Faux Sued Ankle Boots',
                            style: TextStyle(
                              fontSize: 15,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Medium, Green',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            '\$49.99',
                            style: TextStyle(
                              fontSize: 15,
                              color: Theme.of(context).highlightColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.remove_circle,
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.2),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.add_circle,
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.2),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    indent: 100,
                  );
                },
                itemCount: 2,
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TOTAL',
                      style: TextStyle(
                        fontSize: 10,
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      '\$81.57',
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Free Domestic Shipping',
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Checkout(),
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
                        "CHECKOUT",
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
