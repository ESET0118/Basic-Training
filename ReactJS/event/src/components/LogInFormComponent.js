import React from 'react';

function LogInFormComponent() {

    const [loginState,setLoginState]=React.useState({
        username:'',
        password:''
    });

    const onUsernameChangeHandler=(event)=>{
        setLoginState({
            ...loginState,
            username:event.target.value
        });
    }

    const onPasswordChangeHandler=(event)=>{
        setLoginState({
            ...loginState,
            password:event.target.value
        });
    }
    const onSubmit=(event)=>{
        console.log(loginState);
        event.preventDefault();
    }

    return (
        <>
            Welcome to Log In Form Component
            <br />
            <form>
                <input type='text' onChange={onUsernameChangeHandler}></input>
                <br></br>
                <input type='password' onChange={onPasswordChangeHandler}></input>
                <br></br>
                <button onClick={onSubmit}>Log In</button>
            </form>

        </>
    );
}

export default LogInFormComponent;