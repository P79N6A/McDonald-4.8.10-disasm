.class Lcom/mcdonalds/app/offers/OfferFragment$4$3;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/offers/OfferFragment$4;

.field final synthetic val$order:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment$4;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/offers/OfferFragment$4;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$4$3;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$4;

    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferFragment$4$3;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Object;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 651
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$4$3;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1300(Lcom/mcdonalds/app/offers/OfferFragment;)V

    .line 652
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$4$3;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 653
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$4$3;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->isActivityAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$4$3;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$4$3;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$4$3;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$4;

    iget-object v2, v2, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$4$3;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 660
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$4$3;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$400(Lcom/mcdonalds/app/offers/OfferFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$4$3;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment$4;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    const-class v1, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    const-string v2, "basket"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/offers/OfferFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
