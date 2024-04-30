import 'package:calculos/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class HomeScreen extends StatelessWidget {

  static const name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Operaciones Aritméticas'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: appMenuItems.length,
            itemBuilder: (context, index) {
              final menuItem = appMenuItems[index];
              return _CustomListTile(menuItem: menuItem);
            },
          ),
        ),
        Image.asset('assets/images/480.png')
      ],
    );
  }
}


class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Card(
            child: ListTile(
              leading: Icon(menuItem.icon, color: colors.primary),
              trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
              title: Text(menuItem.title),
              onTap: () {
                context.push(menuItem.link);
              },
            ),
          ),
        ],
      ),
    );
  }
}
