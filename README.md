# Bank tech test

## Specifications
#### Requirements
```
1.You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
2.Deposits, withdrawal.
3.Account statement (date, amount, balance) printing.
4.Data can be kept in memory (it doesn't need to be stored to a database or anything).
```
#### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```


### User Stories

```
1. As a user so that I don't carry a large sum of money around, I'd like to deposit money into my account.
2. As a user so that I can pay for things in cash when needed i'd like to be able to withdraw money from my account.
3.So that I can keep track and see the activities on my account, i'd like to see my account statement with the date,transaction type,amount and balance.
