.class Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$1;
.super Ljava/lang/Object;
.source "AutoNaviConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;->requestStoresWithIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;

.field final synthetic val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

.field final synthetic val$storeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;Lcom/mcdonalds/sdk/AsyncCounter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$1;->this$0:Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$1;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$1;->val$storeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 161
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
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
    .line 166
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    if-eqz p3, :cond_0

    .line 167
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$1;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v2, p3}, Lcom/mcdonalds/sdk/AsyncCounter;->error(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 181
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "found":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 172
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$1;->val$storeId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    move-object v0, v1

    .line 177
    .end local v1    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$1;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    .end local v0    # "found":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviConnector$1;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
