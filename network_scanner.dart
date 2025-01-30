import 'dart:io';

void main() async {
  String targetIp = '192.168.1.1'; // Change this to your target IP
  int startPort = 1;
  int endPort = 65535;

  print('Scanning ports on $targetIp...');

  for (int port = startPort; port <= endPort; port++) {
    var socket = await Socket.connect(targetIp, port, timeout: Duration(milliseconds: 100));
    print('Port $port is open');
    socket.close();
  }

  
  print('Port scan completed.');
}

