.class public Lcom/mcdonalds/sdk/modules/notification/NotificationModule;
.super Lcom/mcdonalds/sdk/modules/BaseModule;
.source "NotificationModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;
    }
.end annotation


# static fields
.field public static final CONNECTOR_KEY:Ljava/lang/String; = "modules.notification.connector"

.field public static final NAME:Ljava/lang/String; = "notification"


# instance fields
.field mContext:Landroid/content/Context;

.field mNotificationListener:Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/BaseModule;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private sendIntent(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    .line 57
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->mContext:Landroid/content/Context;

    const-class v3, Lcom/mcdonalds/sdk/services/notifications/NotificationIntentService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "param_action"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    return-void
.end method


# virtual methods
.method public getRegistrationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    .line 36
    .local v0, "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getNotificationRegId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isListenerAvailable()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->mNotificationListener:Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyNotificationReceived(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->mNotificationListener:Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->mNotificationListener:Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;->onNotificationReceived(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 47
    :cond_0
    return-void
.end method

.method public register()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->sendIntent(I)V

    .line 32
    return-void
.end method

.method public setNotificationListener(Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;)V
    .locals 0
    .param p1, "notificationListener"    # Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->mNotificationListener:Lcom/mcdonalds/sdk/modules/notification/NotificationModule$NotificationListener;

    .line 28
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->sendIntent(I)V

    .line 41
    return-void
.end method
