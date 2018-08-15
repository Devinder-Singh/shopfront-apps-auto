import React, { Component } from 'react'
import './style.less'

/**
 * @class Comment
 * @extends Component
 * @classdesc basic NavBar
 */
export default class Comment extends Component  {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div class="Comment">
          <strong>Comment:</strong> 
          <textarea id="ctext" id="ctext" name="ctext" rows="8" cols="80" placeholder="Comment"></textarea>
          <input type="submit" id="bsavecomment" name="c1" value="Save " /> 
          <input type="submit" id="bcancelcomment" name="c2" value="Cancel " />
   </div>
    )
  }
}