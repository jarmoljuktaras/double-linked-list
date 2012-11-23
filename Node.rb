class Node
	attr_accessor :value, :prevnode, :nextnode
	def initialize (value,prevnode,nextnode)
		@value = value
		@prevnode = prevnode 
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

