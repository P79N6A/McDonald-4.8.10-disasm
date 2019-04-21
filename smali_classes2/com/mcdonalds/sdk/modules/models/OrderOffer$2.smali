.class final Lcom/mcdonalds/sdk/modules/models/OrderOffer$2;
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
        "Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$2;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 1
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 66
    if-nez p3, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$2;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$2;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, p3}, Lcom/mcdonalds/sdk/AsyncCounter;->error(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
