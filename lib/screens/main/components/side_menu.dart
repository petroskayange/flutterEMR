import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerListTile(
            title: "Administration",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Create User",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "View Users",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "System Settings",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Portal Settings",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Change Sesison Date ",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Change Password",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Print Location",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "View Duplicates",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Is This A Military Site",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Manage Registers",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "User Stats",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "View System Version",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Database Backup Path",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "View Database Backups",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "View User App Usage",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.black,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
