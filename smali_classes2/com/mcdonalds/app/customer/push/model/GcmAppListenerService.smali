.class public Lcom/mcdonalds/app/customer/push/model/GcmAppListenerService;
.super Lcom/mcdonalds/sdk/connectors/google/cloudmessaging/GcmListenerService;
.source "GcmAppListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/google/cloudmessaging/GcmListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const-string v1, "onMessageReceived"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    const-string v1, "notification"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;

    .line 14
    .local v0, "notificationModule":Lcom/mcdonalds/sdk/modules/notification/NotificationModule;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->isListenerAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-static {p0, p2}, Lcom/mcdonalds/app/customer/push/NotificationManager;->sendNotification(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/google/cloudmessaging/GcmListenerService;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
