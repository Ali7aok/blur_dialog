# Blur Dialog

A customizable blur dialog widget for Flutter. This package provides a simple yet flexible dialog with blurred background, customizable title, close button, border radius, and content.

## Features

- Blurred background dialog
- Optional close button (default: **true**)
- Customizable title
- Fully customizable content with `children[]`
- Adjustable background color and blur intensity
- Adjustable border radius

## Installation

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  blur_dialog: ^0.0.1
```

Then run:

```bash
flutter pub get
```

## Usage

```dart
import 'package:blur_dialog/blur_dialog.dart';

// Example usage
showDialog(
  context: context,
  builder: (context) {
    return BlurDialog(
      title: "My Dialog",
      showCloseButton: true, // Default is true
      borderRadius: 16,
      backgroundColor: Colors.white.withOpacity(0.8),
      blurStrength: 6,
      children: [
        Text("This is a custom blur dialog!"),
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Close"),
        ),
      ],
    );
  },
);
```

## Parameters

| Parameter        | Type              | Default       | Description |
|------------------|-------------------|---------------|-------------|
| `title`          | `String?`         | `null`        | Title text displayed at the top left |
| `showCloseButton`| `bool`            | `true`        | Whether to show the close button |
| `borderRadius`   | `double`          | `12.0`        | Border radius of the dialog |
| `backgroundColor`| `Color`           | `Colors.white.withOpacity(0.7)` | Background color of the dialog |
| `blurStrength`   | `double`          | `5.0`         | Intensity of the blur effect |
| `children`       | `List<Widget>`    | `[]`          | Widgets inside the dialog content |

## Example

```dart
BlurDialog(
  title: "Custom Dialog",
  children: [
    Text("Hello, World!"),
    SizedBox(height: 10),
    ElevatedButton(
      onPressed: () {},
      child: Text("Confirm"),
    ),
  ],
)
```

## License

This project is licensed under the MIT License.