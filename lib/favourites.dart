import 'package:flutter/material.dart';
import 'package:monsoonapp2/home.dart';
import 'package:monsoonapp2/profile.dart';
import 'package:monsoonapp2/search_screen.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 210, 209),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 420,
              height: 57,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'My Favourites',
                      style: TextStyle(
                        color: Color(0xFF480460),
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: 0.75,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 25,
            top: 90,
            child: _buildItem('assets/images/image 36.png'),
          ),
          Positioned(
            left: 290, // Adjusted left attribute
            top: 90, // Same top attribute
            child: _buildItem('assets/images/image 36.png'),
          ),
          Positioned(
            left: 155,
            top: 220,
            child: _buildItem('assets/images/Rectangle 35.png'),
          ),
          Positioned(
            left: 290,
            top: 220,
            child: _buildItem('assets/images/Rectangle 35.png'),
          ),
          Positioned(
            left: 25,
            top: 345,
            child: _buildItem('assets/images/Rectangle 35.png'),
          ),
          Positioned(
            left: 155,
            top: 345,
            child: _buildItem('assets/images/Rectangle 35.png'),
          ),
          Positioned(
            left: 25,
            top: 470,
            child: _buildItem('assets/images/image 36.png'),
          ),
          Positioned(
            left: 155,
            top: 470,
            child: _buildItem('assets/images/image 36.png'),
          ),
          Positioned(
            left: 290,
            top: 470,
            child: _buildItem('assets/images/image 36.png'),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
  child: Container(
    width: 370,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(50),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: _buildIcon('assets/images/Home.png'),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchScreen()),
            );
          },
          child: _buildIcon('assets/images/Search (1).png'),
        ),
        GestureDetector(
          onTap: () {
            // Handle onTap for the third icon (Love)
            // Navigate to the Love page or perform any other desired action
          },
          child: _buildIcon('assets/images/Love.png'),
        ),
        GestureDetector(
          onTap: () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          },
          child: _buildIcon('assets/images/User.png'),
        ),
      ],
    ),
  ),
),

    );
  }

  Widget _buildIcon(String imagePath) {
    return Image.asset(
      imagePath,
      width: 24,
      height: 24,
      // You can add more customization here if needed
    );
  }

  Widget _buildItem(String imagePath) {
    return Container(
      width: 105,
      height: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
