if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "minitest_log"
syntax  match    testEnd             "Finished in"
syntax  match    testEnd             "Finished in"
syntax  match    run                 "# Running:"
syntax  match    runs                "\v\d+ runs"
syntax  match    validRun            "\v(^|\.|E|F)@<=\.($|\.|E|F)@="
syntax  match    validRun            "\v\d+ assertions"
syntax  match    errorRun            "\v(^|\.|E|F)@<=E($|\.|E|F)@="
syntax  match    errorRun            "\v[1-9]\d? errors"
syntax  match    failureRun          "\v(^|\.|E|F)@<=F($|\.|E|F)@="
syntax  match    failureRun          "\v\d+ failures"
syntax  match    skipRun             "\v\d+ skips"
syntax  match    benchmark           "\v\d+\.\d+ ?(s|runs|assertions)@="
syntax  match    units               "\v(\d+ ?)@<=(s(,)@=|runs/s|assertions/s)"
syntax  match    numberedTitle       "\v\d+\)( \w+:)@="
syntax  match    errorTitle          "\v(\) )@<=Error(:)@="

hi  link  testEnd        Identifier
hi  link  run            Identifier
hi  link  runs           Underlined
hi  link  validRun       Statement
hi  link  errorRun       ErrorMsg
hi  link  failureRun     Error
hi  link  benchmark      Constant
hi  link  units          Identifier
hi  link  numberedTitle  Title
hi  link  errorTitle     ErrorMsg
hi  link  skipRun        DiffChange
