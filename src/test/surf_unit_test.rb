require 'rspec'

# describe add_session do
#     it "adds user information into surf class object" do
#         expect 
#     end
# end

#test case success


#test case fail
describe UserInterface do
    describe ".export_YAML" do
        it "exports Surf object to YAML" do
            expect(UserInterface.export_YAML("")).to eql? 0
        end
    end
end





# def export_YAML

#     if @list.session.size >= 1
#         surf = @list
#         puts surf.to_yaml
#         File.open("src/#{surf.filename}.yml", "w") { |file| file.write(surf.to_yaml)}
#         puts "Export successful!".colorize(:green)
#         puts "For your convenience, we have exported the file into the src folder"
#         puts "press any key to continue"
#         input = gets.chomp
#     else
#         system("clear")
#         puts "Export unsuccessful!".colorize(:red)
#         puts "You need to input information before exporting".colorize(:red)
#         puts "press any key to continue"
#         input = gets.chomp
#     end
# end