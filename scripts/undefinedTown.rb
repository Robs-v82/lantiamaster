County.all.each {|x|
	if x.towns.where(:name=>"Sin definir").length == 0
	 	my_full_code = x.full_code + "0000"
	 	Town.create(:name=>"Sin definir", :code=>"0000", :full_code=>my_full_code, :county_id=>x.id)
	 end 
}