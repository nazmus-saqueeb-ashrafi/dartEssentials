import 'package:flutter/material.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key, required this.title});

  final String title;

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  @override
  Widget build(BuildContext context) {
    int _minimum = 0;
    int _maximum = 0;
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Number Generator"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputField(
                textInput: "Enter Minimum",
                intValueSetter: (value) => _minimum = value,
              ),
              const SizedBox(
                height: 10,
              ),
              InputField(
                textInput: "Enter Maximum",
                intValueSetter: (value) => _maximum = value,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ask form to tells its inputs to validate
          // Validate returns true if the form is valid, or false otherwise.
          if (_formKey.currentState?.validate() == true) {
            // null is not true
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Processing Data')),
            );
          }

          // navigate to generator page
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.textInput,
    required this.intValueSetter,
  }) : super(key: key);

  final String textInput;
  final void Function(int value) intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: textInput,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      onSaved: (newValue) => intValueSetter(
        int.parse(newValue ?? ''),
      ),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return "Must be a number";
        } else {
          return null;
        }
      },
    );
  }
}
