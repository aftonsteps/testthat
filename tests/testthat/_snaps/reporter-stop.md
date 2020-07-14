## produces useful output

    Test succeeded 🥇
    Test succeeded 🎊
    ── tests.R:12:3: failure: Failure:1 ────────────────────────────────────────────
    Failure has been forced
    
    ── tests.R:16:3: failure: Failure:2a ───────────────────────────────────────────
    Failure has been forced
    
    ── tests.R:19:3: failure: Failure:2b ───────────────────────────────────────────
    FALSE isn't true.
    
    ── tests.R:24:5: failure: Failure:loop ─────────────────────────────────────────
    `i` not equal to 2.
    1/1 mismatches
    [1] 1 - 2 == -1
    
    ── tests.R:33:3: error: Error:1 ────────────────────────────────────────────────
    Error: stop
    
    ── tests.R:47:3: error: Error:3 ────────────────────────────────────────────────
    Error: !
    Backtrace:
     1. f()
     2. g()
     3. h()
    
    ── tests.R:56:3: error: Recursion:1 ────────────────────────────────────────────
    Error: This is deep
    Backtrace:
      1. f(25)
      2. f(x - 1)
      3. f(x - 1)
      4. f(x - 1)
      5. f(x - 1)
      6. f(x - 1)
      7. f(x - 1)
      8. f(x - 1)
      9. f(x - 1)
     10. f(x - 1)
         ...
     17. f(x - 1)
     18. f(x - 1)
     19. f(x - 1)
     20. f(x - 1)
     21. f(x - 1)
     22. f(x - 1)
     23. f(x - 1)
     24. f(x - 1)
     25. f(x - 1)
     26. f(x - 1)
    
    ── tests.R:62:3: skip: Skip:1 ──────────────────────────────────────────────────
    Reason: skip
    
    ── tests.R:69:3: skip: Skip:2 ──────────────────────────────────────────────────
    Reason: skip
    
    ── tests.R:72:1: skip: Skip:3 ──────────────────────────────────────────────────
    Reason: empty test
    
    ── tests.R:78:3: warning: Warning:1 ────────────────────────────────────────────
    abc
    
    ── tests.R:84:3: warning: Warning:2 ────────────────────────────────────────────
    def
    
    ── tests.R:85:3: warning: Warning:2 ────────────────────────────────────────────
    ghi
    Backtrace:
     1. f()
    
    Test succeeded 🌈
    ── tests.R:111:3: error: Error:4 ───────────────────────────────────────────────
    Error: Throwable
    

## stop stops at first failure

    ── fail.R:4:3: failure: two failures ───────────────────────────────────────────
    FALSE isn't true.
    
    ── fail.R:5:3: failure: two failures ───────────────────────────────────────────
    TRUE isn't false.
    
    Test failed 
