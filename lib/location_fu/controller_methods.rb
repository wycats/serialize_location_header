module LocationFu::ControllerMethods
  def render(*args)
    options = args.last.is_a?(Hash) ? args.last : {}
  
		if !options[:json].nil? and options.include? :location
		  json = options[:json]
		  options[:json] = json.to_json if json.is_a?(ActiveRecord::Base)
		  options[:json].merge! "_location" => options.delete(:location)
		end
    super
  end	
end