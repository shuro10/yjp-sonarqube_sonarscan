class ApplicationController < ActionController::Base
  # def hello
  #   render html: "hello"
  # end
  protect_from_forgery #追記
  include SessionsHelper #session用メソッドを自分で定義しなくてもモジュール読み込ませれば、簡単に実装できる:sessionメソッドはハッシュのように扱える
end
