module LocationFu::SerializerMethods
	def serializable_record(*args)
		ret = super
		ret.merge!(options[:merge] || {})
		return ret
	end
end