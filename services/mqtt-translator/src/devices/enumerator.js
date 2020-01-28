/* eslint-disable global-require */
/* eslint-disable import/no-dynamic-require */

const path = require('path');
const log = require('debug')('device:enumerator');
const translators = require('../translators');

const confPath = path.resolve(
  __dirname,
  '../..', // jump up from the src dir
  process.env.DEVICES_LIST_PATH || 'devices.js',
);

log('using devices from %s', confPath);

module.exports = require(confPath)({ translators });
