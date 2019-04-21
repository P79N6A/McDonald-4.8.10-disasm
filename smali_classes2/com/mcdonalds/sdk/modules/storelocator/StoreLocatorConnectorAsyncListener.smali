.class public Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;
.super Ljava/lang/Object;
.source "StoreLocatorConnectorAsyncListener.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
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
.field private mCachedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

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

.field private mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "storeLocatorModule"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;-><init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "storeLocatorModule"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "cachedObjects":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 27
    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mCachedObjects:Ljava/util/List;

    .line 28
    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
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
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v3, 0x0

    .line 35
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-virtual {v1, p2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->moduleToken(Ljava/lang/Object;)Lcom/mcdonalds/sdk/AsyncToken;

    move-result-object v0

    .line 37
    .local v0, "moduleToken":Lcom/mcdonalds/sdk/AsyncToken;
    if-nez p3, :cond_2

    .line 39
    if-eqz p1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->cacheStores(Ljava/util/List;)V

    .line 44
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mCachedObjects:Ljava/util/List;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mCachedObjects:Ljava/util/List;

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mCachedObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mCachedObjects:Ljava/util/List;

    invoke-interface {v1, v2, v0, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    invoke-virtual {v1, p2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->removeToken(Ljava/lang/Object;)V

    .line 62
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v3, v0, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorConnectorAsyncListener;->mListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v3, v0, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
