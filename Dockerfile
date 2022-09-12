FROM node:14-slim

# Step 3.1 - Add working directory
WORKDIR /app
# Step 3.2 - Copy npm dependencies
COPY package*.json ./
# Step 3.3 - Install dependencies
RUN npm Install
# Copy app source code

COPY . .

#Expose port and start the application

EXPOSE 3001

CMD ["npm", "start"]