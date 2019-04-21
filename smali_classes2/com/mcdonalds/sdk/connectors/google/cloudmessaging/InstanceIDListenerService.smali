.class public Lcom/mcdonalds/sdk/connectors/google/cloudmessaging/InstanceIDListenerService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "InstanceIDListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 4

    .prologue
    .line 15
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/sdk/services/notifications/NotificationIntentService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "param_action"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/connectors/google/cloudmessaging/InstanceIDListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 20
    return-void
.end method
