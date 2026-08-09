class ToobitService {
  bool connected = false;

  Future<bool> connect() async {
    // Placeholder: no API keys are stored in this starter project.
    connected = true;
    return connected;
  }

  void disconnect() => connected = false;
}
