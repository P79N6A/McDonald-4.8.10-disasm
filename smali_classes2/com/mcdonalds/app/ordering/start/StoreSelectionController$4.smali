.class Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;
.super Ljava/lang/Object;
.source "StoreSelectionController.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->renameStoreInFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

.field final synthetic val$previousNickName:Ljava/lang/String;

.field final synthetic val$store:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field final synthetic val$successListener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;Lcom/mcdonalds/sdk/modules/storelocator/Store;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;->val$store:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;->val$previousNickName:Ljava/lang/String;

    iput-object p4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;->val$successListener:Lcom/mcdonalds/sdk/AsyncListener;

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

    .line 405
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    if-eqz p3, :cond_1

    .line 410
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 411
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 413
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;->val$store:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;->val$previousNickName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 422
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;->val$successListener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;->val$successListener:Lcom/mcdonalds/sdk/AsyncListener;

    if-nez p3, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 426
    :cond_0
    return-void

    .line 415
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 417
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-static {v2, p1}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->access$500(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;Ljava/util/List;)V

    .line 419
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;->this$0:Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->access$600(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 423
    goto :goto_1
.end method
