import React from "react";

function UseEffectComponent() {

    const suggestions = ["apple","banana","grape","orange","mango","kiwi","pear"];
    const [search,setSearch] = React.useState("");

    React.useEffect(()=>{
        setSearch(suggestions.filter((elem)=>elem.includes(search)));
    },[search]);


    return(<>
    <input value={search} onChange={(e)=>setSearch(e.target.value)}></input>
    {
        
    }

    </>);
}

export default UseEffectComponent;