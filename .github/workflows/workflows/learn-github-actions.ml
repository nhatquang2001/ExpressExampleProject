name: learn-github-actions 
run-name: ${{ github.actor }} is learning GitHub Actions
on: [push]
job:
   check-bats-version:
      runs-on: ubuntu_lastest
      steps:
         -uses: actions/checkout@v3
         -uses: actions/setup-node@v3
          with:
             mode-version: '14'
        -run: npm install -g bats
        -run: bats -v
         