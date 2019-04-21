.class Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;
.super Ljava/lang/Object;
.source "GoogleStoreLocatorListener.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;->mToken:Lcom/mcdonalds/sdk/AsyncToken;

    .line 25
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 26
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v6, 0x0

    .line 31
    if-eqz p3, :cond_0

    .line 32
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;->mToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v4, v6, v5, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 46
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v3, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;->isSingleStore()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 36
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->googleStoreToStore(Lcom/mcdonalds/sdk/connectors/google/GoogleStore;Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;->mToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v4, v3, v5, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;->getGoogleStores()Ljava/util/List;

    move-result-object v0

    .line 39
    .local v0, "googleStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/google/GoogleStore;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/google/GoogleStore;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/mcdonalds/sdk/connectors/google/GoogleConnector;->googleStoreToStore(Lcom/mcdonalds/sdk/connectors/google/GoogleStore;Landroid/content/Context;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreLocatorListener;->onResponse(Lcom/mcdonalds/sdk/connectors/google/GoogleStoreResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
