---
inject: true
to: 'next.config.js'
before: \/\*\* CREATE ENV FROM CONFIG FILE \*\/
skip_if: "const projectFileJSON"
---
const projectFileJSON = JSON.parse(fs.readFileSync('../project.json', 'utf8'))
