import 'package:flutter/material.dart';

import 'package:second_flutter_app/src/pages/alert_page.dart';
import 'package:second_flutter_app/src/pages/animated_container.dart';
import 'package:second_flutter_app/src/pages/avatar_page.dart';
import 'package:second_flutter_app/src/pages/card_page.dart';
import 'package:second_flutter_app/src/pages/home_page.dart';
import 'package:second_flutter_app/src/pages/inputs_page.dart';
import 'package:second_flutter_app/src/pages/listview_page.dart';
import 'package:second_flutter_app/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputsPages(),
    'slider': (context) => SliderPage(),
    'list': (context) => ListViewsPage(),
  };
}
