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
          "a": "a",
          "b": "b"
        },
       "actions" : [
          {
            "action": "coffee-action",
            "title": "Tea",
            "icon": "https://web-push-book.gauntface.com/images/demos/action-1-128x128.png"
          },
          {
            "action": "doughnut-action",
            "title": "Doughnut",
            "icon": "https://web-push-book.gauntface.com/images/demos/action-2-128x128.png"
          }
        ]
    }
  },
  "to": "esHa4rym1DT_ZefcYXviY2:APA91bHMEqomkMKlz3Y7XLcdxQZ-WMRfLt-ixhcwNOhmqW5blV9aAyMtPRXRaOwyOaGC1O-zwezC0EVrv3p7Ay9DkyevLPE1XrLMBFvsSDQKh-sbidDBqjuXsmW5tPfHQqkUxyCpTJ2i"
}' https://fcm.googleapis.com/fcm/send




curl -H "Authorization: Bearer cb73e0e3fe68be" ipinfo.io

