.class Lcom/mcdonalds/app/offers/OfferFragment$18;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment;->refreshDataForOffer(Landroid/view/View;)V
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
        "Lcom/mcdonalds/sdk/modules/models/Product;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferFragment;

.field final synthetic val$finalPosition:I

.field final synthetic val$orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

.field final synthetic val$productDetails:Lcom/mcdonalds/app/ordering/ProductDetailsItem;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;ILcom/mcdonalds/app/ordering/ProductDetailsItem;Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$18;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iput p2, p0, Lcom/mcdonalds/app/offers/OfferFragment$18;->val$finalPosition:I

    iput-object p3, p0, Lcom/mcdonalds/app/offers/OfferFragment$18;->val$productDetails:Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    iput-object p4, p0, Lcom/mcdonalds/app/offers/OfferFragment$18;->val$orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1429
    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$18;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iget v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$18;->val$finalPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/offers/OfferFragment;->onOfferProductSelected(ILcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 1443
    :goto_0
    return-void

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$18;->val$productDetails:Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/offers/OfferFragment$18$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/offers/OfferFragment$18$1;-><init>(Lcom/mcdonalds/app/offers/OfferFragment$18;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1441
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$18;->val$productDetails:Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    move-result-object v0

    const-string v1, "ProductItemPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

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

    .line 1426
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/offers/OfferFragment$18;->onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
