class Person
  def name
		puts "called name method!!"
  end
end

class Customer < Person
end

customer = Customer.new

# 特異メソッド
# このコードを実行する時にRubyは特異クラスを作る
# インスタンスメソッドとしてnameメソッドをインストールして、customerオブジェクトのクラスはこの特異クラスになっている
# def customer.name
# 	'Leonard'
# end

# class SuperSilliness < SillyBase
# 	def m1(x, y)
# 		super(1, 2) # 1と2を渡して呼び出し
# 		super(x, y) # xとyを渡して呼び出し
# 		super x, y # 上と同じ
# 		super # 上と同じ
# 		super() # 引数なしで呼び出し
# 	end
# end

class Parent
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

class Child < Parent
	attr_accessor :grade

	def initialize(grade)
		@grade = grade
	end
end

class Child2 < Parent
	attr_accessor :name, :grade

	def initialize(name, grade)
		super(name)
		@grade = grade
	end
end

parent = Parent.new('Howard')
child = Child.new(8)

puts parent.name
puts child.grade
# superクラスのinitializeメソッドは呼び出されないため、nilになる
puts child.name

child2 = Child2.new('Hoge', 10)
puts child2.name
puts child2.grade
