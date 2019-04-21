.class public Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;
.super Ljava/lang/Object;
.source "AutoNaviResponseListener.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mStoresListener:Lcom/mcdonalds/sdk/AsyncListener;
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
.method public constructor <init>(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 20
    .local p2, "storesListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;->mStoresListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 23
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;->mToken:Lcom/mcdonalds/sdk/AsyncToken;

    .line 24
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v6, 0x0

    .line 31
    if-eqz p3, :cond_0

    .line 33
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;->mStoresListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;->mToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v4, v6, v5, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 48
    :goto_0
    return-void

    .line 37
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v3, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;->getStores()Ljava/util/List;

    move-result-object v0

    .line 40
    .local v0, "autoNaviStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;>;"
    if-eqz v0, :cond_1

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->toStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;->mStoresListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;->mToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v4, v3, v5, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponseListener;->onResponse(Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
