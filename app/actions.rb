# def humanized_time(minute_time)
#     if minute_time >= 60
#         "#{minute_time / 60} hours ago"
#     else
#         "#{minute_time} minutes ago"
#     end
# end

get '/' do
  
    # post_shark = {
    # username: "sharky_j",
    # avatar_url: "http://naserca.com/images/sharky_j.jpg",
    # photo_url: "http://naserca.com/images/shark.jpg",
    # humanized_time_ago: humanized_time(8456),
    # like_count: 0,
    # comment_count: 1,
    # comments: [{
    #     username: "sharky_j",
    #     text: "Out for the long weekend...too embarrassed to show y'all the beach bod"
    # }]
    # }
    
    # post_whale = {
    # username: "kirk_whalum",
    # avatar_url: "http://naserca.com/images/kirk_whalum.jpg",
    # photo_url: "http://naserca.com/images/whale.jpg",
    # humanized_time_ago: humanized_time(65),
    # like_count: 0,
    # comment_count: 1,
    # comments: [{
    #     username: "kirk_whalum",
    #     text: "#weekendvibes"
    # }]
    # }
    
    # post_marlin = {
    # username: "marlin_peppa",
    # avatar_url: "http://naserca.com/images/marlin_peppa.jpg",
    # photo_url: "http://naserca.com/images/marlin.jpg",
    # humanized_time_ago: humanized_time(190),
    # like_count: 0,
    # comment_count: 1,
    # comments: [{
    #     username: "marlin_peppa",
    #     text: "lunchtime! :)"
    # }]
    # }
        
    # @posts = [post_shark, post_whale, post_marlin]
    @posts = Post.order(created_at: :desc)
    erb :index   
end