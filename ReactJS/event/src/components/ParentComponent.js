import React, { useState } from "react";

function ParentComponent(){
    const [count,setCount]=useState(0)
    return(
        <>

        <Sibling1 count={count}/>
        <br/>
        <Sibling2 setCount={setCount}/>
        
        </>
    );
}

function Sibling1(props){
    return(
        <>{props.count}</>
    );
}

function Sibling2({setCount}){
    const incrementHandler= () =>{
        setCount(prev => prev+1)
    }
        const decrementHandler= () =>{
        setCount(prev => prev-1)
    }
    return(<>

        <button onClick={incrementHandler}>Increment</button>
        <button onClick={decrementHandler}>Decrement</button>

        </>
    );
}

export default ParentComponent;