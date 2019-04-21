.class Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$11;
.super Ljava/lang/Object;
.source "OrderingModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getUpsellItems(Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$11;->this$0:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$11;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 611
    check-cast p1, [I

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$11;->onResponse([ILcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse([ILcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # [I
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 614
    if-eqz p1, :cond_0

    .line 615
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$11;->this$0:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->access$000(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/mcdonalds/sdk/services/data/repository/ProductRepository;->getByProductCodes(Landroid/content/Context;[I)Ljava/util/List;

    move-result-object v1

    .line 616
    .local v1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$11;->this$0:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-static {v2, p1, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->access$100(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;[ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 617
    .local v0, "orderedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$11;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v2, v0, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 621
    .end local v0    # "orderedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    .end local v1    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$11;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
