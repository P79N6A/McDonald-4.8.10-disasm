.class Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$4;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocatorConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;->requestStoresWithIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

.field final synthetic val$counter:Lcom/mcdonalds/sdk/AsyncCounter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$4;->this$0:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$4;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 274
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$4;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-eqz p3, :cond_0

    .line 278
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$4;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, p3}, Lcom/mcdonalds/sdk/AsyncCounter;->error(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 286
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$4;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorConnector$4;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
