require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test 'should not save todo without title' do
    todo = todos(:one)
    todo.title = nil
    assert_not todo.save, 'saved todo without title'
  end

  test 'should not save todo without notes' do
    todo = todos(:one)
    todo.notes = nil
    assert_not todo.save, 'saved todo without notes'
  end

end
