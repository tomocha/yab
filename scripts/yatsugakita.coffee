# CoffeeScript
module.exports = (robot) ->
  robot.hear /奴|(やーつ)|(やつ)/, (msg) ->
    hoge = msg.message
    fuga = hoge.match /.*奴|.*(やーつ)/
    foo = fuga[0].replace(/(という|って|[なて])(やーつ|やつ)/,"奴")
    msg.send "出、出～！#{foo}～～～～！！"