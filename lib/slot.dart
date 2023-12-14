import 'package:flutter/material.dart';

class SelectSlotPage extends StatefulWidget {
  @override
  _SelectSlotPageState createState() => _SelectSlotPageState();
}

class _SelectSlotPageState extends State<SelectSlotPage> {
  String selectedSlot = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Slot'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/road.jpg'), // Change this to your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  // Only allow clicks on the 1st and 3rd columns
                  if (index % 3 == 0 || index % 3 == 2) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedSlot = 'A-${index + 1}';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: selectedSlot == 'A-${index + 1}'
                            ? Image.asset('assets/images/car1.png')
                            : null,
                      ),
                    );
                  } else {
                    // Empty container for the 2nd column
                    return Container();
                  }
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity, // Set the width to occupy the entire screen width
              child: ElevatedButton(
                onPressed: selectedSlot != null
                    ? () {
                  // Proceed to next page with selected slot
                }
                    : null,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20), // Adjust the padding as needed
                ),
                child: Text('Proceed with spot ($selectedSlot)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
