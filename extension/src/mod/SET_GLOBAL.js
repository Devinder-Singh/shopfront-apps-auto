export default obj => {
  this.setState(Object.assign({}, this.state, obj));
}