const express = require("express");

const app = express();
const port = Number(process.env.PORT ||3000);
app.get("/", (_req, res) => {
  res.json({ service: "test docker hub", status: "hello" });
});

app.listen(port, "0.0.0.0", () => {
  console.info(`Server listening on port :${port}`);
});
