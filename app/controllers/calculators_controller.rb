class CalculatorsController < ApplicationController
      def index
  end

  def new
  	hash = {
	".-"=> "A", "-..."=> "B" ,"-.-."=> "C","-.."=>"D", "."=>"E", "..-."=>"F", "--."=> "G",
	"...."=>"H" ,".."=>"I" ,".---"=>"J" ,"-.-"=>"K", ".-.." =>"L" ,"--"=> "M","-."=>"N" ,"---"=>"O",
	".--."=>"P", "--.-"=>"Q", ".-."=>"R","..."=>"S","-"=>"T","..-"=>"U","...-"=>"V",".--"=>"W",
	"-..-"=>"X","-.--"=>"Y","--.."=>"Z",".----"=>"1","..---"=>"2","...--"=>"3","....-"=>"4", "....."=>"5",
	"-...."=>"6","--..."=>"7","---.."=>"8","----."=>"9","-----" =>"0"
} 
	mas = (params[:a]).split("   ")
	@result=mas.map{|a| mas3=a.split(" ")
	mas3.map{|c| hash[c]}.join}.join(" ")
    render :index

   end



    def new2
  	hash = {
	 "A"=>".-","B"=> "-..."  ,"C"=>"-.-." ,"D"=>"-..","E" =>".", "F"=>"..-.","G" => "--.",
	"H"=> "....","I"=> "..","J" =>".---","K"=>"-.-", "L" =>".-.." ,"M"=> "--","N"=> "-.","O"=>"---",
	"P"=>".--.","Q" =>"--.-", "R"=>".-.","S"=>"...","T"=>"-","U"=>"..-","V"=>"...-","W"=>".--",
	"X"=>"-..-","Y"=>"-.--","Z"=>"--..","1"=>".----","2"=>"..---","3"=>"...--","4"=>"....-","5" =>".....",
	"6"=>"-....","7"=>"--...","8"=>"---..","9"=>"----.","0" =>"-----"
} 
	mas = (params[:b]).upcase.split(" ")
	@result2=mas.map{|a| mas3=a.split("")
	mas3.map{|c| hash[c]}.join(" ")}.join("  ")
    render :index

   end




end
