require "spec_helper"
require "magemto/rest/oauth"

describe "Magemto::REST::OAuth" do
  before(:all) do
    @oauth = Magemto::REST::OAuth.new("magemto","zjlbw63tvqcn7f43pt2xedzabi42ridj","5qx7cwen4exziq58oieftu3qirwzp8vu")
  end

  it "should not instantiate without arguments" do
    lambda { Magemto::REST::OAuth.new }.should raise_error(ArgumentError)
  end
  
  context "setting class variables" do
    it "should set name" do
      @oauth.name = "magemto"
      @oauth.instance_eval{ @name }.should match "magemto"
    end

    it "should set key" do
      @oauth.key = "zjlbw63tvqcn7f43pt2xedzabi42ridj"
      @oauth.instance_eval{ @key }.should match "zjlbw63tvqcn7f43pt2xedzabi42ridj"
    end

    it "should set secret" do
      @oauth.secret = "5qx7cwen4exziq58oieftu3qirwzp8vu"
      @oauth.instance_eval{ @secret }.should match "5qx7cwen4exziq58oieftu3qirwzp8vu"
    end
  end

  context "setting up oauth object" do
    require 'oauth'
    it "should have consumer" do
      @oauth.instance_eval{ @oauth }.should be_instance_of(OAuth::Consumer)
    end
  end
end
