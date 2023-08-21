FROM node:16

WORKDIR /app

COPY tradeapp /app/tradeapp
COPY tradeapp-dashboard /app/tradeapp-dashboard
COPY tradeapp-backend /app/tradeapp-backend

RUN cd /Tradeapp/tradeapp && npm install
RUN cd /app/tradeapp-dashboard && npm install
RUN cd /app/tradeapp-backend && npm install

CMD ["npm", "start"]