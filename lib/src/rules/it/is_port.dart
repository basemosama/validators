import 'package:queen_validators/src/text_rule_class.dart';

/// checks if the input is a valid `port`
class IsPort extends TextValidationRule {
  IsPort([String? msg]) : super(msg);

  @override
  String get defaultError => 'is not valid port number';

  @override
  bool isValid(String input) => isPort(input);
}

// returns true if the input is valid port number
bool isPort(Object? input) {
  num? _port;
  if (input is String) {
    _port = int.tryParse(input);
  } else if (input is num) {
    _port = input;
  }
  return _port != null && _port >= 0 && _port < 65535;
}