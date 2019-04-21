.class Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;
.super Ljava/lang/Object;
.source "StoreLocatorController.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoresByLatLng(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)V
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
    .line 1316
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

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

    .line 1316
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1319
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1320
    if-nez p3, :cond_3

    .line 1321
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v2, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1102(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Z)Z

    .line 1323
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v2, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1200(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)V

    .line 1325
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1300(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1326
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const v3, 0x7f0906fb

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1327
    .local v1, "notFound":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$500(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;)V

    invoke-static {v2, v1, v1, v3}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 1334
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v3, "No stores"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 1357
    .end local v1    # "notFound":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1358
    return-void

    .line 1337
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$800(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1338
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1300(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$900(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)V

    goto :goto_0

    .line 1340
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    goto :goto_0

    .line 1344
    :cond_3
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1345
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v2, v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1102(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Z)Z

    .line 1350
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$1400(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .line 1351
    .local v0, "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    instance-of v3, v0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    if-eqz v3, :cond_4

    .line 1352
    invoke-interface {v0}, Lcom/mcdonalds/app/storelocator/StoreLocationListener;->clearZoomFlag()V

    goto :goto_1
.end method
