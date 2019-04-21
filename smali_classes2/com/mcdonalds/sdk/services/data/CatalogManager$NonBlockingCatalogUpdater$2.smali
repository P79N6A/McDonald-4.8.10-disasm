.class Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$2;
.super Ljava/lang/Object;
.source "CatalogManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->updateAdvertisablePromotions()V
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
        "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$2;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 655
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$2;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 658
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotionEntity;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$2;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$2;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->access$400(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->access$500(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;ILjava/util/List;)V

    .line 659
    return-void
.end method
