import React,{useReducer} from "react";

function useReducerComponent(){

    const initialState={count:0}

    const [state,dispatch]=useReducer(reducer,initialState)


    const reducer =(state,action)=>{
        switch(action.type){
            case "increment":
                return {...state,count:state+1}
            case "decrement":
                return {...state,count:state-1}
            default:
                return {...state}
        }

    }




    return(
        <>
        <p>Count : {state.count}</p>
        <button onClick={()=>{dispatch({type:"increment"})}}>Increment</button>
        <button onClick={()=>{dispatch({type:"decrement"})}}>Decrement</button>
        </>
    );
}

export default useReducerComponent;