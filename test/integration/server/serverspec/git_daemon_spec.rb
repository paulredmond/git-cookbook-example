require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "Git daemon" do
    it "Is listening on port 9418" do
        expect(port(9418)).to be_listening
    end
    
    it "Has a running service of git-daemon" do
        expect(service("git-daemon")).to be_running
    end
end

