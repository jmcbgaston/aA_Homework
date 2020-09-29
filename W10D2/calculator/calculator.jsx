import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    // this.setState = { result, input1, input2 }

    this.state = {
      result: 0,
      // ties to this.state.result
      num1: "", 
      num2: ""
      // so this.state.num1
      // also this.state.num2
    }
    // The state of your app is just a Javascript object. For the calculator, it will contain three keys: the result and the two user-inputted numbers.

    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
    // We have to bind any function in which we want to preserve the scope of this. Remember to bind your functions in the constructor!
  }

  setNum1(e) {
    this.setState( { num1: e.currentTarget.value } )
  }
  setNum2(e) {
    this.setState( { num2: e.currentTarget.value } )
  }

  add(e) {
    e.preventDefault()
    this.setState( { result: ((parseInt(this.state.num1) + parseInt(this.state.num2))) } )
  }
  subtract(e) {
    e.preventDefault()
    this.setState( { result: ((parseInt(this.state.num1) - parseInt(this.state.num2))) } )
  }
  multiply(e) {
    e.preventDefault()
    this.setState( { result: ((parseInt(this.state.num1) * parseInt(this.state.num2))) } )
  }
  divide(e) {
    e.preventDefault()
    this.setState( { result: ((parseInt(this.state.num1) / parseInt(this.state.num2))) } )
  }
  clear(e) {
    e.preventDefault()
    this.setState( { result: 0, num1: "", num2: "" } )
  }

  render(){
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1} value={this.state.num1} />
        <input onChange={this.setNum2} value={this.state.num2} />
        <button onClick={this.clear} value={this.state.result}>Clear</button>
        <br />
        <button onClick={this.add} value={this.state.result}>+</button>
        <button onClick={this.subtract} value={this.state.result}>-</button>
        <button onClick={this.multiply} value={this.state.result}>*</button>
        <button onClick={this.divide} value={this.state.result}>/</button>
      </div>
    );
    // Let's make the input fields. We want the state to receive the new value of the input field every time something is typed in. We can do this by passing an onChange event handler prop to the input field. Whenever the input field's value changes (via the user), the input will run its onChange prop, which should be a callback function
  }
}

export default Calculator;
