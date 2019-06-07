require 'test_helper'
require "minitest/autorun"

class AwesomeBackUrl::Test < Minitest::Test
  def test_helper1
    assert_equal subject.awesome_back_path('/path', except: /\/new|\/edit/, fallback: '/users'), '/path'
  end

  def test_helper2
    assert_equal subject.awesome_back_path('/path/new', except: /\/new|\/edit/, fallback: '/users'), '/users'
  end

  def test_helper3
    assert_equal subject.awesome_back_path('/path/edit', except: /\/new|\/edit/, fallback: '/users'), '/users'
  end

  def test_helper4
    assert_equal subject.awesome_back_path('/path', only: /\/new|\/edit/, fallback: '/users'), '/users'
  end

  def test_helper5
    assert_equal subject(path: '/path').awesome_back_url('/path', fallback: '/users'), '/users'
  end

  private
  def subject(options = {})
    controller = ApplicationController.new
    controller.request = OpenStruct.new(options)
    controller
  end
end
