import React, { Component } from 'react'
import './style.less'

/**
 * @class Nav
 * @extends Component
 * @classdesc basic NavBar
 */
export default class Nav extends Component  {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <div class="Nav">
      <span><img class="logo" src="/logo.svg" /></span>
      <span class="nav-right">ensure</span>
   </div>
    )
  }
}