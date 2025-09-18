
const style={
  backgroundColor: 'blue',
  color: 'white',
  padding: '10px 20px',
  border: 'none',
  borderRadius: '5px',
  cursor: 'pointer',
  fontSize: '16px',
  fontWeight: 'bold',
  boxShadow: '0 4px 6px rgba(0, 0, 0, 0.1)',
  transition: 'background-color 0.3s ease',
  margin: '20px'
};


function ButtonComponent() {

  const buttonHandler=()=>{
    alert('Button Clicked');
  }

  return (
    <>
    <button style={style} onClick={buttonHandler}> Click Me </button>
    </>
  );
}

export default ButtonComponent;
