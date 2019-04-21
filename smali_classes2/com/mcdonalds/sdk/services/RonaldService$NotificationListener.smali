.class Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;
.super Landroid/content/BroadcastReceiver;
.source "RonaldService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/RonaldService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationListener"
.end annotation


# instance fields
.field private final mService:Lcom/mcdonalds/sdk/services/RonaldService;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/services/RonaldService;)V
    .locals 0
    .param p1, "service"    # Lcom/mcdonalds/sdk/services/RonaldService;

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;->mService:Lcom/mcdonalds/sdk/services/RonaldService;

    .line 337
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 341
    const-string v0, "MCD_NOTIFICATION_CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;->mService:Lcom/mcdonalds/sdk/services/RonaldService;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;->mService:Lcom/mcdonalds/sdk/services/RonaldService;

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/RonaldService;->access$200(Lcom/mcdonalds/sdk/services/RonaldService;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;->mService:Lcom/mcdonalds/sdk/services/RonaldService;

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/RonaldService;->access$300(Lcom/mcdonalds/sdk/services/RonaldService;)Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;->mService:Lcom/mcdonalds/sdk/services/RonaldService;

    invoke-static {v3}, Lcom/mcdonalds/sdk/services/RonaldService;->access$400(Lcom/mcdonalds/sdk/services/RonaldService;)Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/McDonalds;->clean(Landroid/content/Context;Landroid/content/Intent;Lcom/mcdonalds/sdk/connectors/ConnectorManager;Lcom/mcdonalds/sdk/modules/ModuleManager;)V

    .line 344
    :cond_0
    return-void
.end method
