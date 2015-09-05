﻿# CoffeeScript
request = require 'request'
xml2json = require 'xml2json'
module.exports = (robot) ->
  robot.hear /trend me/, (msg) ->
    request = msg.http("https://www.google.co.jp/trends/hottrends/atom/feed").get()
    request (err, res, body) ->
      json_data = JSON.parse(xml2json.toJson(body))
      trend = json_data.rss.channel.item[0]
      msg.send trend['ht:news_item'][0]['ht:news_item_url']