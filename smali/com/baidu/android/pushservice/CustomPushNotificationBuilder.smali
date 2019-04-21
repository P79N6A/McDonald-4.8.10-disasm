.class public Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;
.super Lcom/baidu/android/pushservice/PushNotificationBuilder;


# instance fields
.field private mLayoutIconDrawable:I

.field private mLayoutIconId:I

.field private mLayoutId:I

.field private mLayoutTextId:I

.field private mLayoutTitleId:I


# virtual methods
.method public construct(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationDefaults:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationDefaults:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    :cond_1
    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_2
    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mStatusbarIcon:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mStatusbarIcon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :cond_3
    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutId:I

    if-eqz v1, :cond_8

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutId:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconDrawable:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconId:I

    iget v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconDrawable:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_4
    iget-object v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTitleId:I

    iget-object v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_5
    iget-object v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTextId:I

    iget-object v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationFlags:I

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_7
    :goto_1
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_9
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationDefaults:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    :cond_a
    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationsound:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_b
    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mVibratePattern:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    :cond_c
    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mStatusbarIcon:I

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mStatusbarIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    :cond_d
    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationFlags:I

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_e
    iget v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutId:I

    if-eqz v1, :cond_12

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutId:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconDrawable:I

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconId:I

    iget v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutIconDrawable:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_f
    iget-object v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTitleId:I

    iget-object v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_10
    iget-object v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mLayoutTextId:I

    iget-object v3, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_11
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1

    :cond_12
    iget-object v1, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/CustomPushNotificationBuilder;->mNotificationText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method
