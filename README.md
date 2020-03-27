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

# Sending the message to multiple users upto 1000 users only

```js
curl --location --request POST 'https://fcm.googleapis.com/fcm/send' \
--header 'Authorization: key=AAAAVuvkGx0:APA91bHdBSEZkrv4t1xn7pARbifN3EYuRpKOttsJXOrYJLxOIyMC8LCbnxMg5dshLid19YPk0Q8siFQjtsdvafmJtT117RVOK_NyJG3N9RJCtBJq6G3n3vLijNualLvjecZN_d3NcL8N' \
--header 'Content-Type: application/json' \
--data-raw '{
    "registration_ids": [
        "feSUJKwkhCS6NK8BoMudaF:APA91bGRncc0Qf2gonHG36JrlUVANTAo7fuRlMFXEVg3C_EPXJvAliKVJTDJmhmQXZA9hVoBz7MaxiUaLU2ozgDGvIGQxGrUvK1zlLEc4l7ylaGAO02Dv4Czqxmeqhxm3zwLi6_pSnFq",
        "fpZI-MCzI2yoKQtvj7rJTK:APA91bHs7E7Y6IpPDu-k8s00JaM9-7EpESV4-ffZf2lqd-K_HrAnJa2Y9P_e_lntO0yRAXoZjXQLnY6dRXcy_p7btTsCSt9XYzvXP2fYCLF-66Z9-79L43__HYZx2ZNVzIvtZV6RXTNs"
    ],
    "data": {
        "notification": {
            "title": "FCM Message",
            "body": "This is an FCM Message",
            "icon": "https://www.gstatic.com/mobilesdk/160503_mobilesdk/logo/2x/firebase_28dp.png",
            "image": "https://web-push-book.gauntface.com/images/demos/unsplash-farzad-nazifi-1600x1100.jpg",
            "badge": "https://web-push-book.gauntface.com/images/demos/badge-128x128.png",
            "timestamp": "1585217717",
            "data": {
                "actionA": "https://aasaancredits.com/apply.html",
                "actionB": "https://aasaancredits.com/check-your-loan-eligibility.html",
                "url": "https://aasaancredits.com/"
            },
            "actions": [
                {
                    "action": "actionA",
                    "title": "Apply Now",
                    "icon": "https://web-push-book.gauntface.com/images/demos/action-1-128x128.png"
                },
                {
                    "action": "actionB",
                    "title": "Check Rates",
                    "icon": "https://web-push-book.gauntface.com/images/demos/action-2-128x128.png"
                }
            ]
        }
    },
    "priority": "high",
    "dry_run":false
}'
```

# Get Information about the token

```js
curl --location --request GET 'https://iid.googleapis.com/iid/info/esHa4rym1DT_ZefcYXviY2:APA91bHVTWUCaOpDGIThzVTEwgb_QJkfJKc4lNt0wdqHbRrRA7N5nO9zaXZ7EkgyvDoEmQAAoDGCFZQCs-F-2b56FhqGx729xUZe-3EsYSM_dYcwcPCVqWLx_NQVZ_U3ftk2BVoGpeIk' \
--header 'Authorization: key=AAAAVuvkGx0:APA91bHdBSEZkrv4t1xn7pARbifN3EYuRpKOttsJXOrYJLxOIyMC8LCbnxMg5dshLid19YPk0Q8siFQjtsdvafmJtT117RVOK_NyJG3N9RJCtBJq6G3n3vLijNualLvjecZN_d3NcL8N'
```

# Add token to a topic

```js
curl --location --request POST 'https://iid.googleapis.com/iid/v1/esHa4rym1DT_ZefcYXviY2:APA91bHMEqomkMKlz3Y7XLcdxQZ-WMRfLt-ixhcwNOhmqW5blV9aAyMtPRXRaOwyOaGC1O-zwezC0EVrv3p7Ay9DkyevLPE1XrLMBFvsSDQKh-sbidDBqjuXsmW5tPfHQqkUxyCpTJ2i/rel/topics/movies' \
--header 'Authorization: key=AAAAVuvkGx0:APA91bHdBSEZkrv4t1xn7pARbifN3EYuRpKOttsJXOrYJLxOIyMC8LCbnxMg5dshLid19YPk0Q8siFQjtsdvafmJtT117RVOK_NyJG3N9RJCtBJq6G3n3vLijNualLvjecZN_d3NcL8N'
```

# Add multiple token to a topic

```js
curl --location --request POST 'https://iid.googleapis.com/iid/v1:batchAdd' \
--header 'Authorization: key=AAAAVuvkGx0:APA91bHdBSEZkrv4t1xn7pARbifN3EYuRpKOttsJXOrYJLxOIyMC8LCbnxMg5dshLid19YPk0Q8siFQjtsdvafmJtT117RVOK_NyJG3N9RJCtBJq6G3n3vLijNualLvjecZN_d3NcL8N' \
--header 'Content-Type: application/json' \
--data-raw '{
    "to": "/topics/movies",
    "registration_tokens": [
        "esHa4rym1DT_ZefcYXviY2:APA91bHMEqomkMKlz3Y7XLcdxQZ-WMRfLt-ixhcwNOhmqW5blV9aAyMtPRXRaOwyOaGC1O-zwezC0EVrv3p7Ay9DkyevLPE1XrLMBFvsSDQKh-sbidDBqjuXsmW5tPfHQqkUxyCpTJ2i"
    ]
}'
```
