load 'Node.rb'
class List
	attr_accessor :head, :tail, :size

	def initialize
		@size=0
	end
	
	def addNode (value)
		if @head.nil?
			@head=@tail=Node.new(value,nil,nil)
		else
			@tail.nextnode=Node.new(value,@tail,nil)
			@tail=tail.nextnode
		end
		@size+=1
	end
	
	def delNode (number)
		if(number>size || number<1)
			puts "have not such node"
		else
			n=1
			node=@head
			while n<number
				node=node.nextnode
			n+=1
			end
			if node.prev == nil
				if (size == 1)
					@head=nil
					@tail=nil
				else
					node.nextnode.prev=nil
					@head=node.nextnode
				end
				@size-=1
				puts "Element " + number.to_s+" deleted"
			end
			if node.nextnode == nil
				node.prev.nextnode=nil
				@tail=node.prev	
				@size-=1	
				puts "Element " + number.to_s+" deleted"
			end
			if node.prev != nil && node.nextnode != nil
				node.prev.nextnode=node.nextnode
				node.nextnode.prev=node.prev
				@size-=1
				puts "Element " + number.to_s+" deleted"
			end
		end
	end
					

	def to_s
	
		return "" unless @head
		node=@head
		result = "#{@head.value}"
		result +=" #{node.value}" while node=node.nextnode
		result
	end
end

list = List.new
list.addNode(8)
list.addNode(14)
list.addNode(15)
list.addNode(17)
list.addNode(19)
list.addNode(119)
puts list
list.delNode(3)
puts list			













