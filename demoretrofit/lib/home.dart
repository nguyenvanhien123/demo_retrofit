import 'package:demoretrofit/service/constants_api.dart';
import 'package:demoretrofit/service/post_api_service.dart';
import 'package:demoretrofit/service/service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit Application',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          centerTitle: true,
          title: Text(
            'Posts',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: _buildBody(context),
      ),
    );
  }

  FutureBuilder<Services> _buildBody(BuildContext context) {
    final client = RestClient(Dio(BaseOptions(contentType: "application/json")),
        baseUrl: ConstantsApi.baseUrl);
    return FutureBuilder<Services>(
      future: client.getTasks(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final Services? posts = snapshot.data;
          return _buildPosts(context, posts!);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  ListView _buildPosts(BuildContext context, Services posts) {
    return ListView.builder(
      itemCount: posts.data!.list!.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: ListTile(
            title: Text(
              posts.data!.list![index].title.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(posts.data!.list![index].price.toString()),
          ),
        );
      },
    );
  }
}
