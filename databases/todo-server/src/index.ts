import express, { NextFunction, Request, Response } from "express";
import { createConnection } from "mysql2";
import { read } from "./read";
const app: express.Express = express();
const port = 3000;

app.use(express.static("public"));
app.use(express.urlencoded({ extended: false }));

// クロスドメインを開放（本番環境ではしない事）
app.use((_request: Request, response: Response, next: NextFunction) => {
  response.header("Access-Control-Allow-Origin", "*");
  response.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept",
  );
  next();
});

const connection = createConnection({
  host: "LOCALHOST",
  user: "USER",
  password: "PASSWORD",
  database: "DATABASENAME",
});

app.get("/read", (_request: Request, response: Response) => {
  read(response, connection);
});

app.listen(port, () => console.log("Expressに接続しました。"));
