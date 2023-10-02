import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orangeAccent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text('ConnectNGO', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.person, size: 26),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12,
                      ),
                      child: const Icon(Icons.person,
                          size: 60, color: Colors.black)),
                  const Text(
                    'Karan Chaudhary', // Replace with the user's name
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.black),
              title: const Text('Home'),
              onTap: () {
                // Navigate to the Home screen
                Navigator.pop(context);
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_on, color: Colors.black),
              title: const Text("Locate NGO's"),
              onTap: () {
                // Navigate to the Locate NGO's screen
                Navigator.pop(context);
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: const Icon(Icons.monetization_on, color: Colors.black),
              title: const Text('Your Donations'),
              onTap: () {
                // Navigate to Your Donations screen
                Navigator.pop(context);
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.black),
              title: const Text('About Us'),
              onTap: () {
                // Navigate to the About Us screen
                Navigator.pop(context);
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.black),
              title: const Text('Log Out'),
              onTap: () {
                // Perform log out action here
                Navigator.pop(context);
                // Add your log out logic here
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Welcome to Food Donation',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: 200,
                child: Lottie.asset('assets/lottie/home_page.zip')),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.orangeAccent),
              child: Column(
                children: [
                  const SizedBox(height: 14),
                  const Text(
                    'Want To Share Food?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Choose any one',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/donate');
                        },
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/food_icon.jpg'),
                              radius: 50,
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Donate',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Donate your food',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'for needy',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/ngo_agent');
                        },
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage('assets/images/food_rider.jpg'),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'NGO Agent',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Food pickup and',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'deliver',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: const Column(
                      children: [
                        Text(
                          'I Need Some Food',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Contact Us if you see a Needy Person',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.orangeAccent),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
