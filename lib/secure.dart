import 'package:flutter_dotenv/flutter_dotenv.dart';

final String webClientId = dotenv.env['WEB_CLIENT_ID'] ?? '';
