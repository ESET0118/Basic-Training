import { useState } from "react";
import Button from './Button'

function Counter(){

    const [count,setCount]=useState(0);

    function increment(){
        setCount(prev=>prev+1);
    }
    function decrement(){
        setCount(prev=>prev-1);
    }


    return(
        <>
        <h1>Count : {count}</h1>
        <Button label="increment" onClick={increment}/>
        <Button label="decrement" onClick={decrement}/>

        </>
    );
}

export default Counter;