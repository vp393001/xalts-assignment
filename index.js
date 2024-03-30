const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/health', (req, res) => {
  res.json({ result: "Healthy", error: false });
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
