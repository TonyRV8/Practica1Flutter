import 'package:flutter/material.dart';

class ButtonsWidget extends StatefulWidget {
  const ButtonsWidget({super.key});

  @override
  State<ButtonsWidget> createState() => _ButtonsWidgetState();
}

class _ButtonsWidgetState extends State<ButtonsWidget> {
  String _actionText = '';

  void _updateActionText(String text) {
    setState(() {
      _actionText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Botones Diversos',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Estos son diferentes tipos de botones. Presiona uno para ver una acción.',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          
          // Botón Relleno (Filled Button)
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () => _updateActionText('Botón Relleno presionado'),
              child: const Text('Botón Relleno'),
            ),
          ),
          const SizedBox(height: 16),
          
          // Botón con Contorno (Outlined Button)
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => _updateActionText('Botón con Contorno presionado'),
              child: const Text('Botón con Contorno'),
            ),
          ),
          const SizedBox(height: 16),
          
          // Botón de Texto (Text Button)
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () => _updateActionText('Botón de Texto presionado'),
              child: const Text('Botón de Texto'),
            ),
          ),
          const SizedBox(height: 24),
          
          // Botón FAB Extendido
          FloatingActionButton.extended(
            onPressed: () => _updateActionText('Botón FAB Extendido presionado'),
            icon: const Icon(Icons.add),
            label: const Text('Botón FAB Extendido'),
          ),
          const SizedBox(height: 32),
          
          // Botones de Icono
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton.filled(
                onPressed: () => _updateActionText('Botón de Icono Relleno presionado'),
                icon: const Icon(Icons.favorite),
              ),
              IconButton.outlined(
                onPressed: () => _updateActionText('Botón de Icono con Contorno presionado'),
                icon: const Icon(Icons.bookmark),
              ),
              IconButton(
                onPressed: () => _updateActionText('Botón de Icono Simple presionado'),
                icon: const Icon(Icons.share),
              ),
            ],
          ),
          
          const Spacer(),
          
          // Área de retroalimentación
          if (_actionText.isNotEmpty)
            Card(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    _actionText,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
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