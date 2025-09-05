function Counter(){
  const prev={name:'A',age:20};
  const next={...prev,age:21};
  console.log(next);
  next.age=22;
  console.log(next);
  console.log(prev);

  return(<></>);
}

export default Counter; 