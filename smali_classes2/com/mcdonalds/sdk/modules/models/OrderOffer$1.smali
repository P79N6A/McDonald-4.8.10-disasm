.class final Lcom/mcdonalds/sdk/modules/models/OrderOffer$1;
.super Ljava/lang/Object;
.source "OrderOffer.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/models/OrderOffer;->createOrderOffer(Lcom/mcdonalds/sdk/modules/models/Offer;ZLcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOffer;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$1;->val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    const/4 v2, 0x0

    .line 51
    if-nez p3, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$1;->val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->setOrderOfferProducts(Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$1;->val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-interface {v0, v1, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, v2, v2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
