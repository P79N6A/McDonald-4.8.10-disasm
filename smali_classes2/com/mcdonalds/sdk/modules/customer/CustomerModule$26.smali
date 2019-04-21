.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->retrieveFavoriteStores(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 1125
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 8
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
    .local p1, "storeList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v7, 0x0

    .line 1128
    if-nez p3, :cond_1

    .line 1129
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$800(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v4, "storeInfo":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1132
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1134
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;-><init>()V

    .line 1135
    .local v1, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->setFavoriteId(I)V

    .line 1136
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->setFavoriteNickName(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->setStoreId(I)V

    .line 1139
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1141
    .end local v1    # "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    .end local v3    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v5, v4, v6, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1146
    .end local v0    # "i":I
    .end local v2    # "size":I
    .end local v4    # "storeInfo":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;>;"
    :goto_1
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-static {v5, v6, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$300(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 1147
    return-void

    .line 1143
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$26;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v5, v7, v6, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method
