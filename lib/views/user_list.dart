import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_tile.dart';
import 'package:flutter_crud/providers/users.dart';
import 'package:flutter_crud/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context); //{...DUMMY_USERS};

    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Usuários'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
                  // users.put(User(
                  //   name: 'Teste',
                  //   email: 'email@email.com',
                  //   avatarUrl: '',
                  // ));
                  // users.remove(users.byIndex(0));
                })
          ],
        ),
        body: ListView.builder(
            itemCount: users.count,
            itemBuilder: (ctx, i) => UserTile(users.byIndex(i))));
  }
}
