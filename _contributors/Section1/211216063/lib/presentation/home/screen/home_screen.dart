import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/presentation/home/widget/home_search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 192, 230),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color.fromARGB(255, 215, 192, 230),
        selectedItemColor: Color.fromARGB(255, 43, 4, 82),
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 29, 8, 74),
        leading: Icon(Icons.person),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text('Building Architecture'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Icon(Icons.notification_add),
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => _infoList(
                context,
              )[index],
          separatorBuilder: (context, index) => SizedBox(height: 18),
          itemCount: _infoList(context).length),
    );
  }

  List<Widget> _infoList(BuildContext context) => [
        SizedBox(),
        homeSearchField(),
        _containertwo(),
        _container(),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Ads',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 43, 4, 82)),
              ),
              TextButton(
                onPressed: () {
                  print('tıklanıldı');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 43, 4, 82),
                ),
                child: Text('Other'),
              )
            ],
          ),
        ),
        SizedBox(
          height: 300,
          width: 200,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: ((context, index) => _listviewbuildercontent3()),
          ),
        ),
      ];

  Padding _listviewbuildercontent3() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [_container3(), _container4()],
      ),
    );
  }

  Container _container() {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.network(
              'http://cdn.home-designing.com/wp-content/uploads/2015/11/glass-house-with-pool.jpg',
              width: double.infinity,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 10,
                ),
                child: Text(
                  'Miami, Florida, United States',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      'Emmy Evanson ',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      '3 Octember 2022',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Container _containertwo() {
    return Container(
      height: 170,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              'https://www.villapaketi.com/upload/slider.png',
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38.0, left: 10),
                child: Text(
                  'Fort Lauderdale, Florida, USA',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      'Anastasiia Morozova ',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      '29 Octember 2022',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Padding _container3() {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 5, left: 0),
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Image.network(
                'https://www.themilliardaire.com/en/wp-content/uploads/2014/05/hornung-jacobi-architecture-villa-f-9.jpg',
                width: double.maxFinite,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0, left: 10),
                  child: Text(
                    'Hollywood, Florida, USA',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'Ekaterina Morozova ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        '12 November 2022',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding _container4() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Image.network(
                'https://static.dezeen.com/uploads/2021/12/studio-seilern-architects-paros-house-greece-residential-architecture_dezeen_2364_col_9.jpg',
                width: double.maxFinite,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 20),
                  child: Text(
                    'Harrison Street, Hollywood, Florida, USA',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'Irina Pche ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text(
                        '14 November 2022',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
