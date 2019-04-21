.class Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$3;
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
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Order;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

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

    .line 224
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$3;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;"
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

    .line 227
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->access$200(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;Z)V

    .line 229
    if-nez p3, :cond_1

    .line 230
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesAdapter:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->setOrders(Ljava/util/List;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->access$002(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;Z)Z

    goto :goto_0
.end method
