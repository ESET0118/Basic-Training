import React from "react";

function FormEvent(){

    const [userName, setUserName] = React.useState("");
    function onChangeHandler(event){
        setUserName(event.target.value);
        console.log(event.target.value);
    }


    return(
        <>
        <input type="text" onChange={onChangeHandler} ></input>
        </>
    );
}

export default FormEvent;