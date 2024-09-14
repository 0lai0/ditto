# 使用最新的 Node.js LTS 版本的 Alpine 映像作為基礎映像
FROM node:lts-alpine AS builder

# 設置工作目錄
WORKDIR /gcp

# 暴露端口 8080
EXPOSE 8080

# 建立一個簡單的 Node.js 應用來顯示 "Hello meow"
# 這裡我們會直接寫 Node.js 代碼來顯示訊息
RUN echo 'const http = require("http");\n'\
'const port = 8080;\n'\
'http.createServer((req, res) => {\n'\
'  res.writeHead(200, {"Content-Type": "text/plain"});\n'\
'  res.end("Hello meow");\n'\
'}).listen(port, () => console.log(`Server running on port ${port}`));' > app.js

# 執行 Node.js 應用
CMD ["node", "app.js"]
