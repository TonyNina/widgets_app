

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


//provider inmulatble, listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//un simple booleano
final isDrakmodeProvider = StateProvider((ref) => false);


//un simple int
final selectedColorProvider  = StateProvider((ref) => 0);

//Un objeto de tipo AppTheme (Custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
  );


//Controller o NOtifier

class ThemeNotifier extends StateNotifier<AppTheme>{

  //STATE = Estado = new Apptheme();
  ThemeNotifier(): super(AppTheme()) ;

  void toggleDarkMode(){

    state = state.copyWith(isDarkmode: !state.isDarkmode);

  }

  void changeColorIndex(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);
  }


}
