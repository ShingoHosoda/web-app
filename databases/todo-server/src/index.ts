import express, { Request, Response } from "express";
import { Connection, createConnection, QueryError } from "mysql2";
import type { TypeTodo } from "./TypeTodo";
const app: express.Express = express();
const port = 3000;

app.use(express.static("public"));
app.use(express.urlencoded({ extended: false }));

const connection = createConnection({
  host: "localhost",
  user: "root",
  password: "gokugoku200",
  database: "practice",
});

const read = (response: Response, connection: Connection) => {
  connection.query(
    "SELECT * FROM todo;",
    (_error: QueryError, results: TypeTodo[]) => {
      console.log(results);
      response.send(results);
    },
  );
};

app.get("/read", (_request: Request, response: Response) => {
  read(response, connection);
});

app.listen(port, () => console.log("Expressに接続しました。"));
