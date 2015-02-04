runtime! plugin/sample.vim

call vspec#hint({'scope': 'vspec#scope()', 'sid': 'vspec#sid()'})

describe ':Expect'
  it 'succeeds if an actual value matches to an expected value'
    let something = 'foo'
    Expect something ==# 'foo'
  end
end

function! Sample2()
  let x = 'a'
  return x
endfunction

describe 'Set'
  it 'sample'
    Expect Call('Sample') ==# 'a'
  end

  it 'sample2'
    Expect Call('Sample2') ==# 'a'
  end
end
