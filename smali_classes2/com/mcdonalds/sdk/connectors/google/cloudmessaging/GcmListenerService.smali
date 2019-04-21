.class public Lcom/mcdonalds/sdk/connectors/google/cloudmessaging/GcmListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "GcmListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/gcm/GcmListenerService;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    const-string v1, "notification"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;

    .line 19
    .local v0, "notificationModule":Lcom/mcdonalds/sdk/modules/notification/NotificationModule;
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p0, p2}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->notifyNotificationReceived(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 23
    .end local v0    # "notificationModule":Lcom/mcdonalds/sdk/modules/notification/NotificationModule;
    :cond_0
    return-void
.end method
