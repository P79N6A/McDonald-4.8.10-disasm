.class Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;
.super Ljava/lang/Object;
.source "StoreLocatorModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->getAvailableStoreFeatures(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 350
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 353
    if-nez p3, :cond_0

    .line 355
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, p1, v1, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 359
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;->this$0:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;->val$requestToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;->removeToken(Ljava/lang/Object;)V

    .line 360
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$4;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v0, v2, v2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
