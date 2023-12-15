import 'package:flutter/material.dart';
import 'package:my_app/User/bloc/bloc_user.dart';
import 'package:my_app/User/ui/widgets/user_info.dart';
import 'package:my_app/User/ui/widgets/buttons_bar.dart';

class ProfileHeader extends StatelessWidget {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {

    final title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0
      ),
    );

    return Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              title
            ],
          ),
          UserInfo('assets/img/user.png', 'User Predeterminado','user@predeterminado.com'),
          ButtonsBar()
        ],
      ),
    );
  }

}