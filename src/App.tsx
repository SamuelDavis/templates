import type { Component } from "solid-js";
import styles from "./App.module.css";

const App: Component = () => {
  const text = "Hello, world!";
  return (
    <main>
      <h1 class={styles.example}>{text}</h1>
    </main>
  );
};

export default App;
