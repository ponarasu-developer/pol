import 'package:flutter/material.dart';



class Drawerwidget extends StatelessWidget {
  const Drawerwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

        //backgroundColor: Colors.transparent,
        child: Column(children: [
      UserAccountsDrawerHeader(
        decoration: const BoxDecoration(color: Colors.transparent),
        currentAccountPictureSize: const Size.square(130),
        otherAccountsPictures: [
          Image.asset(
            'assets/images/logo.png',
            repeat: ImageRepeat.noRepeat,
          ),
        ],
        currentAccountPicture: Image.asset(
          'assets/images/logo.png',
          repeat: ImageRepeat.noRepeat,
          height: 70,
        ),
        accountName: const FittedBox(
          fit: BoxFit.contain,
          child:  Text(
            "Francis Xavier polytechnic College",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        accountEmail: null,
      ),
      Column(
        children: [
          
          ListTile(
            iconColor: Colors.blueAccent,
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            //subtitle: Text(""),
            style: ListTileStyle.drawer,
            title: const Text(
              "Admission ",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onTap: () {
             Navigator.pop(context);
                      Navigator.pushNamed(context, '/AdmissionPage');
                     
            },
            leading: const Icon(Icons.inbox_rounded),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            //subtitle: Text(""),
            style: ListTileStyle.drawer,
            title: const Text(
              " Feed Back ",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onTap: () {
              Navigator.pop(context);
                      //NewFeedBackScreen

                      Navigator.pushNamed(context,  '/FeedBackScreen');
            },
            leading: const Icon(Icons.feedback_rounded),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            //subtitle: Text(""),
            style: ListTileStyle.drawer,
            title: const Text(
              " Leave & OD ",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/LeavePage');
            },
            leading: const Icon(Icons.calendar_month_rounded,)
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            //subtitle: Text(""),
            style: ListTileStyle.drawer,
            title: const Text(
              " course's ",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onTap: () {},
            leading: const Icon(Icons.collections_bookmark_rounded),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            iconColor: Colors.blueAccent,
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            //subtitle: Text(""),
            style: ListTileStyle.drawer,
            title: const Text(
              " About Us ",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onTap: () {},
            leading: const Icon(Icons.person),
          ),
          ListTile(
           
            leading: const CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/images/logo.png'),
              backgroundColor: Colors.transparent,
            ),
            //subtitle: Text(""),
            style: ListTileStyle.drawer,
            title: const Text(
              " My Profile ",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ),
          
        ],
      ),
    ]));
  }
}

 // final BuildContext context1 ;


