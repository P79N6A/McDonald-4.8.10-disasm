.class final Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$2;
.super Ljava/lang/Object;
.source "OrderOfferProduct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->createOrderOfferProduct(Lcom/mcdonalds/sdk/modules/models/OfferProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;ZLcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$2;->val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$2;->val$ret:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-interface {v0, v1, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 70
    return-void
.end method
