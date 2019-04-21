.class Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;
.super Ljava/lang/Object;
.source "OrderOfferProduct.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->revalidate(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
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
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$selectedOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;->this$0:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;->val$selectedOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;->val$selectedOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 101
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;->val$selectedOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCustomizations(Ljava/util/Map;)V

    .line 102
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;->val$selectedOption:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setChoiceSolutions(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;)V

    .line 103
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;->this$0:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->setSelectedProductOption(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 104
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v2, v2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 105
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct$3;->onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
