import React, { Component } from 'react';
import ACTION from './actions'
import Nav from '../components/Nav'
import './style.less'

/**
 * @class App
 * @extends Component
 * @classdesc Top Level Compoent
 */
export default class App extends Component {
  constructor(props) {
    super(props);
    Object.assign(this, ACTIONS);
    Object.keys(ACTIONS).forEach(v => { if (typeof this[v] === "function") { this[v] = this[v].bind(this) }});

    this.recorder = new RecorderProxy();
    
    this.state = { 
      title: 'Ensure'
    };
  }

  render() {  
    return (
      <div className="view">
        <Nav {...this.state} />
        <Controls />
        <Footer />
      </div>
    )
  }
}