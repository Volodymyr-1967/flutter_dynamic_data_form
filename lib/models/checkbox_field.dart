import 'form_field_base.dart';

class CheckboxField extends FormFieldBase<bool> {
  CheckboxField({
    required super.key,
    required super.label,
    super.value = false,
    super.required,
    required super.order,
  });
}
