import "./style.css";
const main = () => {
  const loadButton = document.querySelector(".load-button");
  if (!(loadButton instanceof HTMLButtonElement)) {
    return;
  }
};
window.addEventListener("load", main);
