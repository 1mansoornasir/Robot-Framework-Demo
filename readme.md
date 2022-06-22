## Robot Command to run all tests at once 
        robot -d reports --variablefile .\resources\selectors.yml  .\tests\

## Pabot Command to run all the suites in parallel 
        pabot -d reports --variablefile .\resources\selectors.yml  .\tests\Task*.robot

## Browser from Command Line
        robot -d reports --variablefile .\resources\selectors.yml --variable browser:chrome  '.\tests\Task04-Calendar.robot'
