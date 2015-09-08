# CoffeeScript
request = require 'request'
xml2json = require 'xml2json'
#parser = xml2js.parseString
module.exports = (robot) ->
  robot.hear /trendtweet me/, (msg) ->
    request = msg.http("http://tubuyaki-bigdata.com/feed").get()
    request (err, res, body) ->
      json_data = JSON.parse(xml2json.toJson(body))
      trend = msg.random(json_data.rss.channel.item)
      msg.send trend.link
