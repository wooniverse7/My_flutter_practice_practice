import 'package:flutter/material.dart';
import 'screens/feed_screen.dart';
import 'screens/profile_screens.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
//상태변화가 생길때마다 재생성되어 애니메이션처럼 보인다.
}

class _HomePageState extends State<HomePage> {
  List<BottomNavigationBarItem> btmNavItems = [
    BottomNavigationBarItem(icon:Icon(Icons.home), title: Text('')),
    BottomNavigationBarItem(icon:Icon(Icons.search), title: Text('')),
    BottomNavigationBarItem(icon:Icon(Icons.run_circle_outlined), title: Text('')),
    BottomNavigationBarItem(icon:Icon(Icons.healing), title: Text('')),
    BottomNavigationBarItem(icon:Icon(Icons.clean_hands), title: Text('')),
  ];

  int _selectedIndex = 0;

  static List<Widget> _screens = <Widget>[
    FeedScreen(),
    Container(color: Colors.amberAccent,),
    Container(color: Colors.blueAccent,),
    Container(color: Colors.greenAccent,),
    ProfileScreens(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(//홉 하단에 아이콘 생성
        showSelectedLabels: false,  //선택된 레이블의 아이콘을 보여줄것이냐
        showUnselectedLabels: false,
        items: btmNavItems,
        unselectedItemColor: Colors.orangeAccent,
        selectedItemColor: Colors.black54,
        currentIndex: _selectedIndex,
        onTap: _onBtmItemClick,
      ),
    );
  }

  void _onBtmItemClick(int index){
    print(index);
    setState(() {//오직 state클래스 안에서만 사용
      _selectedIndex = index;
    });

  }
}

