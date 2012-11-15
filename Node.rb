class Node
	attr_accessor :value, :prev, :nextnode
	def initialize (value,prev,nextnode)
		@value = value
		@prev = prev 
		@nextnode = nextnode
	end
		
	def to_s
		if(@value == nil)
			return nil;
		else
			return @value.to_s
		end
	end
end

