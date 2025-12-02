// app.js
const express = require("express");
const path = require("path");
const app = express();
const port = 8080;

// Middleware para servir arquivos estáticos (index.html, comidas.json)
app.use(express.static(path.join(__dirname, "public")));

// Rota específica para garantir que o comidas.json seja acessível
app.get("/comidas.json", (req, res) => {
  res.sendFile(path.join(__dirname, "public", "comidas.json"));
});

app.listen(port, () => {
  console.log(`🚀 Servidor rodando em http://localhost:${port}`);
});
