```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // ... use jsonData ...
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Re-throw the exception to be handled by a higher-level function
    rethrow;
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } on Exception catch (e) {
    // Handle specific exceptions
    print('An error occurred: $e');
  } catch (e) {
    // Handle other unexpected errors
    print('An unexpected error occurred: $e');
  }
}
```