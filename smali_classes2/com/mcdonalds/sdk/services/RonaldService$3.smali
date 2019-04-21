.class Lcom/mcdonalds/sdk/services/RonaldService$3;
.super Landroid/content/BroadcastReceiver;
.source "RonaldService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/RonaldService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/RonaldService;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/RonaldService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/RonaldService;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/RonaldService$3;->this$0:Lcom/mcdonalds/sdk/services/RonaldService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v0

    const-string v1, "NOTIFICATION_CONNECTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->postNotification(Ljava/lang/String;)V

    .line 129
    return-void
.end method
