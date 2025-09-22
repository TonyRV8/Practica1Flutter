import 'package:flutter/material.dart';
import '../widgets/text_fields_widget.dart';
import '../widgets/buttons_widget.dart';
import '../widgets/selection_elements_widget.dart';
import '../widgets/list_widget.dart';
import '../widgets/info_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const TextFieldsWidget(),
    const ButtonsWidget(),
    const SelectionElementsWidget(),
    const ListWidget(),
    const InfoWidget(),
  ];

  final List<String> _titles = [
    'Campos de Texto',
    'Botones',
    'Controles de Selección',
    'Lista',
    'Información',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.text_fields),
            label: 'Text Fields',
          ),
          NavigationDestination(
            icon: Icon(Icons.smart_button),
            label: 'Botones',
          ),
          NavigationDestination(
            icon: Icon(Icons.checklist),
            label: 'Selección',
          ),
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
          NavigationDestination(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
        ],
      ),
    );
  }
}