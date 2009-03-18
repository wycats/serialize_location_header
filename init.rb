class ::ApplicationController < ActionController::Base
  include LocationFu::ControllerMethods
end

class ActiveRecord::Serialization::JsonSerializer
  include LocationFu::SerializerMethods
end
