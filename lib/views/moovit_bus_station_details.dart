import 'package:flutter/material.dart';

class MoovitStationDetails extends StatelessWidget {
  const MoovitStationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.map),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          buildBlackContainer(context),
          buildBlueContainer(context),
          buildListViewBody(context),
          buildBottomContainer(),
        ],
      ),
    );
  }

  Widget buildBlackContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 100,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tikalbaug',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontSize: 20,
                ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
          ),
        ],
      ),
    );
  }

  Widget buildBlueContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      color: Colors.blue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'How do we get our schedules?',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontSize: 14,
                ),
          ),
          Text(
            'READ MORE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              fontWeight: FontWeight.w100,
            ),
          ),
          Spacer(),
          Icon(
            Icons.check_circle_sharp,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget buildListViewBody(BuildContext context) {
    return Container(
      height: 450,
      // color: Colors.red,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fixed timetables',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Published schedules for these routes',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Text(
                    'Select Time',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 380,
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            // color: Colors.amber,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Colors.white,
                  elevation: 4.0,
                  child: ListTile(
                    leading: Text('hi'),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottomContainer() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.blue),
            ),
            child: Text(
              'Select Time',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(width: 12),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.blue),
            ),
            child: Text(
              'Select Time',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
