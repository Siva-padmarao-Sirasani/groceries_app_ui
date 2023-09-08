import 'package:flutter/material.dart';
void main() {
  runApp(
    const MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: const Order(),
      ),
    );
  }
}
class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black54,
              size: 30.0,
            ),
            Text(
                "Order #345",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.0),

                child: Text(
                  "Delivery Completed",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Text(
                  "6:30 p.m",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Icon(
              Icons.calendar_month_rounded,
              color: Colors.redAccent,
              size: 30.0,
            ),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "March 5,2019",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ),

          ],
        ),
        Row(
          children: [
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print("I got clicked");
                      });
                    },
                    child: const Text(
                      "Show Delivery Details",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print("I got pressed");
                      });
                    },
                    child: const Text(
                      "Show Full Package",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ),

          ],
        ),


        const Row(
          children: [Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),

              child: Text(
                "Delivery Man",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ],
        ),
       Row(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.tealAccent,
              backgroundImage: NetworkImage("https://media.istockphoto.com/id/1217702156/photo/asian-postman-deliveryman-wearing-mask-carry-small-box-deliver-to-customer-in-front-of-door.jpg?b=1&s=612x612&w=0&k=20&c=p5l8NigT_qGkJOYLoTm1q2e6ovDufIJBW0Zcvx2hZO8="),
            ),
            Column(
              children: [
                Text(
                        "Brandom Henry",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                    ),
                ),
               Text(
                 "(205) 555-0119",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   color: Colors.black54,
                   fontSize: 20.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
              ],
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: Icon(
                      Icons.call,
                      size: 50.0,
                      color: Colors.redAccent,

                  ),
                ),
            ),

          ],
        ),
        const Row(
          children: [
            Text(
              "Delivary Location",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
       const Row(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Icon(
                Icons.add_location,
                size: 50.0,
                color: Colors.black54,
              ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Floor 4 wakil Tower,Ta131 Gulshan "
                      "Badda Link Road",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: Text(
                "SubTotal",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Text(
                "BDT362",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: Text(
                "Delivery Charge",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Text(
                "BDT50",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: Text(
                "Total",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                child: Text(
                  "BDT412",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "Rating&Review",
            textAlign: TextAlign.left,
            style: TextStyle(
            color: Colors.black54,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
                    "4.5",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
            ),

            TextButton(
              onPressed: () {
                setState(() {
                  print("rating clicked");
                });

              },
              child: Text(
                "⍣  ⍣	⍣	⍣	⍣	",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "consecteter non accecuatet eu at eunm ipsumreprehendet proident gerume non baijk  essie errure estm irrue mollit velit",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
       Row(
          children: [
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text(
                      "Reorder Item",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color:  Colors.redAccent,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),
                ),
            ),
          ],
        ),

      ],
    );
  }
}

