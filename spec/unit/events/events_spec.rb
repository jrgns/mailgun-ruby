require 'spec_helper'

describe 'The method get' do
  it 'should return a proper hash of log data.' do
    @mg_obj = Mailgun::UnitClient.new('events')
    events = Mailgun::Events.new(@mg_obj, "samples.mailgun.org")
    result = events.get()
    
    expect(result.body).to include("items")
    expect(result.body).to include("paging")
  end
end


describe 'The method next' do
  it 'should return the next series of data.' do
    @mg_obj = Mailgun::UnitClient.new('events')
    events = Mailgun::Events.new(@mg_obj, "samples.mailgun.org")
    result = events.next()
    
    expect(result.body).to include("items")
    expect(result.body).to include("paging")
  end
end

describe 'The method previous' do
  it 'should return the previous series of data.' do
    @mg_obj = Mailgun::UnitClient.new('events')
    events = Mailgun::Events.new(@mg_obj, "samples.mailgun.org")
    result = events.previous()

    expect(result.body).to include("items")
    expect(result.body).to include("paging")
  end
end
