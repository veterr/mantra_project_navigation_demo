import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum {
  Activity1lightgreen300,
  Compas1,
  Settings,
  Notificationbellsvgrepocom
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgActivity1LightGreen300,
      activeIcon: ImageConstant.imgActivity1LightGreen300,
      type: BottomBarEnum.Activity1lightgreen300,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCompas1,
      activeIcon: ImageConstant.imgCompas1,
      type: BottomBarEnum.Compas1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSettings,
      activeIcon: ImageConstant.imgSettings,
      type: BottomBarEnum.Settings,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNotificationBellSvgrepoCom,
      activeIcon: ImageConstant.imgNotificationBellSvgrepoCom,
      type: BottomBarEnum.Notificationbellsvgrepocom,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.5),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 36.adaptSize,
              width: 36.adaptSize,
              color: appTheme.gray80001,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 40.adaptSize,
              width: 40.adaptSize,
              color: appTheme.lightGreen300,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          // TODO а что это означает?
          widget.onChanged?.call(bottomMenuList[index].type);
          if (bottomMenuList[index].type ==
              BottomBarEnum.Notificationbellsvgrepocom) {
            NavigatorService.pushNamed(AppRoutes.news1Screen, context);
          }
          setState(() {});
        },
      ),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.activeIcon, required this.type});

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
