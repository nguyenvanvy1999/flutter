// class BaseConnect extends GetConnect {
//   @override
//   void onInit() {
//     httpClient
//       ..baseUrl = GlobalConfiguration().get('http://')
//       ..maxAuthRetries = kAuthRetry
//       ..timeout = Duration(seconds: 3000)
//       ..addAuthenticator((request) async {
//         //Get token
//         var token = await Get.find<DataStorage>().getAccessToken();
//         if (token != null) request.headers[kAuthorization] = "Bearer {request.headers.toString()}');
//         return request;
//       })
//       ..addRequestModifier((request) {
//         Get.log('[URL] : ${request.url}');
//         return request;
//       });
//   }
// }