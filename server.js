const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const bodyParser = require('body-parser');
const dotenv = require('dotenv');
const http = require('http');
const socket = require('./socket.js');
const pino = require('./src/services/logging/pinoService.js');
// For Microsoft Graph API.
require('cross-fetch/polyfill');

/** Route Config */
const webServer = require('./api');
dotenv.config();

const app = express();
const server = http.createServer(app);
const { port = 3000 } = process.env;
const env = process.env.NODE_ENV || 'development';
const isProduction = env === 'production';

socket.initialize(server);

app.use(pino);

// Middlewares
// CORS middleware
app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Methods', 'DELETE, PUT, GET, POST');
  res.header(
    'Access-Control-Allow-Headers',
    'Origin, X-Requested-With, Content-Type, Accept',
  );
  next();
});

/*
Helmet. js is an open source JavaScript library that helps you secure your Node.
Js application by setting several HTTP headers. 
It acts as a middleware for Express and similar technologies, automatically adding
or removing HTTP headers to comply with web security standards.
*/
app.use(helmet());

app.use(
  cors({
    origin: '*',
  }),
);
app.use(bodyParser.urlencoded({ limit: '500mb', extended: true }));
app.use(bodyParser.json({ limit: '500mb', extended: true }));

app.use('/api', webServer);

// Error Handler
app.use((err, req, res, next) =>
  res.status(500).json({
    message: 'Internal server error',
    error: isProduction ? null : err,
  }),
);

// Start the server
server.listen(port, () => {
  pino.logger.info(`Server running on port ${port}.`);
});

/*
  In BullMQService, we have:
  process.on('SIGINT', () => gracefulShutdown('SIGINT'));
  process.on('SIGTERM', () => gracefulShutdown('SIGTERM'));
*/
