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
	
	def addNodeAfter (number,value)
		if(number>@size || number<1)
			puts "have not such node"
		else
			n=1
			node=@head
			while n<number
				node=node.nextnode
				n+=1
			end
			if node.nextnode==nil
				self.addNode(value)
			else
				new_node=Node.new(value,nil,nil)
				new_node.nextnode=node.nextnode
				new_node.prev=node
				node.nextnode.prev=new_node
				node.nextnode=new_node
			end
		@size+=1
		end
	end
	
	def addNodeBefore(number,value)
		if(number>@size || number<1)
			puts "have not such node"
		else
			n=1
			node=@head
			while n<number
				node=node.nextnode
				n+=1
			end
			if node.prev==nil
				new_node=Node.new(value,nil,nil)
				@head.prev=new_node
				new_node.nextnode=@head
				@head=new_node
			else
				new_node=Node.new(value,nil,nil)
				new_node.nextnode=node
				new_node.prev=node.prev
				node.prev.nextnode=new_node
				node.prev=new_node
			end
		@size+=1
		end
	end
		
	def putNode (number)
		if(number>@size || number<1)
			puts "have not such node"
		else
			n=1
			node=@head
			while n<number
				node=node.nextnode
			n+=1
			end
		puts "node ["+number.to_s+"] =" +node.to_s
		end
	end
	
	def delNode (number)
		if(number>@size || number<1)
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
list.addNodeAfter(5,22)
puts list
list.addNodeBefore(1,44)
puts list
list.putNode(3)
list.addNodeBefore(1,44)
puts list



 			












