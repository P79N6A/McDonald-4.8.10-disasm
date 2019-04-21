.class Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;
.super Ljava/lang/Object;
.source "StoreLocatorController.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoresByLocation(Z)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

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

    .line 1367
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1370
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1371
    if-nez p3, :cond_2

    .line 1372
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1102(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Z)Z

    .line 1374
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1200(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)V

    .line 1376
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1300(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1379
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    .line 1396
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "No stores"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 1415
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    .line 1416
    return-void

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$800(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1300(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$900(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)V

    .line 1403
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    goto :goto_0

    .line 1406
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1407
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1408
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1102(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Z)Z

    goto :goto_0

    .line 1412
    :cond_3
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    goto :goto_0
.end method
