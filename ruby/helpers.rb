# Fastest way to quit
def q; exit end

# Just in case
def save_current_session path
  File.open path, 'w' do |f|
    f << Readline::HISTORY.to_a.join("\n")
  end
end

#
# Toys for trying things fast
#

class C; self; end
def s; 'Example string' end
def a; ['a', 'b', 'c', 'd'] end
def h; { a: 'A', b: 'B', c: 'C', d: 'D' } end
def nh; { a: { b: { c: { d: 'D' } } } } end
