class DrawerModel {
  String? address;
  String? name;
  String? image;
  DrawerModel({this.name, this.address, this.image});

  List<DrawerModel> drawerTile = [
    DrawerModel(name: "Home", address: "/Home", image: ""),
    DrawerModel(name: "Profile", address: '/Profile', image: ''),
    DrawerModel(name: "Notification", address: '/Notif', image: ''),
    DrawerModel(name: "Manage Favourites ", address: '/ManageFav', image: ''),
    DrawerModel(name: "Rate us", address: '/Rate', image: ''),
    DrawerModel(name: "contact us", address: '/Contact', image: ''),
    DrawerModel(name: "Refer", address: '/Refer', image: ''),
    DrawerModel(name: "Terms & Conditions", address: '/T&C', image: ''),
    DrawerModel(name: "Privacy Policy", address: '/PP', image: ''),
    DrawerModel(name: "Logout", address: '/Logout', image: ''),
  ];
}
