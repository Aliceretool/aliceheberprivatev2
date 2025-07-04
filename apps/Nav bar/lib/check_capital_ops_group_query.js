// currently unused
let is_capital_ops = !current_user.groups.some(group => group.name === "Capital Operations")
if (is_capital_ops) {
  // invoke modal to pop up confirming user wants to be in production here
  return true
}
return false