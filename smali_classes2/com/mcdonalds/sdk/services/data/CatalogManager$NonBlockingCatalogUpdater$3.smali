.class Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;
.super Ljava/lang/Object;
.source "CatalogManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->finishExecute()V
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
        "Lcom/mcdonalds/sdk/modules/models/Catalog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/Catalog;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/Catalog;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 680
    if-nez p3, :cond_1

    .line 681
    if-nez p1, :cond_0

    .line 683
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->access$600(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->access$200(Landroid/content/Context;I)V

    .line 696
    :goto_0
    return-void

    .line 686
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/services/data/CatalogManager;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->access$600(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/mcdonalds/sdk/services/data/CatalogManager;-><init>(Lcom/mcdonalds/sdk/modules/models/Catalog;Landroid/content/Context;Lcom/mcdonalds/sdk/services/data/CatalogManager$1;)V

    new-instance v1, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3$1;-><init>(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;)V

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->access$900(Lcom/mcdonalds/sdk/services/data/CatalogManager;Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;)V

    goto :goto_0

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->access$600(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->access$200(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 677
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Catalog;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;->onResponse(Lcom/mcdonalds/sdk/modules/models/Catalog;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
