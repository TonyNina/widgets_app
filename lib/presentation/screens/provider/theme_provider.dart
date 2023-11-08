

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


//provider inmulatble, listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//un simple booleano
final isDrakmodeProvider = StateProvider((ref) => false);


//un simple int
final selectedColorProvider  = StateProvider((ref) => 0);
