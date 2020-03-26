importScripts("https://www.gstatic.com/firebasejs/7.2.1/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/7.2.1/firebase-messaging.js");
// For an optimal experience using Cloud Messaging, also add the Firebase SDK for Analytics.
importScripts("https://www.gstatic.com/firebasejs/7.2.1/firebase-analytics.js");
importScripts("push_message.js");

// Initialize the Firebase app in the service worker by passing in the
// messagingSenderId.
var config = {
  messagingSenderId: "373324782365"
};
firebase.initializeApp(config);

// Retrieve an instance of Firebase Messaging so that it can handle background
// messages.
const messaging = firebase.messaging();

messaging.setBackgroundMessageHandler(function(payload) {
  // console.log(
  //   "[firebase-messaging-sw.js] Received background message ",
  //   payload
  // );

  const { notificationTitle, notificationOptions } = createMessage(payload);

  return self.registration.showNotification(
    notificationTitle,
    notificationOptions
  );
});

self.addEventListener("notificationclick", function(event) {
  console.log(event.notification);
  const data = event.notification.data;

  event.notification.close();

  if (event.action === "coffee-action") {
    console.log("if");
    clients.openWindow(data.a);
    // silentlyLikeItem();
  } else if (event.action === "doughnut-action") {
    console.log("else if");
    clients.openWindow("doughnut");
  } else {
    // if user click on the notifiction itself
    console.log("else");
    event.waitUntil(clients.openWindow("http://raja.com"));
  }
});

self.addEventListener("notificationclose", function(e) {
  var notification = e.notification;
  var data = notification;
  console.log("Closed notification: ", data);
});
