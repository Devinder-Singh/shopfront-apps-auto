

export default {
  
  /**
   * @method GET
   * @param {string} url 
   * @param {function} cb 
   */
  GET(url, cb) {
    fetch(url, new Headers({ 'Content-Type': 'application/json' }) )
    .then(this._checkError)
    .then(text => cb(text))
    .catch(e => console.warn(e))
  },

  _checkError(res) {
    if (!!res.ok && res.status == 200) { 
      return res.text().then(res => Promise.resolve(res))
    } else {
      console.warn('Fetch failed: ', res );
      return Promise.reject(Error(e))
    }
  }
}