import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_popup_menulist/flutter_popup_menulist.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pos_massage_model_item/get_service_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<MenuItem> menuList = new List<MenuItem>();
  GetServiceController getServiceController = Get.put(GetServiceController());
  @override
  void initState() {
    getListProduct();
    super.initState();
  }

  Future<MenuItem> getListProduct() async {
    Map<String, String> headers = {
      'apiKey':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjowLjQxMzA3NDk2NzgyMjMxMjgsImlhdCI6MTU4NDQyOTAwOSwiZXhwIjoxNjcwODI5MDA5fQ.5RZBZtjorqEFiYUwg5a43tJini_MfFJ43YGBeYEBmsc',
      'Authorization':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlckNvZGVcIjpcIjUzN2E3NzQxLWJmMTktNDFlNC1iZmU1LTQ3NTQ2MDE1NDY3NFwiLFwic29jaWFsSWRcIjpudWxsLFwic29jaWFsVHlwZVwiOlwic3lzdGVtXCIsXCJ0eXBlQWNjb3VudFwiOm51bGwsXCJ1c2VybmFtZVwiOlwiOTMyODc5ODEzXCIsXCJmaXJzdE5hbWVcIjpcIk5nYVwiLFwibGFzdE5hbWVcIjpcIkh14buzbmggLSBUZXN0IFwiLFwiZW1haWxcIjpcIm5nYTE4MTA5NkBnbWFpbC5jb21cIixcImFkZHJlc3NcIjpcInRlc3QgXCIsXCJjb3VudHJ5Q29kZVwiOlwiKzg0XCIsXCJkb2JcIjpcIjIwMjAtMDUtMDFcIixcImlzTm90aWZpY2F0aW9uXCI6MSxcImFjdGl2ZVwiOjEsXCJnb29nbGVVcmxcIjpudWxsLFwiZmFjZWJvb2tVcmxcIjpudWxsLFwidWlkRmlyZUJhc2VcIjpudWxsLFwiYXZhdGFySW1hZ2VcIjpcImh0dHBzOi8vc3RvcmFnZS5nb29nbGVhcGlzLmNvbS9tYXNzcGEtZGV2LmFwcHNwb3QuY29tL2F2YXRhci81MzdhNzc0MS1iZjE5LTQxZTQtYmZlNS00NzU0NjAxNTQ2NzQvNTM3YTc3NDEtYmYxOS00MWU0LWJmZTUtNDc1NDYwMTU0Njc0XzE2MTc5NTU2NTA2MjQuanBnXCIsXCJtb2JpbGVcIjpcIjA5MzI4Nzk4MTM0XCIsXCJzZXhcIjoxLFwibmlja05hbWVcIjpudWxsLFwibG9naW5UaW1lXCI6MTYyMjYyNjYwMzM2OSxcImNyZWF0ZWRBdFwiOjE1NTgzNjEwMzg5NTEsXCJ1cGRhdGVkQXRcIjoxNjIyNjE5NTA3MzUwLFwicm9sZUlkXCI6e1wibG9naW5Gcm9udGVuZFwiOjEsXCJsb2dpbkFkbWluXCI6MSxcInJvbGVzXCI6W3tcInJvbGVcIjpcIm93bmVyU3BhXCIsXCJzZXJ2aWNlQ29kZVwiOlwiOWRmZTAxODAtMzAzOS0xMWVhLTg1YmItODE1Y2RmYjFjOWZiXCJ9LHtcInJvbGVcIjpcIm93bmVyU3BhXCIsXCJzZXJ2aWNlQ29kZVwiOlwiZjYzZGQ1MjAtZjhjMy0xMWVhLTk3MWEtZTM3ZTg1YjI5YTZlXCJ9XSxcInJvbGVcIjpcIm93bmVyU3BhXCIsXCJzZXJ2aWNlQ29kZVwiOlwiOWRmZTAxODAtMzAzOS0xMWVhLTg1YmItODE1Y2RmYjFjOWZiXCIsXCJzcGFOYW1lXCI6XCJOR09DIFNQQVwiLFwiYnJhbmNoQ29kZVwiOlwiY2M1ZDlkYWYtMzVkMi0xMWVhLTk2ZmItMDI0MmFjMTIwMDAzXCIsXCJicmFuY2hOYW1lXCI6XCJOR09DIFNQQVwifX0iLCJpYXQiOjE2MjI2MjY2NzYsImV4cCI6MTYyMzIzMTQ3Nn0.tyDG59xkSgpZUmaI13VNZR39opCcjMrugbAkKOmGFOQ',
      "Accept": "application/json",
      "Content-type": "application/json",
    };

    final response = await http.post(
      Uri.https('dev-api.masspa.vn',
          '/internal/api/secure/product_categories/getCategories'),
      headers: headers,
    );
    if (response.statusCode == 200) {
      List array = json.decode(response.body);
      array.forEach((item) {
        MenuItem menu = MenuItem.fromMap(item);
        menuList.add(menu);
        print(menu);
      });
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(''),
          ),
          body: MenuListPopupWidget(
            bodyWidget: Center(
              child: Text('test'),
            ),
            menuList: menuList,
            headerImageUrl:
                "https://img.alicdn.com/tfs/TB1EGGoLXXXXXcLXpXXXXXXXXXX-123-38.png",
            headerImageRatio: 3.236,
            headerImageFit: BoxFit.fitHeight,
            menuItemClick: (MenuItem item) {
              if (item.children == null || item.children.length == 0) {
                print('clicked : ${item.name}');
              }
            },
          )),
    );
  }
}
