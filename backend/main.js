const { MeiliSearch } = require('meilisearch');
const games = require('./steam-games.json');
const settings = require('./settings.json');

const client = new MeiliSearch({
  host: 'http://localhost:7700',
  apiKey: 'masterKey',
});

const index = client.index('games');

index
  .updateSettings({
    searchableAttributes: settings.searchableAttributes,
    filterableAttributes: settings.filterableAttributes,
    rankingRules: settings.rankingRules,
    sortableAttributes: settings.sortableAttributes,
  })
  .then(() => index.addDocuments(games, { primaryKey: 'id' }))
  .then(res => console.log(res))
  .catch(error => console.error(error));
