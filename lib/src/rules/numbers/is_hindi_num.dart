import '../../../queen_validators.dart';
import 'package:nations/nations.dart';

import '../../../queen_validators.dart';

/// checks if the input is a valid `integer`
class IsHindiNum extends TextValidationRule {
  IsHindiNum([String? error]) : super(error);

  @override
  bool isValid(String input) => isHindiNum(input);
  @override
  String get localizedError => throw UnimplementedError();
}

bool isHindiNum(String input) {
  //ToDo if it's starts with ٠ , i.e ٠٢٣٤٥٦٧ it's not a valid number
  return RegExp('^[\u0661-\u0669][\u0660-\u0669]*\$').hasMatch(input);
}