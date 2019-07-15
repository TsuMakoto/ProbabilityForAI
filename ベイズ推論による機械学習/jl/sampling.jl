max_f(f, range) = begin
  max_value = 0
  for x ∈ range
    max_value = max(max_value, f(x))
  end
  max_value
end

# 棄却法によりtarget_funcに従う乱数生成
function rejection_method(target_func, trial, range)
  s = []
  max_value = max_f(target_func, range)
  while length(s) < trial
    x,y = rand(range), rand(0:max_value)
    if target_func(x) >= y
      push!(s, x)
    end
  end
  s
end

function dirichlet_rand(trial, Α)
  size = length(A)
  max_size = length(A)^50
  s = [ones(length(A)) for i = 1:max_size]
  ones_table = ones(max_size)
  def_range = 1
  while size > 0
    for i = 1:max_size
      random = 0:0.01:ones_table[i]
      s[i][size] = ramdom
      ones_table[i] = ones_table[i] - ramdom
    end
    size -= 1
  end
  max_f(Dir, s)

  ret = []
  while length(ret) < trial
    x,y = dir_sample_x(length(A)), rand(0:max_value)
    if Dir(x) >= y
      push!(ret, x)
    end
  end
end

function dir_sample_x(D)
  def_size = 1
  s = zeros(D)
  for i = 1:D - 1
    sam = 0::.01:def_size
    s[i] = sam
    def_size = def_size - sam
  end
  s[D] = 1 - def_size
  s
end
