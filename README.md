# 📱 Practica 1 Flutter

Una aplicación Flutter educativa que demuestra el uso de diferentes componentes de Material Design 3 y navegación por pestañas. Esta app es la versión Flutter de la aplicación Android original que utiliza fragmentos.

## 🌟 Características

- **5 Pantallas diferentes** que muestran diversos componentes de UI
- **Material Design 3** con tema personalizado y soporte para modo oscuro
- **Bottom Navigation** con NavigationBar para navegación intuitiva
- **Navegación entre pantallas** usando IndexedStack
- **Interfaz responsive** y moderna
- **Animaciones fluidas** y feedback visual

## 🏗️ Arquitectura

La aplicación sigue el patrón de arquitectura de Widget único con:
- `HomeScreen`: Pantalla principal que contiene la navegación
- **5 Widgets especializados**:
  - `TextFieldsWidget`: Campos de texto interactivos
  - `ButtonsWidget`: Diferentes tipos de botones
  - `SelectionElementsWidget`: Controles de selección
  - `ListWidget`: Lista con ListView
  - `InfoWidget`: Información con componentes visuales y animaciones

## 📋 Funcionalidades por Módulo

### 🖊️ Campos de Texto
- Campo de texto con Material Design 3
- Actualización en tiempo real del texto ingresado
- Validación visual y botón para limpiar
- Ejemplo de `TextField` y `TextEditingController`

