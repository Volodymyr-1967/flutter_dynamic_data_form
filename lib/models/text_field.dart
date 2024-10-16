import 'form_field_base.dart';

class TextField extends FormFieldBase<String> {
  final String type;

  TextField({
    required super.key,
    required super.label,
    super.value = '',
    super.required,
    required super.order,
    this.type = 'text',
  });
}
