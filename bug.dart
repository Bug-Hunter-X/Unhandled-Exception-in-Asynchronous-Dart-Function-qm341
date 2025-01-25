```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
      final jsonData = jsonDecode(response.body);
      // ... use jsonData ...
    } else {
      // Handle the error appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the exception
    print('Error fetching data: $e');
    // Rethrow the exception to be handled by calling function.
    rethrow;
  }
}

void main() async {
  try {
    await fetchData();
    print("Data fetched successfully!");
  } catch (e) {
    print("An error occurred: $e");
  }
}
```