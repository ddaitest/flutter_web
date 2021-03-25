import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as FSP;
import 'package:worker_web/pages/edit_page.dart';

import 'common.dart';

const textStyle1 = TextStyle(color: Colors.white, fontSize: 14);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 1000,
            child: Column(
              children: [
                H20,
                _header(),
                _top(),
                _join(context),
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("imgs/bg.png"), fit: BoxFit.fill),
            ),
          ),
          Container(
            height: 200,
            color: Colors.blue,
            child: SvgPicture.asset('imgs/bg1.svg'),
          ),
          Container(
            height: 200,
            color: Colors.blue,
            child: SvgPicture.asset('imgs/bg1.svg'),
          ),
          Container(
            height: 200,
            color: Colors.blue,
            child: SvgPicture.asset('imgs/bg1.svg'),
          ),
        ],
      ),
    );
  }

  _header() {
    return Row(
      children: [
        W50,
        TextButton(
          onPressed: () {},
          child: Text(
            "首页",
            style: textStyle1,
          ),
        ),
        W50,
        TextButton(
          onPressed: () {},
          child: Text(
            "关于我们",
            style: textStyle1,
          ),
        ),
        W50,
        TextButton(
          onPressed: () {},
          child: Text(
            "联系我们",
            style: textStyle1,
          ),
        )
      ],
    );
  }

  _top() {
    return Container(
      width: 800,
      margin: EdgeInsets.only(top: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "就业推荐",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              H20,
              Text(
                "专注新加坡劳务推荐",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              H20,
              Text(
                "海外高薪工作推荐，安全，可靠。提供相关所有服务。",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
          Image.asset(
            "imgs/pic1.png",
            width: 300,
            height: 200,
          ),
        ],
      ),
    );
  }

  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();

  _join(BuildContext context) {
    return Container(
      width: 800,
      margin: EdgeInsets.only(top: 80),
      decoration: BoxDecoration(
        color: Color(0x33000000),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: TextFormField(
                controller: controllerName,
                decoration: InputDecoration(
                  labelText: '您的姓名',
                  border: OutlineInputBorder(),
                )),
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: TextFormField(
                controller: controllerPhone,
                decoration: InputDecoration(
                  labelText: '联系方式',
                  border: OutlineInputBorder(),
                )),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EditPage(),
                ),
              );
            },
            child: Container(
              width: 120,
              height: 50,
              child: Center(
                child: Text("联系我们"),
              ),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepOrangeAccent)),
          )
        ],
      ),
    );
  }
}
