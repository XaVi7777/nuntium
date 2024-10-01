// ignore_for_file: avoid_print

import 'dart:io';

import 'package:path/path.dart' as path;

void compileSvg({
  required String inputDirPath,
  required String outputDirPath,
}) {
  final inputDir = Directory(inputDirPath);
  final outputDir = Directory(outputDirPath);

  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
    print('Created output directory: ${outputDir.path}');
  }

  final svgFiles =
      inputDir.listSync().where((file) => file.path.endsWith('.svg')).toList();

  for (final file in svgFiles) {
    final inputPath = file.path;
    final outputPath = path.join(
      outputDir.path,
      '${path.basenameWithoutExtension(inputPath)}.vg',
    );

    final result = Process.runSync(
      'dart',
      [
        'run',
        'vector_graphics_compiler:vector_graphics_compiler',
        '--input=$inputPath',
        '--output=$outputPath',
      ],
    );

    if (result.exitCode == 0) {
      print('Successfully compiled $inputPath to $outputPath');
    } else {
      print('Failed to compile $inputPath');
      print('Standard Output: ${result.stdout}');
      print('Standard Error: ${result.stderr}');
    }
  }
}
