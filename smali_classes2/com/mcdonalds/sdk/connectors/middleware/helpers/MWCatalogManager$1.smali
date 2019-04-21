.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;
.super Ljava/lang/Object;
.source "MWCatalogManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->updateSocialNetworkCatalog(Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

.field final synthetic val$connectorListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;->val$connectorListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 10
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 127
    .line 128
    invoke-static {p1, p3}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnectorUtils;->exceptionFromResults(Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;Lcom/mcdonalds/sdk/AsyncException;)Lcom/mcdonalds/sdk/AsyncException;

    move-result-object v2

    .line 130
    .local v2, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz v2, :cond_1

    .line 131
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;->val$connectorListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v7, v9, v8, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-eqz p1, :cond_0

    .line 139
    const-string v7, "Social Networks"

    invoke-static {v7}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 141
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v3, v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;-><init>(Ljava/lang/String;)V

    .line 143
    .local v3, "mCatalog":Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MergeCatalog;->processData()Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;

    move-result-object v0

    .line 145
    .local v0, "catalog":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v6, "socialNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;"
    iget-object v7, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    iget-object v7, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->socialNetworks:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    iget-object v7, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->socialNetworks:Ljava/util/List;

    .line 148
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 149
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v7

    if-nez v7, :cond_2

    .line 150
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    new-instance v8, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    invoke-static {v7, v8}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$002(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;)Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    .line 152
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v7, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    iget-object v7, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->socialNetworks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 153
    iget-object v7, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalog;->market:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;

    iget-object v7, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMarket;->socialNetworks:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;

    .line 154
    .local v5, "socialNetwork":Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;

    invoke-static {v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;)Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v7

    iget-object v8, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->socialNetworkID:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    .line 155
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->toSocialNetwork()Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    .end local v1    # "i":I
    .end local v4    # "size":I
    .end local v5    # "socialNetwork":Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;
    :cond_3
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;->val$connectorListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;->val$connectorToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v7, v6, v8, v9}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager$1;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWJSONResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
