# CoffeeScript
module.exports = (robot) ->
  robot.hear /奴|(やーつ)/, (msg) ->
    hoge = msg.message
    fuga = hoge.match /.*奴|.*(やーつ)/
    foo = fuga[0].replace("やーつ","奴")
    msg.send "出、出～！#{foo}～～～～！！"