import socket

host = '172.20.241.9' # needs to be in quote
port = 20000

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.connect((host, port))
    s.sendall(b'999\n')

chunks = []
while True:
    data = s.recv(1024)
    if len(data) == 0:
        break
    chunks.append(data.decode('utf-8'))

for i in chunks:
    print(i, end = '')
    with open('test.txt', 'w') as f:
        f.write(data)

s.close()