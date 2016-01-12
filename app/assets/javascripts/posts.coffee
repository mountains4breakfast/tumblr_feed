# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
    base = 'http://api.tumblr.com/v2'
    user = 'mountainsforbreakfast.tumblr.com'
    api_key = $('#keys').data('Key')
    $('#get_posts').on 'click', ->
        $.ajax "#{baseUrl}/blog/#{user}/posts",
            type: 'GET'
            data: api_key: api_key
            dataType: 'jsonp'
            success: (data) ->
              for post in data.response.posts
                $('.posts').append "<li><h2>#{post.title}</h2>#{post.body}</li>"