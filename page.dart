import 'package:flutter/material.dart';
class index1 extends StatelessWidget {
  const index1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        backgroundColor: Colors.indigo[900],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){},
        ),
          actions: [
            Icon(Icons.home),
      SizedBox(width: 16),
        ],
      ),
    body: Column(
    children: [
      ListTile(
        title: Text('Attendance Report'),
      leading: Icon(Icons.person),
      trailing: Icon(Icons.arrow_forward_ios_outlined),
      ),
      ListTile
        (title: Text('Mock interview'),
      leading: Icon(Icons.report),
        trailing: Icon(Icons.arrow_forward_ios_outlined),),
      ListTile
        (title: Text('payment'),
        leading: Icon(Icons.payment),
        trailing: Icon(Icons.arrow_forward_ios_outlined), ),
      ListTile
        (title: Text('Project'),
        leading: Icon(Icons.all_out),
        trailing: Icon(Icons.arrow_forward_ios_outlined),),
      ListTile
        (title: Text('Leave'),
        leading: Icon(Icons.holiday_village),
        trailing: Icon(Icons.arrow_forward_ios_outlined),),
      ListTile
        (title: Text('Notification'),
        leading: Icon(Icons.notifications),
        trailing: Icon(Icons.arrow_forward_ios_outlined), ),
    ElevatedButton(onPressed: (){}, child: Icon(Icons.login))
    ]
      
    ),
    );
  }
}
