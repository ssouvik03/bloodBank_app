import 'package:app_dev_tut/HomepageList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(MaterialApp(
  home : Home(),
));


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'B L O O D  B A N K',
          style: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.bold)
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent[200],
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                //Profile
              },
              icon: const Icon(Icons.person_3),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.grey[300]),
      ),

      drawer: NavigationDrawer(),


      body: Container(
        color: Colors.grey[300],
        child: ListView(
          children: [
            HomeList1(),
            HomeList(),
            HomeList(),
          ],
        ),
      ),


     floatingActionButton: SpeedDial(
       backgroundColor: Colors.redAccent[100],
       overlayColor: Colors.black12,
       overlayOpacity: 0.4,
       icon: Icons.bloodtype_rounded,
       elevation: 5,
       buttonSize: Size(75, 75),
       activeIcon: Icons.close,
       animationDuration: Duration(milliseconds: 350),
       spacing: 8,
       spaceBetweenChildren: 22,
       childMargin: EdgeInsets.symmetric(horizontal: 15),
       children: [
         SpeedDialChild(
           label: 'R E C E I V E',
           labelBackgroundColor: Colors.green[500],
           labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.5, color: Colors.white,),
           onTap: () {},
         ),
         SpeedDialChild(
           label: 'D O N A T E',
           labelBackgroundColor: Colors.redAccent[200],
           labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white,),
           onTap: (){},
         ),
       ],
     ),
    );
  }
}


//Navigation Drawer on the top left corner
class NavigationDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenu(context),
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    color: Colors.redAccent[100],
    padding: EdgeInsets.only(
      top: 24 + MediaQuery.of(context).padding.top,
      bottom: 24,
    ),
    child: const Column(
      children: [
        CircleAvatar(
          radius: 65,
          //backgroundImage: NetworkImage(url),
          child: Image(image: NetworkImage('https://www.indianredcross.org/ircs/sites/default/files/inline-images/INDIAN%20RED%20CROSS%20SOCIETY%20BL%20LOGO.PNG')),
        ),
        SizedBox(height: 20),
        Text(
          'INDIAN RED CROSS SOCIETY',
          style: TextStyle(fontWeight: FontWeight.bold,),
        ),
        Text(
          'West Bengal',
          style: TextStyle(fontWeight: FontWeight.bold,),
        ),
      ],
    ),
  );

  Widget buildMenu(BuildContext context) => Container(
    padding: const EdgeInsets.all(34),
    child: const Wrap(
      children: [
        ListTile(
          leading: Icon(Icons.web_rounded),
          title: Text(
            'WEB PAGE',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            )
          ),
        ),
        ListTile(
          leading: Icon(Icons.call),
          title: Text(
              'CONTACT',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              )
          ),
        ),
        ListTile(
          leading: Icon(Icons.reddit),
          title: Text(
              'SOCIALS',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              )
          ),
        ),
        ListTile(
          leading: Icon(Icons.event_available),
          title: Text(
              'EVENTS',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              )
          ),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text(
              'GALLERY',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              )
          ),
        ),
      ],
    )
  );
}


class NavigationDrawer2 extends StatelessWidget {
  const NavigationDrawer2({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: Container(
      color: Colors.redAccent[100],
      child: ListView(
        children: const [
          DrawerHeader(
              child: Center(
                child: Text('Indian Red Cross Society', style: TextStyle(fontSize: 20, color: Colors.white70)),
              ),
          ),
          ListTile(
            leading: Icon(Icons.web_rounded),
            title: Text(
                'Web Page',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                )
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone_android_outlined),
            title: Text(
                'Contact',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                )
            ),
          ),
          ListTile(
            leading: Icon(Icons.reddit),
            title: Text(
                'Socials',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                )
            ),
          )
        ],
      ),
    ),

  );
}