**📸 Captura de pantalla:**
![Imagen de WhatsApp 2025-09-22 a las 14 27 49_9a0cac15](https://github.com/user-attachments/assets/e095583f-f6bc-4d21-9e11-56c52c37fb8a)


### 🔘 Botones
- **Botón Relleno** (`FilledButton`): Botón principal con fondo sólido
- **Botón con Contorno** (`OutlinedButton`): Botón secundario con borde
- **Botón de Texto** (`TextButton`): Botón terciario solo texto
- **FAB Extendido** (`FloatingActionButton.extended`): Con texto e ícono
- **Botones de Ícono**: Relleno, contorno y simple
- Feedback visual al presionar cada botón

**📸 Captura de pantalla:**
![Imagen de WhatsApp 2025-09-22 a las 14 27 49_8606be45](https://github.com/user-attachments/assets/45cd0e0b-3dca-4be0-bd30-f85e3677c039)


### ☑️ Controles de Selección
- **CheckBox**: Selección múltiple con `CheckboxListTile`
- **RadioButton**: Selección única entre opciones con `RadioListTile`
- **Switch**: Activar/desactivar funcionalidad con `SwitchListTile`
- **Slider**: Control deslizante para valores numéricos
- Estado de selección mostrado dinámicamente

**📸 Captura de pantalla:**
![Imagen de WhatsApp 2025-09-22 a las 14 27 49_f8ff2d85](https://github.com/user-attachments/assets/75de98b8-35ae-49ce-b9c4-0d25d2c11cb2)


### 📋 Lista
- `ListView.builder` con rendimiento optimizado
- Cards con Material Design 3
- Lista de elementos con íconos y avatares circulares
- Interacciones: tap para mostrar diálogo, botón para snackbar
- Layout responsivo y animaciones suaves

**📸 Captura de pantalla:**
![Imagen de WhatsApp 2025-09-22 a las 14 27 49_d74def67](https://github.com/user-attachments/assets/133b2a42-9b60-4fb7-b8c1-a88afbea312e)
![Imagen de WhatsApp 2025-09-22 a las 14 27 50_a0d15f44](https://github.com/user-attachments/assets/8552ff7d-5632-48fd-b5d7-738276a7cfa1)


### ℹ️ Información
- Componentes informativos con cards
- `LinearProgressIndicator` con progreso dinámico
- `CircularProgressIndicator` con animaciones
- Estadísticas visuales de la aplicación
- Botón de acción con feedback

**📸 Captura de pantalla:**
![Imagen de WhatsApp 2025-09-22 a las 14 53 35_536a1d4b](https://github.com/user-attachments/assets/86f95f91-1b8a-4507-9017-38d81260110b)


## 🛠️ Tecnologías Utilizadas

- **Flutter**: Framework de desarrollo multiplataforma
- **Dart**: Lenguaje de programación
- **Material Design 3**: Sistema de diseño moderno
- **NavigationBar**: Navegación por pestañas
- **IndexedStack**: Preservación del estado entre pantallas
- **AnimationController**: Animaciones fluidas

## 🚀 Instalación y Uso

### Requisitos
- Flutter SDK 3.0.0 o superior
- Dart SDK 3.0.0 o superior
- Android Studio / Visual Studio Code
- Dispositivo Android/iOS o emulador

### Pasos para ejecutar

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/TU_USUARIO/tarea1_fragments_flutter.git
   cd tarea1_fragments_flutter
   ```

2. **Instalar dependencias**
   ```bash
   flutter pub get
   ```

3. **Verificar configuración**
   ```bash
   flutter doctor
   ```

4. **Ejecutar la aplicación**
   ```bash
   flutter run
   ```

### Usando Visual Studio Code
1. Abre la carpeta del proyecto en VS Code
2. Asegúrate de tener las extensiones de Flutter y Dart instaladas
3. Presiona `F5` o usa `Ctrl+Shift+P` → "Flutter: Launch Emulator"
4. Selecciona tu dispositivo y ejecuta la app

## 🎯 Cómo usar la aplicación

1. **Navegación**: Usa la barra inferior para navegar entre las 5 pantallas
2. **Campos de Texto**: Escribe texto y observa la actualización en tiempo real
3. **Botones**: Presiona diferentes botones para ver los mensajes de feedback
4. **Selección**: Interactúa con checkboxes, radios, switches y slider
5. **Lista**: Toca elementos para ver diálogos informativos
6. **Información**: Observa las animaciones y progreso dinámico

## 🎨 Características de Diseño

- **Tema Adaptable**: Soporte automático para modo claro y oscuro
- **Colores Personalizados**: Paleta basada en Material Design 3
- **Tipografía**: Uso consistente de estilos de texto de Material
- **Espaciado**: Diseño con espaciado uniforme y proporcional
- **Animaciones**: Transiciones suaves y feedback visual

## 📱 Compatibilidad

- **Android**: API 21+ (Android 5.0)
- **iOS**: iOS 11.0+
- **Web**: Compatible (requiere configuración adicional)
- **Desktop**: Windows, macOS, Linux (requiere configuración adicional)

## 🔄 Diferencias con la versión Android

| Aspecto | Android (Kotlin) | Flutter (Dart) |
|---------|------------------|----------------|
| Navegación | Navigation Component + Fragments | NavigationBar + IndexedStack |
| UI Framework | Views + Material Components | Widgets + Material 3 |
| Estado | ViewModels/Variables | StatefulWidget + setState |
| Listas | RecyclerView + Adapter | ListView.builder |
| Animaciones | Property Animators | AnimationController |

## 📝 Estructura del Proyecto

```
lib/
├── main.dart                    # Punto de entrada de la aplicación
├── screens/
│   └── home_screen.dart        # Pantalla principal con navegación
└── widgets/
    ├── text_fields_widget.dart  # Módulo de campos de texto
    ├── buttons_widget.dart      # Módulo de botones
    ├── selection_elements_widget.dart # Módulo de controles
    ├── list_widget.dart         # Módulo de lista
    └── info_widget.dart         # Módulo de información
```

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 📧 Contacto

Tu Nombre - [@tu_usuario](https://twitter.com/tu_usuario) - email@ejemplo.com

Link del Proyecto: [https://github.com/TU_USUARIO/tarea1_fragments_flutter](https://github.com/TU_USUARIO/tarea1_fragments_flutter)

---

**Nota**: Esta aplicación fue creada con fines educativos para demostrar las capacidades de Flutter y Material Design 3.
