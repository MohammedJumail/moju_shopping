import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search product',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),
            actions: [
              Badge(
                child: IconButton(
                  icon: Icon(Icons.notifications, color: Colors.grey),
                  onPressed: () {},
                ),
                label: Text("3"),
                alignment: Alignment(0, -0.7),
                
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.grey),
                onPressed: () {},
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 55, 0, 132),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'A Summer Surprise',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Cashback 20%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildIconButton(Icons.flash_on, 'Flash Deal'),
                      buildIconButton(Icons.receipt, 'Bill'),
                      buildIconButton(Icons.videogame_asset, 'Game'),
                      buildIconButton(Icons.card_giftcard, 'Daily Gift'),
                      buildIconButton(Icons.more_horiz, 'More'),
                    ],
                  ),
                  SizedBox(height: 30),

                  // Special for You Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Special for You",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See More',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildSpecialCard(
                            'Cars', '18 Brands', 'assets/images/image.png'),
                        buildSpecialCard('Smart Phones', '24 Brands',
                            'assets/images/image.png'),
                        buildSpecialCard('Smart Phones', '10 Brands',
                            'assets/images/image.png'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Popular Product Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Products",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See More',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildProductCard(
                            'G 63', '\$10,000', 'assets/images/image.png'),
                        buildProductCard('Iphone 17', '\$1299',
                            'assets/images/image.png'),
                        buildProductCard('Dreams', 'Priceless',
                            'assets/images/image.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Color.fromARGB(255, 55, 0, 132),
                ),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Color.fromARGB(255, 55, 0, 132),
                ),
                label: "favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline_outlined,
                  color: Color.fromARGB(255, 55, 0, 132),
                ),
                 label: "comment",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                  color: Color.fromARGB(255, 55, 0, 132),
                ),
                label: "profile",
              ),
            ],
          ),
        ));
  }

  Widget buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.orange[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: Colors.orange),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  
  Widget buildSpecialCard(String title, String subtitle, String path) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 16, left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
Widget buildProductCard(String title, String subtitle, String path) {
    return Column(
      children: [
        Container(
          width: 200,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Image(image: AssetImage(path))),
        ),
        Container(
          width: 200,
          margin: EdgeInsets.all(0),
          child:
          Column(
            children:[
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                ),
              ),
            ],
          ),)
      ],
    )
    ;
  }

}
