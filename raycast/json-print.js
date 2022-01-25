#!/usr/bin/env node

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title Json Print
// @raycast.mode fullOutput

// Optional parameters:
// @raycast.icon 🤖
// @raycast.argument1 { "type": "text", "placeholder": "Json" }
// @raycast.packageName Tool

const util = require('util')

data = JSON.parse(process.argv.slice(2)[0])
console.log(util.inspect(data, {showHidden: false, depth: null, colors: true}))
