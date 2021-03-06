// Copyright 2017 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:webdriver/src/common/request.dart';
import 'package:webdriver/src/common/webdriver_handler.dart';
import 'package:webdriver/src/handler/json_wire/utils.dart';

class JsonWireFrameHandler extends FrameHandler {
  @override
  WebDriverRequest buildSwitchByIdRequest([int id]) =>
      WebDriverRequest.postRequest('frame', {'id': id});

  @override
  void parseSwitchByIdResponse(WebDriverResponse response) {
    parseJsonWireResponse(response);
  }

  @override
  WebDriverRequest buildSwitchByElementRequest(String elementId) =>
      WebDriverRequest.postRequest('frame', {
        'id': {jsonWireElementStr: elementId}
      });

  @override
  void parseSwitchByElementResponse(WebDriverResponse response) {
    parseJsonWireResponse(response);
  }

  @override
  WebDriverRequest buildSwitchToParentRequest() =>
      WebDriverRequest.postRequest('frame/parent');

  @override
  void parseSwitchToParentResponse(WebDriverResponse response) {
    parseJsonWireResponse(response);
  }
}
