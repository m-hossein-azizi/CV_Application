import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.red,
      title: Text('حسین عزیزی  '),
      centerTitle: true,
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          _getMainContent()
        ],
      ),
    );
  }

  Widget _getMainContent() {
    return Column(
      children: [
        _getHeader(),
        SizedBox(height: 12),
        _getRowIcon(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getResume()
      ],
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(height: 20),
        CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            radius: 70),
        SizedBox(height: 15),
        Text(
          'محمد حسین عزیزی',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 15),
        Text(
          'علاقه مند به برنامه نویسی موبایل و فریمورک جذاب فلاتر',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _getRowIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.instagramSquare),
            color: Colors.blueGrey),
        IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.linkedin),
            color: Colors.blueGrey),
        IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.telegram),
            color: Colors.blueGrey),
        IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.githubSquare),
            color: Colors.blueGrey),
      ],
    );
  }

  Widget _getSkillCards() {
    var List = ['flutter', 'android', 'kotlin', 'java', 'dart'];
    return Wrap(
      children: [
        for (var skill in List)
          Card(
            elevation: 6,
            child: Column(
              children: [
                Container(
                  height: 80,
                  child: Image(
                    image: AssetImage('assets/images/$skill.png'),
                    width: 60,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('$skill'),
                )
              ],
            ),
          )
      ],
    );
  }

  Widget _getResume() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        color: Colors.grey[200],
        child: Column(
          children: [
            Text(
              'سابقه کاری من',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            _getHistoryColumn()
          ],
        ));
  }

  Widget _getHistoryColumn() {
    var List = [
      'دانشجوی ارشد مهندسی کامپیوتر گرایش نرم افزار',
      'دانشگاه آزاد واحد علوم تحقیقات'
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(width: double.infinity, height: 20),
        for (var title in List)
          Text(
            title,
            textDirection: TextDirection.rtl,
          )
      ],
    );
  }
}
