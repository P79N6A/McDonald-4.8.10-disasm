.class public Lcom/mcdonalds/app/customer/push/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# static fields
.field private static sListener:Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/mcdonalds/app/customer/push/NotificationManager$2;

    invoke-direct {v0}, Lcom/mcdonalds/app/customer/push/NotificationManager$2;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/customer/push/NotificationManager;->sListener:Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "callback":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.customer.push.NotificationManager"

    const-string v3, "register"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    const-string v1, "notification"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;

    .line 28
    .local v0, "notificationModule":Lcom/mcdonalds/sdk/modules/notification/NotificationModule;
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->register()V

    .line 30
    sget-object v1, Lcom/mcdonalds/app/customer/push/NotificationManager;->sListener:Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->setNotificationListener(Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;)V

    .line 33
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/mcdonalds/app/customer/push/NotificationManager$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/customer/push/NotificationManager$1;-><init>(Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method

.method public static sendNotification(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/16 v22, 0x0

    const-string v23, "com.mcdonalds.app.customer.push.NotificationManager"

    const-string v24, "sendNotification"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object p0, v25, v26

    const/16 v26, 0x1

    aput-object p1, v25, v26

    invoke-static/range {v22 .. v25}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const-string v22, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 53
    .local v20, "notificationManager":Landroid/app/NotificationManager;
    const-string v21, ""

    .line 54
    .local v21, "title":Ljava/lang/String;
    const-string v15, ""

    .line 56
    .local v15, "message":Ljava/lang/String;
    const/16 v16, -0x1

    .line 57
    .local v16, "messageId":I
    const-string v9, ""

    .line 58
    .local v9, "deliveryId":Ljava/lang/String;
    const-string v17, ""

    .line 59
    .local v17, "messageIdKey":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 61
    const-string v22, "notificationTitle"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 62
    const-string v22, "notificationText"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 65
    const-string v17, "mId"

    .line 66
    const-string v22, "mId"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 67
    .local v18, "messageIdString":Ljava/lang/String;
    const-string v22, "_dId"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 70
    if-eqz v15, :cond_6

    if-nez v18, :cond_6

    if-nez v9, :cond_6

    .line 72
    const-string v17, "_mId"

    .line 74
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 75
    .local v11, "gson":Lcom/google/gson/Gson;
    const-class v22, Lcom/mcdonalds/app/customer/push/model/NotificationBody;

    instance-of v0, v11, Lcom/google/gson/Gson;

    move/from16 v23, v0

    if-nez v23, :cond_5

    move-object/from16 v0, v22

    invoke-virtual {v11, v15, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v11    # "gson":Lcom/google/gson/Gson;
    :goto_0
    check-cast v4, Lcom/mcdonalds/app/customer/push/model/NotificationBody;

    .line 76
    .local v4, "body":Lcom/mcdonalds/app/customer/push/model/NotificationBody;
    invoke-virtual {v4}, Lcom/mcdonalds/app/customer/push/model/NotificationBody;->getCustomContent()Lcom/mcdonalds/app/customer/push/model/NotificationCustomContent;

    move-result-object v7

    .line 77
    .local v7, "customContent":Lcom/mcdonalds/app/customer/push/model/NotificationCustomContent;
    invoke-virtual {v7}, Lcom/mcdonalds/app/customer/push/model/NotificationCustomContent;->getMessageId()Ljava/lang/String;

    move-result-object v18

    .line 78
    invoke-virtual {v7}, Lcom/mcdonalds/app/customer/push/model/NotificationCustomContent;->getDeliveryId()Ljava/lang/String;

    move-result-object v9

    .line 79
    invoke-virtual {v4}, Lcom/mcdonalds/app/customer/push/model/NotificationBody;->getDescription()Ljava/lang/String;

    move-result-object v15

    .line 88
    .end local v4    # "body":Lcom/mcdonalds/app/customer/push/model/NotificationBody;
    .end local v7    # "customContent":Lcom/mcdonalds/app/customer/push/model/NotificationCustomContent;
    :cond_0
    :goto_1
    const-string v22, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 89
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    if-nez v15, :cond_1

    .line 90
    const-string v22, "title"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "title":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 91
    .restart local v21    # "title":Ljava/lang/String;
    const-string v22, "body"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "message":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 94
    .restart local v15    # "message":Ljava/lang/String;
    :cond_1
    if-eqz v18, :cond_3

    if-eqz v9, :cond_3

    .line 96
    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 97
    const-string v22, "customer"

    invoke-static/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 98
    .local v8, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    const/16 v22, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 99
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 101
    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v8, v0, v9, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->trackNotification(ILjava/lang/String;I)Lcom/mcdonalds/sdk/AsyncToken;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v8    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v18    # "messageIdString":Ljava/lang/String;
    :cond_3
    :goto_2
    new-instance v13, Landroid/content/Intent;

    const-class v22, Lcom/mcdonalds/app/startup/SplashActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v13, "intent":Landroid/content/Intent;
    const v22, 0x7f0900d6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 112
    move-object/from16 v19, p1

    .line 113
    .local v19, "notificationExtras":Landroid/os/Bundle;
    if-nez v19, :cond_4

    .line 114
    new-instance v19, Landroid/os/Bundle;

    .end local v19    # "notificationExtras":Landroid/os/Bundle;
    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 117
    .restart local v19    # "notificationExtras":Landroid/os/Bundle;
    :cond_4
    const-string v22, "notification_clicked"

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v22, "_dId"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    const/16 v22, 0x1

    const/high16 v23, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 125
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    new-instance v22, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v22

    new-instance v23, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v23 .. v23}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 130
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v23

    .line 128
    invoke-virtual/range {v22 .. v23}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v22

    .line 131
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v22

    const/16 v23, 0x1

    .line 132
    invoke-virtual/range {v22 .. v23}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    .line 134
    .local v14, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x15

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_7

    .line 136
    const v22, 0x7f020123

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    :goto_3
    invoke-virtual {v14, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v12, v0

    .line 144
    .local v12, "id":I
    invoke-virtual {v14}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 145
    return-void

    .line 75
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v12    # "id":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v19    # "notificationExtras":Landroid/os/Bundle;
    .restart local v11    # "gson":Lcom/google/gson/Gson;
    .restart local v18    # "messageIdString":Ljava/lang/String;
    :cond_5
    check-cast v11, Lcom/google/gson/Gson;

    .end local v11    # "gson":Lcom/google/gson/Gson;
    move-object/from16 v0, v22

    invoke-static {v11, v15, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 81
    :cond_6
    if-nez v15, :cond_0

    .line 82
    const-string v22, "_msg"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "message":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 83
    .restart local v15    # "message":Ljava/lang/String;
    const-string v22, "_title"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "title":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 84
    .restart local v21    # "title":Ljava/lang/String;
    const-string v22, "_mId"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "messageIdString":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 85
    .restart local v18    # "messageIdString":Ljava/lang/String;
    const-string v22, "_dId"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "deliveryId":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "deliveryId":Ljava/lang/String;
    goto/16 :goto_1

    .line 102
    .restart local v5    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v10

    .line 103
    .local v10, "e":Ljava/lang/NumberFormatException;
    const-string v22, "Notification"

    const-string v23, "error"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 138
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v18    # "messageIdString":Ljava/lang/String;
    .restart local v6    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v14    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v19    # "notificationExtras":Landroid/os/Bundle;
    :cond_7
    const/high16 v22, 0x7f030000

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_3
.end method
