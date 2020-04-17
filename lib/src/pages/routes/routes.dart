import 'package:flutter/material.dart';

import '../home_page.dart';
import '../alert_data.dart';
import '../avatar_page.dart';
import '../card_page.dart';
import '../animated_container.dart';
import '../input_page.dart';
import '../listview_page.dart';
import '../slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'list': (BuildContext context) => ListaPage(),
    'slider': (BuildContext context) => SliderPage(),
  };
}
