curl localhost
curl localhost:8080
netstat -tnlp
sudo npm install -g pm2
pm2 start hello.js
ls
pm2 start app.js 
pm2 startup systemd
ls
cat app.js 
sudo yum -y install curl
curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo yum install -y nodejs
sudo yum -y install gcc-c++ make
node --version
tee hello-world-app.js<<EOF
const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
EOF

node --version
ls
node hello-world-app.js
npm
npm install pm2 -g
var http = require('http');
var server = http.createServer(function (request, response) {  
  response.writeHead(200, {"Content-Type": "text/html"});
  response.end("<h3>Node webserver running</h3>\n");
});
server.listen(8080);
console.log("Node.js is listening on port 8080"); 
nano app.js
cat app.js 
node app.js 
nano app.js
vim app.js
node app.js 
pm2 start app.js 
yum install nginx
sudo yum install nginx
sudo amazon-linux-extras install nginx1
sudo nano /etc/nginx/sites-available
cd /etc/nginx/sites-available
cd /etc/nginx/
ls
vim nginx.conf
cp nginx.conf nginx.conf.bak
sudo cp nginx.conf nginx.conf.bak
vim nginx.conf
sudo vim nginx.conf
systemctl status nginx
systemctl start nginx
sudo systemctl start nginx
sudo systemctl status nginx
nginx -t
sudo nginx -t
