import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DonationFormScreen extends StatefulWidget {
  const DonationFormScreen({super.key});

  @override
  _DonationFormScreenState createState() => _DonationFormScreenState();
}

class _DonationFormScreenState extends State<DonationFormScreen> {
  String name = '';
  String aadhaarCardNo = '';
  double quantity = 0.0;
  String date = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text(
          'Donate Food Details',
          style: TextStyle(fontSize: 21, color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.person, size: 26),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 15.0),
            const Text('Name:'),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            const SizedBox(height: 20.0),
            const Text('Aadhaar Card No:'),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  aadhaarCardNo = value;
                });
              },
            ),
            const SizedBox(height: 20.0),
            const Row(
              children: <Widget>[
                Icon(Icons.access_time),
                SizedBox(width: 10),
                Text('Preferred Time:'),
              ],
            ),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  date = value;
                });
              },
            ),
            const SizedBox(height: 20.0),
            const Row(
              children: <Widget>[
                Icon(Icons.calendar_today),
                SizedBox(width: 10),
                Text('Date:'),
              ],
            ),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  date = value;
                });
              },
            ),
            const SizedBox(height: 20.0),
            const Text('Quantity:'),
            Slider(
              value: quantity,
              onChanged: (value) {
                setState(() {
                  quantity = value;
                });
              },
              min: 0,
              max: 10,
              divisions: 100,
              label: quantity.toStringAsFixed(2),
              activeColor: Colors.orange,
            ),
            const SizedBox(height: 20.0),
            const Text('Add Photos:'),
            const SizedBox(height: 20.0),
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Center(
                child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
