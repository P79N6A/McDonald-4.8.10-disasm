.class public Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;
.super Lcom/baidu/android/pushservice/PushNotificationBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushNotificationBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationDefaults:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationDefaults:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    :cond_1
    iget-object v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mVibratePattern:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mVibratePattern:[J

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_2
    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mStatusbarIcon:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mStatusbarIcon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :cond_3
    iget-object v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationFlags:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationDefaults:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    :cond_6
    iget-object v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_7
    iget-object v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mVibratePattern:[J

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mVibratePattern:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    :cond_8
    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mStatusbarIcon:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mStatusbarIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    :cond_9
    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationFlags:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_a
    iget-object v1, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
