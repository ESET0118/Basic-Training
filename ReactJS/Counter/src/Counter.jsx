function Counter(){
  return (
    <div>
      <h1 id="count">0</h1>
      <button onClick={() => {
        const countElement = document.getElementById('count');
        var count = parseInt(countElement.innerText);
        count++;
        countElement.innerText = count;
        }}>
        Increment
      </button>
      <br></br>
      <br></br>
      <button onClick={() => {
        const countElement = document.getElementById('count');
        var count = parseInt(countElement.innerText);
        count--;
        countElement.innerText = count;
        }}>
        Decrement
      </button>
    </div>
  );
}

export default Counter