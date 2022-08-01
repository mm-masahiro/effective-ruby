require('csv')

class AnnualWeather
	Reading = Struct.new(:date, :high, :low)

	def initialize(file_name)
		@readings = []
	
		CSV.foreach(file_name, headers: true) do |row|
			# hashに変換してから配列に入れている → 全てのハッシュが同じキーで異なる値を持っている
			@readings << Reading.new(Date.parse(row[2]),
																row[10].to_f,
																row[11].to_f
															)
		end		
	end
end
