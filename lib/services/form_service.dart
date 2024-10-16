import '../models/text_field.dart';
import '../models/dropdown_field.dart';
import '../models/checkbox_field.dart';
import '../models/form_field_base.dart';

class FormService {
  List<FormFieldBase> getFields() {
    return [
      DropdownField(
        key: 'education',
        label: 'Образование',
        options: [
          {'key': 'elementary', 'value': 'Начальное'},
          {'key': 'secondary', 'value': 'Среднее'},
          {'key': 'higher', 'value': 'Высшее'},
        ],
        order: 4,
      ),
      TextField(
        key: 'firstName',
        label: 'Имя',
        order: 1,
        required: true,
      ),
      TextField(
        key: 'lastName',
        label: 'Фамилия',
        order: 2,
        required: true,
      ),
      CheckboxField(
        key: 'subscribe',
        label: 'Подписаться на новости',
        value: true,
        order: 6,
      ),
      CheckboxField(
        key: 'agreement',
        label: 'Согласен на обработку персональных данных',
        value: true,
        order: 6,
      ),
    ]..sort((a, b) => a.order.compareTo(b.order));
  }
}
