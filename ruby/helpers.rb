# Toys
class C; self; end
def s; 'Example string' end
def a; ['a', 'b', 'c', 'd'] end
def h; { a: 'a', b: 'b', c: 'c', d: 'd' } end
def hn; { a: { b: { c: { d: 'E' } } } } end

def save_current_session path
  File.open path, 'w' do |f|
    f << Readline::HISTORY.to_a.join("\n")
  end
end

def q; exit end
