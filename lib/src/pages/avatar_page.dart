import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 23.0,
              backgroundImage: NetworkImage(
                  'https://avatars1.githubusercontent.com/u/52962079?s=460&u=21ee27353473cb1fcdabd92633fa4b3833a6505e&v=4'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('P'),
              backgroundColor: Colors.black38,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://avatars1.githubusercontent.com/u/52962079?s=460&u=21ee27353473cb1fcdabd92633fa4b3833a6505e&v=4'),
          placeholder: AssetImage('assets/loading.gif'),
          fadeInDuration: Duration(milliseconds: 100),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
