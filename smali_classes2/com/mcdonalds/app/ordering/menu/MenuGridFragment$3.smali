.class Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$3;
.super Ljava/lang/Object;
.source "MenuGridFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->updateFavorites()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

.field final synthetic val$favoriteItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$3;->val$favoriteItems:Ljava/util/List;

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

    .line 211
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$3;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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

    .line 214
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 216
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 217
    .local v0, "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getType()Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    if-ne v2, v3, :cond_0

    .line 218
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$3;->val$favoriteItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    .end local v0    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->access$000(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$3;->val$favoriteItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->updateFavorites(Ljava/util/List;)V

    .line 222
    return-void
.end method
