.class Lcom/mcdonalds/app/util/ServiceUtils$10;
.super Ljava/lang/Object;
.source "ServiceUtils.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/ServiceUtils;->fetchPromotions(Ljava/lang/String;I)V
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
        "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/ServiceUtils;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/ServiceUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/ServiceUtils;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/mcdonalds/app/util/ServiceUtils$10;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

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

    .line 465
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/util/ServiceUtils$10;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    if-eqz p3, :cond_0

    .line 470
    iget-object v1, p0, Lcom/mcdonalds/app/util/ServiceUtils$10;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-static {v1, v6}, Lcom/mcdonalds/app/util/ServiceUtils;->access$1002(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z

    .line 478
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/util/ServiceUtils$10;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-static {v1}, Lcom/mcdonalds/app/util/ServiceUtils;->access$1200(Lcom/mcdonalds/app/util/ServiceUtils;)Ljava/util/List;

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

    .line 479
    .local v0, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;>;"
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1

    .line 473
    .end local v0    # "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;>;>;"
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/util/ServiceUtils$10;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-static {v2}, Lcom/mcdonalds/app/util/ServiceUtils;->access$1100(Lcom/mcdonalds/app/util/ServiceUtils;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, p1, v4, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 474
    iget-object v1, p0, Lcom/mcdonalds/app/util/ServiceUtils$10;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-static {v1, v7}, Lcom/mcdonalds/app/util/ServiceUtils;->access$1002(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z

    goto :goto_0

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/util/ServiceUtils$10;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-static {v1}, Lcom/mcdonalds/app/util/ServiceUtils;->access$1200(Lcom/mcdonalds/app/util/ServiceUtils;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 483
    iget-object v1, p0, Lcom/mcdonalds/app/util/ServiceUtils$10;->this$0:Lcom/mcdonalds/app/util/ServiceUtils;

    invoke-static {v1, v6}, Lcom/mcdonalds/app/util/ServiceUtils;->access$1302(Lcom/mcdonalds/app/util/ServiceUtils;Z)Z

    .line 484
    return-void
.end method
