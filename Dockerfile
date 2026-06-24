FROM node:20-alpine

# Tạo và thiết lập thư mục làm việc trong container
WORKDIR /usr/src/app

# Sao chép file package.json và package-lock.json (nếu có)
COPY package*.json ./

# Cài đặt các thư viện (dependencies)
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Khai báo cổng 3000 sẽ được sử dụng
EXPOSE 3000

# Lệnh khởi động ứng dụng
CMD ["npm", "start"]
