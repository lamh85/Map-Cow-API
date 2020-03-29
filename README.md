# Development Guide

## Configuring Rails

Removed `webpacker` because it made Rails think that this app is a monolith.

## Environment Variables

Guide:
https://www.rubyguides.com/2019/01/ruby-environment-variables/

Ensure that your bash profile has the `--wait` flag:
```bash
export EDITOR='code --wait'
```

## Google API Guide

Google Places Intro
https://developers.google.com/places/web-service/intro

Use the `place_id` to get place details
https://developers.google.com/places/web-service/details

## Google API Pricing

Nearby searches. AKA Places index. Gets list of places.
https://developers.google.com/places/web-service/usage-and-billing#text-search
$32 US per 1000 requests per month, up to 100,000 requests

Place details.
https://developers.google.com/places/web-service/usage-and-billing#places-details
$17 US per 1000 requests per month, up to 100,000 requests

Place's photos
https://developers.google.com/places/web-service/usage-and-billing#places-photo
$7 US per 1000 requests per month, up to 100,000 requests

Place's atmosphere.
Whenever you request these fields:
price_level, rating, review, user_ratings_total
https://developers.google.com/places/web-service/usage-and-billing#atmosphere-data
$5 US per 1000 requests per month, up to 100,000 requests