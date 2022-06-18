import 'package:drawer/home.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
         child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Sampurna Giri"),
            accountEmail: Text("gireesam4@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.asset(
                "assets/profile.jpeg",
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              )),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://inteng-storage.s3.amazonaws.com/img/iea/XD6KjQJ2Gv/sizes/startup-hills-battery_resize_md.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.8), BlendMode.colorBurn)),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              size: 30,
               
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
              {
                return Homepage();
              }),);
            } ,
            title: Text("Home",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 81, 81, 81))),
          ),
          ListTile(
            leading: Icon(
              Icons.contact_page,
              size: 30,
            ),
            title: Text("Contact",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 81, 81, 81))),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications,
              size: 30,
            ),
            title: Text("Notification",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 81, 81, 81))),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              size: 30,
            ),
            title: Text("Favorites",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 81, 81, 81))),
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              size: 30,
            ),
            title: Text("Friends",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 81, 81, 81))),
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              size: 30,
            ),
            title: Text("Share",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 81, 81, 81))),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 30,
            ),
            title: Text("Settings",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 81, 81, 81))),
          ),
          Divider(
            color: Colors.grey,
            
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              size: 30,
            ),
            title: Text("Logout",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 81, 81, 81))),
          ),
        ],
      ),
      ),
     
    );
  }
}
