Running all tests headed and on firefox

# Playwright:
(dont forget this has native cross-browser parallel support, reducing speed out of the box a lot)
execution time: 3.2s

# Cypress:
Hardest to get working and work with (in my opinion)
`npx cypress run .\cypress\e2e\demo-test-webshop.spec.js --browser firefox --headed`
execution time: 00:04

# Robotframework
Least overhead and easiest to set up (in my opinion)
execution time: 00:11.383