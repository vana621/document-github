import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.star_border),
              color: Colors.black,
              onPressed: () {
                print("Contact is starred");
              },
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 350,
                  child: Image.asset('../images/pet.jpg'),
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Vana",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Adding Profile action items
                      buildCallButton(),
                      buildTextButton(),
                      buildVideoCallButton(),
                      buildEmailButton(),
                      buildDirectionsButton(),
                      buildPayButton(),
                    ],
                  ),
                ),
                //Divider to separate action items section
                Divider(
                  color: Colors.grey,
                ),

                //Adding Phone numbers items
                mobilePhoneListTile(),
                otherPhoneListTile(),

                //Divider to separate out phone numbers section
                Divider(
                  color: Colors.grey,
                ),

                //NEW CODE: Email address item
                emailListTile(),

                //NEW CODE: Divider to separate physical address
                Divider(
                  color: Colors.grey,
                ),

                //NEW CODE: Contact's home address item
                addressListTile(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //Adding "call" action item
  Widget buildcallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.call,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {
            print("call");
          },
        ),
        Text("call"),
      ],
    );
  }

  //Adding "text" action item
  Widget buildtextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.message,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("text"),
      ],
    );
  }

  //Adding "Video" action item
  Widget buildVideoCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.video_call,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Video"),
      ],
    );
  }

  //Adding "Email" action item
  Widget buildEmailButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.email,
            color: Color.fromARGB(255, 147, 88, 40),
          ),
          onPressed: () {},
        ),
        Text("pay"),
      ],
    );
  }

  //Adding "Directions" action item
  Widget buildDirectionsButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.directions,
            color: const Color.fromARGB(229, 0, 0, 0).shade800,
          ),
          onPressed: () {},
        ),
        Text("Directions"),
      ],
    );
  }

  //Adding "Pay" action item
  Widget buildPayButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.attach_money,
            color: const Color.fromARGB(255, 157, 37, 89),
          ),
          onPressed: () {},
        ),
        Text("Email"),
      ],
    );
  }

  //Adding "Mobile Phone Number" item
  Widget mobilePhoneListTile() {
    return ListTile(
      leading: Icon(Icons.call),
      title: Text("340-678-5678"),
      subtitle: Text("mobile"),
      trailing: IconButton(
        icon: Icon(Icons.message),
        color: const Color.fromARGB(201, 255, 153, 0),
        onPressed: () {},
      ),
    );
  }

  //Adding "Other Phone Number" item
  Widget otherPhoneListTile() {
    return ListTile(
      leading: Icon(Icons.call),
      title: Text("670-940-3390"),
      subtitle: Text("other"),
      trailing: IconButton(
        icon: Icon(Icons.message),
        color: const Color.fromARGB(255, 181, 130, 189),
        onPressed: () {},
      ),
    );
  }

  //NEW CODE: Adding "Email Address" item
  Widget emailListTile() {
    return ListTile(
      leading: Icon(Icons.email),
      title: Text("bkvanajakshi138@gmail.com"),
      subtitle: Text("work"),
    );
  }

  //NEW CODE: Adding Contact's home address
  Widget addressListTile() {
    return ListTile(
      leading: Icon(Icons.location_on),
      title: Text("234 Sunset St, California"),
      subtitle: Text("home"),
      trailing: IconButton(
        icon: Icon(Icons.directions),
        color: Colors.indigo.shade500,
        onPressed: () {},
      ),
    );
  }
}
