import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Flexible(
            flex: 6,
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Stack(
                children: [
                  Positioned(
                    right: _width * 0.1,
                    top: _height * 0.05,
                    child: Image.asset(
                      'assets/top_item.png',
                      height: 37,
                      width: 50,
                    ),
                  ),
                  Positioned(
                    bottom: 35,
                    child: SizedBox(
                      width: _width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/fruit_busked.png',
                              height: _height * 0.40,
                            ),
                            const SizedBox(height: 8),
                            Image.asset(
                              'assets/bottom_item.png',
                              // width: _width * 0.80,
                              height: _height * 0.020,
                            ),
                            // const SizedBox(height: 35),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 10),
                      Text('Get The Freshest Fruit Salad Combo', textAlign: TextAlign.left, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff27214D))),
                      SizedBox(height: 10),
                      Text("We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                          textAlign: TextAlign.left, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff5D577E))),
                    ],
                  ),
                  // const SizedBox(height: 40),
                  //
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(16),
                          minimumSize: Size(_width * 0.8, 60)),
                      child: const Text("Let's Continue"),
                    ),
                  ),
                  // const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
