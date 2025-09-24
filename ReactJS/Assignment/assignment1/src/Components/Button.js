function Button({label,onClick}){

    return(<>

    <button style={{backgroundColor:"blue",margin:"5px",padding:"12px",color:"white",border:"none",borderRadius:"9999px",fontSize:"16px"}} onClick={onClick}>{label}</button>
    
    </>);

}

export default Button;