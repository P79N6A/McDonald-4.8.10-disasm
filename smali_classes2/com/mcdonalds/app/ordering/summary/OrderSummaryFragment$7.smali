.class Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;
.super Ljava/lang/Object;
.source "OrderSummaryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->onAddToFavoritesClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

.field final synthetic val$addFavoritesButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->val$addFavoritesButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0906a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$600(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$400(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$400(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$600(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7$1;-><init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$7;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->deleteFavoriteProducts(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 713
    :cond_0
    return-void
.end method
