import 'compile_svg.dart';
import 'generate_localization_keys.dart';
import 'generate_splash_screen.dart';

void main() {
  compileSvg(
    inputDirPath: 'assets/svg',
    outputDirPath: 'assets/svg_compiled',
  );

  generateLocalizationKeys();
  generateSplashScreen();
}
