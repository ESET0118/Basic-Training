function Counter(){
  const msg=`Hello,
  I am Prakritish,
  welcome to React world!`;
  console.log(msg);

  const name="Prakritish";
  const age=21;
  const person={name,age};
  console.log(person.age,person.name);

  const utils={
    greet(){
      console.log("Hello, I am a method inside an object");
    }
  }
  utils.greet();

  const items=[1,2,3,4,5];
  const list=items.map((it)=>it*2);
  console.log(list);

  const even=items.filter((it)=>it%2===0);
  console.log(even);

  const sum=items.reduce((acc,v)=>acc+=v,0);
  console.log(sum);

  const max=items.reduce((acc,v)=> v>acc?v:acc,0);  //if(v>acc) return v; else return acc;
  console.log(max);


  return(<>{msg}</>);
}

export default Counter; 