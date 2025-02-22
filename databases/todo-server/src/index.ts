import express, { Request, Response } from "express";
import { createConnection } from "mysql2";
import type { TypeTodo } from "./TypeTodo";
import { read } from "./read";
const app: express.Express = express();
const port = 3000;

app.use(express.static("public"));
app.use(express.urlencoded({ extended: false }));

const connection = createConnection({
  host: "LOCALHOST",
  user: "ROOT",
  password: "PASSWORD",
  database: "DATABASENAME",
});

app.get("/read", (_request: Request, response: Response) => {
  read(response, connection);
});

app.listen(port, () => console.log("Expressに接続しました。"));
