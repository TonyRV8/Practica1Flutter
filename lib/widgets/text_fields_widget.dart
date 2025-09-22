import 'package:flutter/material.dart';

class TextFieldsWidget extends StatefulWidget {
  const TextFieldsWidget({super.key});

  @override
  State<TextFieldsWidget> createState() => _TextFieldsWidgetState();
}

class _TextFieldsWidgetState extends State<TextFieldsWidget> {
  final TextEditingController _textController = TextEditingController();
  String _displayText = '';

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {
        _displayText = _textController.text;
      });
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Campos de Texto',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Aquí puedes ingresar texto. El contenido se mostrará abajo.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          TextField(
            controller: _textController,
            decoration: const InputDecoration(
              labelText: 'Ingresa texto aquí',
              border: OutlineInputBorder(),
              hintText: 'Escribe algo...',
            ),
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Texto ingresado:',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _displayText.isEmpty ? 'Nada ingresado aún...' : _displayText,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: _displayText.isEmpty 
                          ? Theme.of(context).colorScheme.onSurfaceVariant
                          : null,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    setState(() {
                      _textController.clear();
                      _displayText = '';
                    });
                  },
                  child: const Text('Limpiar'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}