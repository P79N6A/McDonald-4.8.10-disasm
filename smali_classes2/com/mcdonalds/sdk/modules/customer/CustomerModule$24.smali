.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->deleteFavoriteProducts(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$asyncToken:Lcom/mcdonalds/sdk/AsyncToken;

.field final synthetic val$favoriteItems:Ljava/util/List;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->val$asyncToken:Lcom/mcdonalds/sdk/AsyncToken;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->val$favoriteItems:Ljava/util/List;

    iput-object p4, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 1034
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    const/4 v3, 0x0

    .line 1037
    if-nez p3, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->val$asyncToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/AsyncToken;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$600(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFavoriteItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->val$favoriteItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1040
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$700(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    .line 1041
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$200(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 1042
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1043
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->val$asyncToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1044
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$24;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFavoriteItems(Ljava/util/List;)V

    .line 1046
    :cond_0
    return-void
.end method
