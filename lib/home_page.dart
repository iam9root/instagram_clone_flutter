import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final FirebaseUser user;
  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Clone',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildbody(),
    );
  }

  Widget _buildbody() {
  return Padding(
    padding:EdgeInsets.all(8.0),
    child: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Instagram에 오신 것을 환영합니다',
              style: TextStyle(fontSize: 24.0)),
              Padding(padding: EdgeInsets.all(8.0)),
              Text('사진과 동영상을 보려면 팔로우하세요'),
              Padding(padding: EdgeInsets.all(16.0)),
              SizedBox(
                width: 260.0,
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(1.0)),
                        SizedBox(
                          width: 80.0,
                          height: 80.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(user.photoUrl),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8.0)),
                        Text(user.email, style: TextStyle(fontWeight:  FontWeight.bold),),
                        Text(user.displayName),
                        Padding(padding: EdgeInsets.all(8.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network('https://previews.123rf.com/images/thawats/thawats1411/thawats141100344/33943823-%EC%95%84%EB%A6%84-%EB%8B%A4%EC%9A%B4-%ED%91%B8%EB%A5%B8-%EB%82%98%EB%B9%84%EC%97%90-%EA%B2%A9%EB%A6%AC-%EB%90%9C-%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EB%B9%84%ED%96%89.jpg', fit: BoxFit.cover,),
                            ),
                            Padding(padding: EdgeInsets.all(1.0)),
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network('https://previews.123rf.com/images/thawats/thawats1411/thawats141100344/33943823-%EC%95%84%EB%A6%84-%EB%8B%A4%EC%9A%B4-%ED%91%B8%EB%A5%B8-%EB%82%98%EB%B9%84%EC%97%90-%EA%B2%A9%EB%A6%AC-%EB%90%9C-%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EB%B9%84%ED%96%89.jpg', fit: BoxFit.cover,),
                            ),
                            Padding(padding: EdgeInsets.all(1.0)),
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network('https://previews.123rf.com/images/thawats/thawats1411/thawats141100344/33943823-%EC%95%84%EB%A6%84-%EB%8B%A4%EC%9A%B4-%ED%91%B8%EB%A5%B8-%EB%82%98%EB%B9%84%EC%97%90-%EA%B2%A9%EB%A6%AC-%EB%90%9C-%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EB%B9%84%ED%96%89.jpg', fit: BoxFit.cover,),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                        Text('Facebook 친구'),
                        Padding(padding: EdgeInsets.all(4.0)),
                        RaisedButton(
                          child: Text('팔로우'),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          onPressed: (){},
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                      ],
                    ),
                  ),
                ),
              )

            ],

          ),
        ),
      ),
    ),
  );
  }
}

