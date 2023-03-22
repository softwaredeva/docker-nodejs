
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello Docker Nodejs!');
});

app.listen(port, () => {
  console.log(`Docker Nodejs listening on port ${port}`);
});
