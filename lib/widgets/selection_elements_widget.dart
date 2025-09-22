import 'package:flutter/material.dart';

class SelectionElementsWidget extends StatefulWidget {
  const SelectionElementsWidget({super.key});

  @override
  State<SelectionElementsWidget> createState() => _SelectionElementsWidgetState();
}

class _SelectionElementsWidgetState extends State<SelectionElementsWidget> {
  bool _checkboxValue = false;
  int _radioValue = 0;
  bool _switchValue = false;
  String _selectionState = 'Estado de selección:';

  void _updateSelectionState(String state) {
    setState(() {
      _selectionState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Controles de Selección',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Interactúa con casillas, radios y switches. El estado se reflejará abajo.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),

          // CheckBox
          Card(
            child: CheckboxListTile(
              title: const Text('Opción con CheckBox'),
              value: _checkboxValue,
              onChanged: (bool? value) {
                setState(() {
                  _checkboxValue = value ?? false;
                });
                _updateSelectionState(
                  'CheckBox: ${_checkboxValue ? "Marcado" : "No Marcado"}'
                );
              },
            ),
          ),
          const SizedBox(height: 16),

          // RadioButtons
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Selecciona una opción:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                RadioListTile<int>(
                  title: const Text('Radio Opción 1'),
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: (int? value) {
                    setState(() {
                      _radioValue = value ?? 0;
                    });
                    _updateSelectionState('Radio: Radio Opción 1 seleccionado');
                  },
                ),
                RadioListTile<int>(
                  title: const Text('Radio Opción 2'),
                  value: 2,
                  groupValue: _radioValue,
                  onChanged: (int? value) {
                    setState(() {
                      _radioValue = value ?? 0;
                    });
                    _updateSelectionState('Radio: Radio Opción 2 seleccionado');
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Switch
          Card(
            child: SwitchListTile(
              title: const Text('Activar/Desactivar Switch'),
              value: _switchValue,
              onChanged: (bool value) {
                setState(() {
                  _switchValue = value;
                });
                _updateSelectionState(
                  'Switch: ${_switchValue ? "Activado" : "Desactivado"}'
                );
              },
            ),
          ),
          
          const SizedBox(height: 24),

          // Slider adicional
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Slider de ejemplo:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Slider(
                    value: 50,
                    max: 100,
                    divisions: 10,
                    label: '50%',
                    onChanged: (double value) {
                      _updateSelectionState('Slider: ${value.round()}%');
                    },
                  ),
                ],
              ),
            ),
          ),

          const Spacer(),

          // Estado de selección
          Card(
            color: Theme.of(context).colorScheme.secondaryContainer,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  _selectionState,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}