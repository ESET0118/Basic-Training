import React from 'react';


const style = { fontSize: '50px', color: 'blue', display: 'flex', textAlign: 'center', justifyContent: 'center', marginTop: '20px' };



function App() {

  const [ count, setCount ] = React.useState(0);

  const increment = () => {

    setCount(count + 1);

  }
    const decrement = () => {

    setCount(count - 1);

  }
  return (
    <>
      <h1 style={style} >{count}</h1>
      <button style={style} onClick={increment}>increment</button>
      <button style={style} onClick={decrement}>decrement</button>

    </>


  );
}

export default App;
