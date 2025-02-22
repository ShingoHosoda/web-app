import { Response } from "express";
import { Connection, QueryError } from "mysql2";
import type { TypeTodo } from "./TypeTodo";
/**
 * todoテーブルを読み込みます。
 * @param response クライアントへのレスポンス
 * @param connection データベースとの接続
 */
export const read = (response: Response, connection: Connection) => {
  connection.query(
    "SELECT * FROM todo;",
    (_error: QueryError, results: TypeTodo[]) => {
      // console.log(results);
      response.send(results);
    },
  );
};
