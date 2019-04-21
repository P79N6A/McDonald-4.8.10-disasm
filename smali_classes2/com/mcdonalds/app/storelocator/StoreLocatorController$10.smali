.class Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;
.super Ljava/lang/Object;
.source "StoreLocatorController.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoresByCurrentStore(Z)V
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
    .line 1431
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

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

    .line 1431
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
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
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1434
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1436
    if-nez p3, :cond_2

    .line 1437
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v1, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1302(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)Ljava/util/List;

    .line 1439
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v1, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1200(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)V

    .line 1441
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1300(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1443
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f0906fb

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, "notFound":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 1446
    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;)V

    .line 1445
    invoke-static {v1, v0, v0, v2}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 1456
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const-string v2, "No stores"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 1471
    .end local v0    # "notFound":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1474
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    .line 1476
    return-void

    .line 1460
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    .line 1463
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$800(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$10;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1300(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$900(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)V

    goto :goto_0

    .line 1468
    :cond_2
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
