public class NotificationService {
    public static void main(String ...args) {
        NotificationFactory factory = new NotificationFactory();
        String channel = "sms";
        Notification notif = factory.createNotif(channel);
        notif.notifyUser();
        channel = "email";
        notif = factory.createNotif(channel);
        notif.notifyUser();

    }
}