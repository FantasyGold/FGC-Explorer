
/**
 * Global configuration object.
 */
const config = {
  'api': {
    'host': 'https://fantasygold.network',
    'port': '443',
    'prefix': '/api',
    'timeout': '5s'
  },
  'coinMarketCap': {
    'api': 'http://api.coinmarketcap.com/v1/ticker/',
    'ticker': 'FantasyGold'
  },
  'db': {
    'host': '127.0.0.1',
    'port': '27017',
    'name': 'blockex',
    'user': 'blockexuser',
    'pass': 'Explorer!1'
  },
  'freegeoip': {
    'api': 'http://freegeoip.net/json/'
  },
  'rpc': {
    'host': '127.0.0.1',
    'port': '57810',
    'user': 'FantasyGoldrpc',
    'pass': 'someverysafepassword',
    'timeout': 8000, // 8 seconds
  }
};

module.exports = config;
