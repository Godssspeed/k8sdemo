const express = require('express');

const app = express();

port = 8080;

app.get('/', (req, res) => {
  res.sendFile('views/index.html', { root: __dirname });
});

app.listen(port, () => {
  console.log(`Listening on port:${port}`);
});
