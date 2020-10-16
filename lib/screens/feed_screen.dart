import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app01_practice/Widgets/Post.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //StatefullWidget의 기능 사용허가
      appBar: CupertinoNavigationBar(
        leading: IconButton(
          onPressed: null,
          icon:Icon(CupertinoIcons.photo_camera_solid, color: Colors.black87)
        ),
        middle: Text(
          'Walkie',
          style: TextStyle(fontFamily: 'veganStyle', color: Colors.black87,),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
                onPressed: null,
            icon: ImageIcon(
              AssetImage('assets/images/actionbar_camera.png'),
              color: Colors.black87
            )
            )
          ],
        )
      ),
      body: ListView.builder(itemBuilder: feedListBuilder, itemCount: 30,),
    );
  }
    Widget feedListBuilder(BuildContext context, int index){
    return Post(index);
  }
}



