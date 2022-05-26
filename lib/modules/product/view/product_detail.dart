import 'dart:math' as math;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  ProductDetailState createState() => ProductDetailState();
}

class ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Faux Sued Ankle Boots",
          style: TextStyle(
            color: Color(0xFF515C6F),
            fontSize: 15,
            wordSpacing: 2,
            fontFamily: 'NeusaNextPro',
          ),
        ),
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left,
              color: Color(0xFFFF6969), size: 30),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Color(0xFF727C8E),
                ),
                onPressed: () {},
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF6969),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                height: 20,
                width: 20,
                child: const Text(
                  "7",
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(25),
          child: Row(
            children: <Widget>[
              const Spacer(flex: 1),
              const Text(
                "\$49.99",
                style: TextStyle(
                  fontFamily: 'NeusaNextPro',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF515C6F),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFF6969),
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.only(
                    top: 4, bottom: 4, left: 5, right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.star, size: 15, color: Colors.white),
                    Text(
                      "4.9",
                      style: TextStyle(
                        fontFamily: 'NeusaNextPro',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const ProductImagesView(),
          const SizedBox(
            height: 32,
          ),
          const ProductDetailViews(),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        23,
                      ),
                    ),
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'SHARE THIS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF727C8E),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xFF727C8E),
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF6969),
                      borderRadius: BorderRadius.circular(
                        23,
                      ),
                    ),
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'ADD TO CART',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFFF6969),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductDetailViews extends StatefulWidget {
  const ProductDetailViews({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductDetailViews> createState() => _ProductDetailViewsState();
}

class _ProductDetailViewsState extends State<ProductDetailViews> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  int selectedColorIndex = 0;
  int selectSizeIndex = 0;
  List<String> viewOptions = [
    'Product',
    'Details',
    'Reviews',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                viewOptions.length,
                (index) => GestureDetector(
                  onTap: () => _controller.animateToPage(index),
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: _current == index ? Colors.white : null,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Text(
                      viewOptions[index],
                      style: TextStyle(
                        color: _current == index
                            ? const Color(0xFFFF6969)
                            : const Color(0xFF727C8E),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            CarouselSlider(
              items: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'SELECT COLOR',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            setState(() {
                              selectedColorIndex = index;
                            });
                          },
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(
                              (math.Random().nextDouble() * 0xFFFFFF).toInt(),
                            ).withOpacity(1.0),
                            child: selectedColorIndex == index
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                        itemCount: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'SELECT SIZE',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 40,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            setState(() {
                              selectSizeIndex = index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            alignment: Alignment.center,
                            child: Text(
                              '${index + 1}',
                              style: TextStyle(
                                color: selectSizeIndex == index
                                    ? const Color(0xFFFF6969)
                                    : const Color(0xFF727C8E),
                              ),
                            ),
                          ),
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                        itemCount: 6,
                      ),
                    ),
                  ],
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 20,
                  runAlignment: WrapAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BRAND',
                          style: TextStyle(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.5),
                          ),
                        ),
                        Text(
                          'Lily’s Ankle Boots',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'SKU',
                          style: TextStyle(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.5),
                          ),
                        ),
                        Text(
                          '0590458902809',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CONDITION',
                          style: TextStyle(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.5),
                          ),
                        ),
                        Text(
                          'Brand New, With Box',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'MATERIAL',
                          style: TextStyle(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.5),
                          ),
                        ),
                        Text(
                          'Faux Sued, Velvet',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CATEGORY',
                          style: TextStyle(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.5),
                          ),
                        ),
                        Text(
                          'Women Shoes',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'FITTING',
                          style: TextStyle(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.5),
                          ),
                        ),
                        Text(
                          'True To Size',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ListView.separated(
                  itemCount: 2,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Text(
                          '10 Oct, 2018',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 30,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: List.generate(
                                    5,
                                    (index) => Icon(
                                      Icons.star,
                                      color: index < 4
                                          ? Theme.of(context).highlightColor
                                          : Theme.of(context).backgroundColor,
                                      size: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  'Jane Doe',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(
                                        fontSize: 15,
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                    maxLines: 3,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SizedBox(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width - 120,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, index) =>
                                        Image.asset(
                                      'assets/images/ayakkabi.png',
                                      height: 20,
                                    ),
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                      width: 20,
                                    ),
                                    itemCount: 6,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 30,
                    );
                  },
                ),
              ],
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: false,
                disableCenter: true,
                viewportFraction: 1,
                enlargeCenterPage: false,
                aspectRatio: 1.6,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductImagesView extends StatefulWidget {
  const ProductImagesView({Key? key}) : super(key: key);

  @override
  State<ProductImagesView> createState() => _ProductImagesViewState();
}

class _ProductImagesViewState extends State<ProductImagesView> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) => GestureDetector(
              onTap: () => _controller.animateToPage(index),
              child: Container(
                width: 5.0,
                height: 5.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(
                    _current == index ? 0.9 : 0.4,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        CarouselSlider(
          items: [
            Image.asset('assets/images/ayakkabi.png'),
            Image.asset('assets/images/ayakkabi.png'),
            Image.asset('assets/images/ayakkabi.png'),
          ],
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ],
    );
  }
}
