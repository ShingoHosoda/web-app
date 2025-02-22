import "./style.css";
type TypeTodo = {
  id: number;
  title: string;
  dueDate: Date;
  completed: boolean;
};

const main = () => {
  const loadButton = document.querySelector(".load-button");
  if (!(loadButton instanceof HTMLButtonElement)) {
    return;
  }

  const log = document.querySelector(".log");
  if (!(log instanceof HTMLElement)) {
    return;
  }

  loadButton.addEventListener("click", () => {
    const load = async () => {
      const data = await fetch("http://localhost:3000/read");
      const todos: TypeTodo[] = await data.json();
      console.log(todos);
      log.innerHTML = JSON.stringify(todos, null, " ");
    };
    load(); // APIを読み込んで表示します。
  });
};
window.addEventListener("load", main);
