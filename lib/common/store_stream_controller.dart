import 'dart:async';

enum StreamType {
  update,
}

mixin StoreStreamController {
  final List<StreamController<StreamType>> _controllers = [];

  void addStreamController(StreamController<StreamType> controller) {
    if (_controllers.contains(controller)) {
      return;
    }
    _controllers.add(controller);
  }

  void removeStreamController(StreamController<StreamType> controller) {
    _controllers.remove(controller);
  }

  void sink(StreamType value) {
    for (final controller in _controllers) {
      if (controller.isClosed) {
        return;
      }
      controller.sink.add(value);
    }
  }
}
