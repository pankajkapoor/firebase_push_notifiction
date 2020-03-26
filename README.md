This is a demo project based on blog post https://www.itwonders-web.com/blog/push-notification-using-firebase-demo-tutorial/


# Sending the message
```js
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
  "to": "cExOaKCUobmiNbpbAOLu_y:APA91bH5W9VcP4xpF6OTRo9s6uHaJTfewWBF3ORsPlfifgqMXco3HPQVicPTzaAHV5d4DkRMe3be5tJkTk3h-PJMNQ8WsmJ58uXcwpiMaIJ9qtXiSyzi0bIO_53wNmO8kDAy9uNG3hh5"
}' https://fcm.googleapis.com/fcm/send

```

# Get Information about the token
```js
curl --location --request GET 'https://iid.googleapis.com/iid/info/esHa4rym1DT_ZefcYXviY2:APA91bHVTWUCaOpDGIThzVTEwgb_QJkfJKc4lNt0wdqHbRrRA7N5nO9zaXZ7EkgyvDoEmQAAoDGCFZQCs-F-2b56FhqGx729xUZe-3EsYSM_dYcwcPCVqWLx_NQVZ_U3ftk2BVoGpeIk' \
--header 'Authorization: key=AAAAVuvkGx0:APA91bHdBSEZkrv4t1xn7pARbifN3EYuRpKOttsJXOrYJLxOIyMC8LCbnxMg5dshLid19YPk0Q8siFQjtsdvafmJtT117RVOK_NyJG3N9RJCtBJq6G3n3vLijNualLvjecZN_d3NcL8N'
```
