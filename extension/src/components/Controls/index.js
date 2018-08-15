import React, { Component } from 'react'
import './style.less'

/**
 * @class Controls
 * @extends Component
 * @classdesc Controls components
 */
export default class Controls extends Component  {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <div>
      <aside class="Controls">
          <button id="bgo">Go ></button>
          <button id="bstop" style="display:none;">Stop Recording</button>
          <button id="bcomment" style="display: none;">Add Comment</button>
          <button id="bexport" style="display: none;">Export NightwatchJS</button>
          <button id="bexportxy" style="display: none;">Export NightwatchJS with (x,y) coords</button>
          <button id="bdoc" style="display: none;">Export doc</button>
      </aside>
      <article>
          <strong>URL:</strong>
          <input type="text" size="80" name="url" />
      </article>
      </div>
    )
  }
}