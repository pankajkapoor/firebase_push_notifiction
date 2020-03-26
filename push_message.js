function createMessage(payload) {
  const result = JSON.parse(payload.data.notification);
  //console.log(result);

  // Customize notification here
  const notificationTitle = result.title;
  const notificationOptions = {
    requireInteraction: true,
    body: result.body,
    icon: result.icon,
    image: result.image,
    badge: result.badge,
    vibrate: [100, 50, 100],
    timestamp: new Date(),
    data: result.data,
    actions: result.actions
    //sound: "/demos/notification-examples/audio/notification-sound.mp3"
  };

  return { notificationTitle, notificationOptions };
}
