import 'compile_svg.dart';
import 'generate_localization_keys.dart';

void main() {
  compileSvg(
    inputDirPath: 'assets/svg',
    outputDirPath: 'assets/svg_compiled',
  );

  generateLocalizationKeys();
}
