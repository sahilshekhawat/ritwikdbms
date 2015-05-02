class OrderDetail < ActiveRecord::Base
	self.table_name = "Order_Details"
	self.primary_keys = :ONO,:PNO
end
