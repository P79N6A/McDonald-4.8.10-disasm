.class Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$1;
.super Ljava/lang/Object;
.source "CatalogManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->execute()V
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
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
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
    .line 639
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$1;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 1
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$1;->this$0:Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;->access$300(Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater;)V

    .line 643
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 639
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/data/CatalogManager$NonBlockingCatalogUpdater$1;->onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
