
import 'dart:async';

import 'package:chopper/chopper.dart';

class DefHeadersInterceptor implements Interceptor {
  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) {
    Request request = chain.request;

    request = applyHeader(request, 'Content-Type', 'application/json');
    request = applyHeader(request, 'Accept', 'application/json');
    return chain.proceed(request);
    
  }
}

