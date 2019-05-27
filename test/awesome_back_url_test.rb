require 'test_helper'
require "minitest/autorun"

class AwesomeBackUrl::Test < Minitest::Test
  def test_helper
    assert_equal subject.awesome_back_path('/path', except: /\/new|\/edit/, fallback: '/users'), '/path'
    assert_equal subject.awesome_back_path('/path/new', except: /\/new|\/edit/, fallback: '/users'), '/users'
    assert_equal subject.awesome_back_path('/path/edit', except: /\/new|\/edit/, fallback: '/users'), '/users'
    assert_equal subject.awesome_back_path('/path', only: /\/new|\/edit/, fallback: '/users'), '/users'
    assert_equal subject.awesome_back_url('/path', only: /\/new|\/edit/, fallback: '/users'), '/users'
  end

  private
  def subject
    ApplicationController.new
  end
end
