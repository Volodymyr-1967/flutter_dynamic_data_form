import 'form_field_base.dart';

class DropdownField extends FormFieldBase<String> {
  final List<Map<String, String>> options;

  DropdownField({
    required super.key,
    required super.label,
    required List<Map<String, String>> options,
    super.value = '',
    super.required,
    required super.order,
  })  : options = options;
}
