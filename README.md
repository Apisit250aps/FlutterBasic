# flutter_basic

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Docs Class

### Widgets

ส่วนประกอบต่างๆ ของหน้าจอ เพื่อเป็นแอพ มี 2 รูปแบบหลักๆ ดังนี้:

**Stateless Widget**

- ไม่มี หรือไม่จดจำสถานะค่าต่างๆ
- สร้างขึ้นมาแล้วไม่มีการเปลี่ยนแปลงค่า


**Stateful Widget**

- มี และจดจำสถานะค่าต่างๆ
- สามารถเปลี่ยนแปลงค่าได้


### Example
**Stateless Widget:**
```dart
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('I am a Stateless Widget');
  }
}
```

**Stateful Widget:**
```dart
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $_counter'),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
```

