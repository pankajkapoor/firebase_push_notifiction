curl -X POST -H "Authorization: key=AAAAVuvkGx0:APA91bHdBSEZkrv4t1xn7pARbifN3EYuRpKOttsJXOrYJLxOIyMC8LCbnxMg5dshLid19YPk0Q8siFQjtsdvafmJtT117RVOK_NyJG3N9RJCtBJq6G3n3vLijNualLvjecZN_d3NcL8N" -H "Content-Type: application/json" \
   -d '{
 "data": {
    "notification": {
        "title": "FCM Message",
        "body": "This is an FCM Message",
        "icon": "https://www.gstatic.com/mobilesdk/160503_mobilesdk/logo/2x/firebase_28dp.png",
        "image": "https://web-push-book.gauntface.com/images/demos/unsplash-farzad-nazifi-1600x1100.jpg",
        "badge": "https://web-push-book.gauntface.com/images/demos/badge-128x128.png",
        "timestamp": "1585217717",
        "data" : {
          "actionA": "this is the url for first button",
          "actionB": "this is the url for second button",
          "url": "This is for default url"
        },
       "actions" : [
          {
            "action": "actionA",
            "title": "Tea",
            "icon": "https://web-push-book.gauntface.com/images/demos/action-1-128x128.png"
          },
          {
            "action": "actionB",
            "title": "Doughnut",
            "icon": "https://web-push-book.gauntface.com/images/demos/action-2-128x128.png"
          }
        ]
    }
  },
  "to": "fxTl8rYbb9U-8usDdpQCIC:APA91bEap2u6TWs2iT9ORh8JeXb-iOTvXQVr2mXMDTDbTiRkCvCFq6PXEEYB9hTVkgw3MPWEm5uw95EUcmFCWPuJYe-Yz5Zj9-IfbnDZhrewpPLEXNaNPEZedcK0ullod06AoJk0KCTg"
}' https://fcm.googleapis.com/fcm/send


curl -H "Authorization: Bearer cb73e0e3fe68be" ipinfo.io

