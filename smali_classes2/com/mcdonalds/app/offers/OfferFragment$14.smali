.class Lcom/mcdonalds/app/offers/OfferFragment$14;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment;->refreshPunchCardOptionsIfNecessary(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferFragment;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$14;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferFragment$14;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
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

    .line 1233
    if-nez p3, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$14;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$14;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$14;->val$rootView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1700(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/view/View;)V

    .line 1239
    :goto_0
    return-void

    .line 1237
    :cond_0
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
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

    .line 1230
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/offers/OfferFragment$14;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
