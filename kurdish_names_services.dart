import 'package:http/http.dart' as http;
import 'package:aram_app/src/kurdish_names/models/names_data_model.dart';

class KurdishNamesService {
// https://github.com/DevelopersTree/nawikurdi
// https://nawikurdi.com/

//API end point : https://nawikurdi.com/api
String limit="5";
    String gender="M";
    String sortt ="positive";

  Future<KurdishNames> fetchListOfNames( ) async {
    //TODO: Create the URI
    // scheme : https , host: nawikurdi.com , path: api ,

// final httpsUri = Uri(
//     scheme: 'https',
//     host: 'dart.dev',
//     path: 'guides/libraries/library-tour',
//     fragment: 'numbers');
// print(httpsUri);
    
    Uri _kurdishNamesUri = Uri(
        scheme: 'https',
        host: 'nawikurdi.com',
        path: 'api',
        queryParameters: {"limit": limit, "gender":gender, "offset": "0","sort":sortt});

    http.Response _response = await http
        .get(_kurdishNamesUri);

    KurdishNames _kurdishNames = KurdishNames.fromJson(_response.body);

    print(_response.body);
    return _kurdishNames;
  }
}