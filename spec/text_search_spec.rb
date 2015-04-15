require 'spec_helper'

describe TextSearch do
  it 'has a version number' do
    expect(TextSearch::VERSION).not_to be nil
  end

  it 'result not to be empty from google.com' do
    text = TextSearch::Web.new("www.google.com",["google"])
    result = text.search
    expect(result.first.values[0]).to be > 0
  end

  it 'result to be empty from getsnapp.com' do
    text = TextSearch::Web.new("www.getsnapp.com",["lorem"])
    result = text.search
    expect(result.first.values[0]).to be == 0
  end

  it 'result not to be empty from github.com' do
    text = TextSearch::Web.new("www.github.com",["git"])
    result = text.search
    expect(result.first.values[0]).to be > 0
  end

  it 'result == 1 from "This is an awesome test. Try it and enjoy" and word "test"' do
    text = TextSearch::Text.new("This is an awesome test. Try it and enjoy",["test"])
    result = text.search
    expect(result.first.values[0]).to eq(1)
  end
end
