import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/quote_model.dart';

class QuoteService {
  // Primary API
  static const String _primaryUrl = 'https://api.quotable.io/random';
  // Fallback API
  static const String _fallbackUrl = 'https://zenquotes.io/api/random';

  Future<QuoteModel> fetchRandomQuote() async {
    try {
      final response = await http
          .get(Uri.parse(_primaryUrl))
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return QuoteModel.fromJson(data);
      } else {
        return await _fetchFallback();
      }
    } catch (e) {
      return await _fetchFallback();
    }
  }

  Future<QuoteModel> _fetchFallback() async {
    try {
      final response = await http
          .get(Uri.parse(_fallbackUrl))
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = json.decode(response.body) as List;
        return QuoteModel(
          content: data[0]['q'] ?? '',
          author: data[0]['a'] ?? 'Unknown',
        );
      }
      throw Exception('Both APIs failed');
    } catch (e) {
      // Return default quote if all APIs fail
      return QuoteModel(
        content: 'The secret of getting ahead is getting started.',
        author: 'Mark Twain',
      );
    }
  }
}
