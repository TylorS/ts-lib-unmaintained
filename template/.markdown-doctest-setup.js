function noop () {}

module.exports = {
  require: {
    '{{package_name}}': require('{{package_name}}')
  },

  globals: {
    console: {
      log: noop,
      error: noop
    }
  }
}