.class public Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


# static fields
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "EXTRA_MESSAGE"

.field private static mSharedInstance:Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mSharedInstance:Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mSharedInstance:Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mSharedInstance:Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    .line 52
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mSharedInstance:Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    return-object v0
.end method

.method public static setSharedInstance(Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;)V
    .locals 0
    .param p0, "notificationCenter"    # Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    .prologue
    .line 56
    sput-object p0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mSharedInstance:Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    .line 57
    return-void
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 2
    .param p1, "notificationName"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 99
    .end local v0    # "broadcastFilter":Landroid/content/IntentFilter;
    :cond_0
    return-object p2
.end method

.method public postNotification(Ljava/lang/String;)V
    .locals 2
    .param p1, "notificationName"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 69
    :cond_0
    return-void
.end method

.method public postNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "notificationName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "notificationIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 83
    .end local v0    # "notificationIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public removeObserver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    :cond_0
    return-void
.end method
