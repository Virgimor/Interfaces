import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget{

  static const String name= 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
        centerTitle: false,
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget{
  const _HomeView();
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index){
        final item = appMenuItems[index];
        return CustomListTitle( menuItem: item
        );
      }
    );
  }
}


class CustomListTitle extends StatelessWidget{
  const CustomListTitle({super.key, required this.menuItem});
final MenuItems menuItem;
  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(menuItem.title),
      leading: Icon(menuItem.icon, color: colors.primary,),
      subtitle: Text(menuItem.subTitle),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      onTap: (){
        /*Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=> const ButtonsScreen()),
        );*/
        //Navigator.pushNamed(context, menuItem.link);
        //context.go(menuItem.name);
        //context.pushNamed(menuItem.name);
        context.push(menuItem.link);
      },
    );
  }
}