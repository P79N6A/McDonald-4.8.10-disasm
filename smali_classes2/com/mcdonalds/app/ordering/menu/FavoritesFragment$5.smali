.class Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;
.super Ljava/lang/Object;
.source "FavoritesFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->processFavoriteItems()V
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
        "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

.field final synthetic val$favoriteItem:Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

.field final synthetic val$favoriteProductsCounter:Lcom/mcdonalds/sdk/AsyncCounter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;Lcom/mcdonalds/sdk/modules/models/FavoriteItem;Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;->val$favoriteItem:Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;->val$favoriteProductsCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    if-nez p3, :cond_1

    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;->val$favoriteItem:Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getFavoriteId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setFavoriteId(Ljava/lang/Integer;)V

    .line 267
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;->val$favoriteItem:Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setFavoriteName(Ljava/lang/String;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;->val$favoriteProductsCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;->val$favoriteProductsCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, p3}, Lcom/mcdonalds/sdk/AsyncCounter;->error(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 272
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->access$002(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;Z)Z

    goto :goto_0
.end method

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

    .line 261
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
