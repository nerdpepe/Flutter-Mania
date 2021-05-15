public class NotificationFactory {
    public Notification createNotif(String channel) {
        if(channel == "sms" || channel == "SMS" )
            return new SMSNotification();
        else if(channel == "Email" || channel == "email") {
            return new EmailNotification();
        } else {
            return null;
        }
    }
}