import express from "express";
const app: express.Express = express();
const port = 3000;
app.use(express.static("public"));
app.use(express.urlencoded({ extended: false }));
app.listen(port, () => console.log("Expressに接続しました。"));
