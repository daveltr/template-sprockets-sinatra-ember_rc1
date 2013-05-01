class DataFixtures 
  attr_accessor :blocks
  def initialize
    wwd = {
      :title=>'What We Do',
      :body =>"IT Consultancy, Software Engineering and Development"
    }
    how_to_contact = {
      :title=>"How To Contact Us", 
      :body =>'Email shore_support@shoresupportllc.com'
    }
    @blocks = [wwd, how_to_contact]
  end
end