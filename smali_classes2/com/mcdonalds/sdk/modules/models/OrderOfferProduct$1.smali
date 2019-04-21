.class final Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$1;
.super Ljava/lang/Object;
.source "OrderOfferProduct.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->createOrderOfferProduct(Lcom/mcdonalds/sdk/modules/models/OfferProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;ZLcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$offerProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

.field final synthetic val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/models/OfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$1;->val$offerProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$1;->val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$1;->val$offerProduct:Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 60
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$1;->val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->setSelectedProductOption(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 61
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$1;->val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-interface {v1, v2, v3, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 62
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$1;->onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
