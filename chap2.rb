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
def customer.name
	'Leonard'
end

class SuperSilliness < SillyBase
	def m1(x, y)
		super(1, 2) # 1と2を渡して呼び出し
		super(x, y) # xとyを渡して呼び出し
		super x, y # 上と同じ
		super # 上と同じ
		super() # 引数なしで呼び出し
	end
end
