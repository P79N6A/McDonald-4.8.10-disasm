.class Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3$1;
.super Ljava/lang/Object;
.source "CatalogManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/data/CatalogManager$AsyncPersistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;->onResponse(Lcom/mcdonalds/sdk/modules/models/Catalog;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3$1;->this$1:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3$1;->this$1:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;

    iget-object v0, v0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$3;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->access$700(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)V

    .line 690
    return-void
.end method
