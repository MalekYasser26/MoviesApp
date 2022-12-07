import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/BottomNav/BottomNavProvider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNav>(
        builder: (context,provider,_) {
          return Scaffold(
              bottomNavigationBar: BottomNavigationBar(items: provider.items,
                onTap: (newIndex) {
                  provider.changeIndex(index: newIndex);
                },
                currentIndex: provider.index,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.black,
                selectedItemColor: Colors.amber,
                unselectedItemColor: Colors.white,
              ) ,
              body:
              Provider.of<BottomNav>(context).screens[Provider.of<BottomNav>(context).index]

          );

        }
    );
  }
}
