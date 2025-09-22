import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  final List<ListItem> items = const [
    ListItem(
      title: 'Item 1',
      subtitle: 'Descripción del primer elemento',
      icon: Icons.star,
    ),
    ListItem(
      title: 'Item 2',
      subtitle: 'Descripción del segundo elemento',
      icon: Icons.favorite,
    ),
    ListItem(
      title: 'Item 3',
      subtitle: 'Descripción del tercer elemento',
      icon: Icons.bookmark,
    ),
    ListItem(
      title: 'Item 4',
      subtitle: 'Descripción del cuarto elemento',
      icon: Icons.share,
    ),
    ListItem(
      title: 'Item 5',
      subtitle: 'Descripción del quinto elemento',
      icon: Icons.settings,
    ),
    ListItem(
      title: 'Item 6',
      subtitle: 'Descripción del sexto elemento',
      icon: Icons.person,
    ),
    ListItem(
      title: 'Item 7',
      subtitle: 'Descripción del séptimo elemento',
      icon: Icons.home,
    ),
    ListItem(
      title: 'Item 8',
      subtitle: 'Descripción del octavo elemento',
      icon: Icons.work,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Visualización de Listas',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Las listas muestran colecciones de datos de forma ordenada. Esta es una implementación con ListView.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: Icon(
                        item.icon,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    title: Text(item.title),
                    subtitle: Text(item.subtitle),
                    trailing: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${item.title} seleccionado'),
                            duration: const Duration(seconds: 1),
                          ),
                        );
                      },
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(item.title),
                            content: Text(item.subtitle),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text('Cerrar'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ListItem {
  final String title;
  final String subtitle;
  final IconData icon;

  const ListItem({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}