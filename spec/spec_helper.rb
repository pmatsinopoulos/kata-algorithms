require 'kata/algorithms'
ROOT = File.expand_path(File.join(File.expand_path('..', __FILE__), '..'))
$: << File.join(ROOT, 'spec', 'support')
$: << File.join(ROOT, 'spec', 'kata', 'algorithms', 'sum_of_three')
require 'read_examples'

