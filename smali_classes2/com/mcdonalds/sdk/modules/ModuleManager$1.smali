.class Lcom/mcdonalds/sdk/modules/ModuleManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/ModuleManager;->initialize(Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/ModuleManager;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/ModuleManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/ModuleManager;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager$1;->this$0:Lcom/mcdonalds/sdk/modules/ModuleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 67
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager$1;->this$0:Lcom/mcdonalds/sdk/modules/ModuleManager;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ModuleManager$1;->this$0:Lcom/mcdonalds/sdk/modules/ModuleManager;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 70
    :cond_0
    return-void
.end method
