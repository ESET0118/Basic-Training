import React from "react";

function UseRefComponent(){

    const inputElement=React.useRef(null)

    const focusHandler= () => {
        inputElement.current.focus();
    }

    return(<>
    Welcome to UseRef Hook
    <br/>
    <input ref={inputElement}></input>
    <br/>
    <button onClick={focusHandler}> Focus </button>
    
    
    </>);

}

export default UseRefComponent;