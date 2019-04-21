.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->StartOrder(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

.field final synthetic val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1435
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 1436
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->clearProducts()V

    .line 1437
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 1438
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setNormalOrder(Z)V

    .line 1439
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 1440
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "start_order"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setModuleName(Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    new-instance v1, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;)V

    invoke-static {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$2100(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    :goto_0
    return-void

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$24;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v1, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    const-string v2, "start_order"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
