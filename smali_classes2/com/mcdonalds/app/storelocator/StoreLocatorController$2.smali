.class Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;
.super Ljava/lang/Object;
.source "StoreLocatorController.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorController;->addStoreToFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
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

.field final synthetic val$favorite:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field final synthetic val$successListener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    iput-object p2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->val$favorite:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    iput-object p3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->val$successListener:Lcom/mcdonalds/sdk/AsyncListener;

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

    .line 602
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "onResponse"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 608
    if-eqz p3, :cond_1

    .line 610
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 613
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->val$favorite:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v3, v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 631
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->val$successListener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v3, :cond_0

    .line 632
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->val$successListener:Lcom/mcdonalds/sdk/AsyncListener;

    if-nez p3, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v1, v6, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 634
    :cond_0
    return-void

    .line 617
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v3, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Ljava/util/List;)V

    .line 619
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->val$favorite:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 620
    .local v0, "original":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_2

    .line 621
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->val$favorite:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setHasMobileOrdering(Ljava/lang/Boolean;)V

    .line 625
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->access$200(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    .line 628
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->notifyObservers()V

    goto :goto_0

    .end local v0    # "original":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_3
    move v1, v2

    .line 632
    goto :goto_1
.end method
