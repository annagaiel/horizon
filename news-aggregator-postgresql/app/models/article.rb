require 'uri'
require 'pg'
require_relative 'database'

class Article
  attr_reader :title, :url, :description

  include Database

  def initialize(title, url, description)
    @title = title
    @url = url
    @description = description
    @error = []
  end

  def error
    if missing_fields_message
      @error << "Please completely fill out form"
    end

    if invalid_url_message && @url != ''
      @error << "Invalid URL"
    end

    if url_already_exists_message && @url != ''
      @error << "Article with same url already submitted"
    end

    if description_too_short_message && @description != ''
      @error << "Description must be at least 20 characters long"
    end
    @error
  end


  def missing_fields_message
    @title == '' || @url == '' || @description == ''
  end

  def invalid_url_message
    @url =~ URI::regexp ? false : true
  end

  def url_already_exists_message
    articles = db_connection { |conn| conn.exec("SELECT url FROM articles") }
    articles.each do |article|
      if article["url"] == @url
        return true
      end
    end
    false
  end

  def description_too_short_message
    @description.length < 20
  end

end
