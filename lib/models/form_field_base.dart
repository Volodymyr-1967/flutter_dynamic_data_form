abstract class FormFieldBase<T> {
  final String key;
  final String label;
  final T value;
  final bool required;
  final int order;

  FormFieldBase({
    required this.key,
    required this.label,
    required this.value,
    this.required = false,
    required this.order,
  });
}
