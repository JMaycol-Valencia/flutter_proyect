import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:my_app/User/bloc/bloc_user.dart';
import 'Anime/ui/screens/home_trips.dart';
import 'Anime/ui/screens/search_trips.dart';
import 'package:my_app/User/ui/screens/profile_trips.dart';
import 'erro404.dart';

class AppTripsIos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  label: " "
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
                  label: " "
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  label: " "
              ),
            ]
        ),
        
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomesTrips(),
              );
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider<UserBloc>(
                    bloc: UserBloc(),
                    child: ProfileTrips());
                });
            default:
              return CupertinoTabView(
        builder: (BuildContext context) => Error404Widget(),
      );
          }

        },
      ),
    );
  }

}