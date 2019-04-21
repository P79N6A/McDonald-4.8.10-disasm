.class Lcom/mcdonalds/app/util/ServiceUtils$5;
.super Ljava/lang/Object;
.source "ServiceUtils.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/ServiceUtils;->fetchOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
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
        "Lcom/mcdonalds/sdk/modules/models/Offer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/ServiceUtils;

.field final synthetic val$storeId:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/ServiceUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/ServiceUtils;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/mcdonalds/app/util/ServiceUtils$5;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    iput-object p2, p0, Lcom/mcdonalds/app/util/ServiceUtils$5;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/app/util/ServiceUtils$5;->val$storeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/util/ServiceUtils$5;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v1, p0, Lcom/mcdonalds/app/util/ServiceUtils$5;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-static {v1, v4}, Lcom/mcdonalds/app/util/ServiceUtils;->access$602(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z

    .line 283
    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/util/ServiceUtils$5;->val$username:Ljava/lang/String;

    iget-object v3, p0, Lcom/mcdonalds/app/util/ServiceUtils$5;->val$storeId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setCachedOffers(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 287
    iget-object v1, p0, Lcom/mcdonalds/app/util/ServiceUtils$5;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-static {v1, v5}, Lcom/mcdonalds/app/util/ServiceUtils;->access$702(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/util/ServiceUtils$5;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-static {v1}, Lcom/mcdonalds/app/util/ServiceUtils;->access$800(Lcom/mcdonalds/app/util/ServiceUtils;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/AsyncListener;

    .line 295
    .local v0, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/util/ServiceUtils$5;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-static {v2, p1}, Lcom/mcdonalds/app/util/ServiceUtils;->access$900(Lcom/mcdonalds/app/util/ServiceUtils;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1

    .line 290
    .end local v0    # "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;>;"
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/util/ServiceUtils$5;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-static {v1, v4}, Lcom/mcdonalds/app/util/ServiceUtils;->access$702(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z

    goto :goto_0

    .line 298
    :cond_1
    return-void
.end method
