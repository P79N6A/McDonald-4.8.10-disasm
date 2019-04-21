.class Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/offers/OfferFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrderOfferListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRootView:Landroid/view/View;

.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/view/View;)V
    .locals 0
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 2189
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2190
    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;->mRootView:Landroid/view/View;

    .line 2191
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;
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

    .line 2196
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 2198
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1002(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 2201
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/offers/OfferActivity;->setOrderOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    .line 2203
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;->mRootView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1700(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/view/View;)V

    .line 2205
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

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

    .line 2185
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
