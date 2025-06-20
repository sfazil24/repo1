import 'package:flutter/material.dart';
class Topic extends StatelessWidget {
  const Topic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
children: [
Row(
children: [
Container(
height: 200,
width: 160,
decoration: BoxDecoration(
border: Border.all(),
borderRadius: BorderRadius.circular(15)
),
child: Column(
children: [
Container(
height: 160,
width: 160,
decoration: BoxDecoration(
// border: Border.all(),
borderRadius: BorderRadius.only(
topLeft: Radius.circular(15),
topRight: Radius.circular(15),
),
image: DecorationImage(
image: AssetImage("assets/email.jpeg"),
fit: BoxFit.fill
)
),
),
Text("ABC")
],
),
),
Container(
height: 200,
width: 160,
decoration: BoxDecoration(
border: Border.all(),
borderRadius: BorderRadius.circular(15)
),
child: Column(
children: [
Container(
height: 160,
width: 160,
decoration: BoxDecoration(
// border: Border.all(),
borderRadius: BorderRadius.only(
topLeft: Radius.circular(15),
topRight: Radius.circular(15),
),
image: DecorationImage(
image: AssetImage("assets/email.jpeg"),
fit: BoxFit.fill
)
),
),
Text("ABC")
],
),
),


],
),
Container(
height: 350,
width: 400,
decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/email.jpeg'),
fit: BoxFit.fill)
),
child: Column(
children: [
Row(
children: [
Container(
height: 160,
width: 160,
decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/email.jpeg'),
fit: BoxFit.fill)
),
),
Column(
children: [
Row(
children: [
Container(
height: 60,
width: 60,
decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/email.jpeg'),
fit: BoxFit.fill)
),
),
Padding(
padding: const EdgeInsets.all(8.0),
child: Container(
height: 60 ,
width: 60,
decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/email.jpeg'),
fit: BoxFit.fill)
),
),
),



],
),
Row(
children: [
Container(
height: 60 ,
width: 60,
decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/email.jpeg'),
fit: BoxFit.fill)
),
),
Container(
height: 60 ,
width: 60,
decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/email.jpeg'),
fit: BoxFit.fill)
),
),
],
),

],
)

],
),
Row(
children: [
Column(
children: [
Row(
children: [
Container(
height: 60 ,
width: 60,
decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/email.jpeg'),
fit: BoxFit.fill)
),
),
Container(
height: 60 ,
width: 60,
decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/email.jpeg'),
fit: BoxFit.fill)
),
),
],
),
Row(
children: [
Container(
height: 60 ,
width: 60,
decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/email.jpeg'),
fit: BoxFit.fill)
),
),
Container(
height: 60 ,
width: 60,
decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/email.jpeg'),
fit: BoxFit.fill)
),
),
],
)
],
),
Container(
height: 180,
width: 200,
decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/email.jpeg'),
fit: BoxFit.fill)
),
)
],
)
],
)

)
],
),
);




}
}
