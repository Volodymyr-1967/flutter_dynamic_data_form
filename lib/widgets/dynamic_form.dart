import 'package:flutter/material.dart';
import '../services/form_service.dart';
import '../models/text_field.dart' as custom;
import '../models/dropdown_field.dart';
import '../models/checkbox_field.dart';

class DynamicForm extends StatefulWidget {
  const DynamicForm({super.key});

  @override
  DynamicFormState createState() => DynamicFormState();
}

class DynamicFormState extends State<DynamicForm> {
  final FormService _formService = FormService();
  final Map<String, dynamic> _formData = {};

  @override
  Widget build(BuildContext context) {
    final fields = _formService.getFields();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ...fields.map((field) {
            if (field is custom.TextField) {
              return TextFormField(
                decoration: InputDecoration(
                  labelText: field.label,
                ),
                initialValue: field.value,
                onChanged: (value) {
                  _formData[field.key] = value;
                },
              );
            } else if (field is DropdownField) {
              return DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: field.label),
                value: field.value.isEmpty ? null : field.value,
                items: field.options.map((option) {
                  return DropdownMenuItem(
                    value: option['key'],
                    child: Text(option['value']!),
                  );
                }).toList(),
                onChanged: (value) {
                  _formData[field.key] = value;
                },
              );
            } else if (field is CheckboxField) {
              return CheckboxListTile(
                title: Text(field.label),
                value: _formData[field.key] ?? field.value,
                onChanged: (value) {
                  setState(() {
                    _formData[field.key] = value!;
                  });
                },
              );
            }
            return Container();
          }),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              debugPrint("Form Data: $_formData");
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
