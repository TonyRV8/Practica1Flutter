import 'package:flutter/material.dart';
import 'dart:async';

class InfoWidget extends StatefulWidget {
  const InfoWidget({super.key});

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget>
    with SingleTickerProviderStateMixin {
  double _progressValue = 0.75;
  late AnimationController _animationController;
  late Animation<double> _animation;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.repeat(reverse: true);

    // Simular progreso cambiante
    _startProgressTimer();
  }

  void _startProgressTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _progressValue = (_progressValue + 0.1) % 1.0;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _timer?.cancel();
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
            'Información',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),

          // Card de información principal
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.info,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Información Principal',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Este es un TextView de información. Aquí se muestran diferentes componentes de visualización de datos y elementos informativos.',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Progress Bar
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Barra de Progreso',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: _progressValue,
                    backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${(_progressValue * 100).toInt()}% completado',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Indicadores circulares
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Indicadores Circulares',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          AnimatedBuilder(
                            animation: _animation,
                            builder: (context, child) {
                              return CircularProgressIndicator(
                                value: _animation.value,
                              );
                            },
                          ),
                          const SizedBox(height: 8),
                          const Text('Animado'),
                        ],
                      ),
                      Column(
                        children: [
                          CircularProgressIndicator(
                            value: _progressValue,
                          ),
                          const SizedBox(height: 8),
                          const Text('Dinámico'),
                        ],
                      ),
                      const Column(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(height: 8),
                          Text('Indeterminado'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Estadísticas
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Estadísticas de la App',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStatItem('Fragmentos', '5', Icons.widgets),
                      _buildStatItem('Botones', '8', Icons.smart_button),
                      _buildStatItem('Elementos', '12+', Icons.category),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const Spacer(),

          // Botón de acción
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('¡Información actualizada!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Actualizar Información'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          size: 24,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}