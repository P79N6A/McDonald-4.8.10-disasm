.class Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$4;
.super Ljava/lang/Object;
.source "BagChargeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;

.field final synthetic val$presenter:Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$4;->this$0:Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$4;->val$presenter:Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    .line 63
    .local v0, "orderManager":Lcom/mcdonalds/sdk/modules/ordering/OrderManager;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowBagCharges()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->isBagChargeAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->cleanBagsFromOrder()V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$4;->val$presenter:Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->confirm()V

    .line 67
    return-void
.end method
