```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle specific HTTP error codes
      if (response.statusCode == 404) {
        throw Exception('Data not found (404)');
      } else if (response.statusCode == 500) {
        throw Exception('Server error (500)');
      } else {
        throw Exception('Failed to load data. Status code: ${response.statusCode}');
      }
    }
  } on FormatException catch (e) {
    print('Invalid JSON format: $e');
    // Handle JSON decoding errors
  } on SocketException catch (e) {
    print('Network error: $e');
    // Handle network errors
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
    // Handle timeout errors
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Handle other unexpected errors
  }
}
```