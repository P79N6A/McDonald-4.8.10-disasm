.class public Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "OrderPagerAdapter.java"


# instance fields
.field private mOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;->mOrders:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    const/4 v1, 0x3

    const-string v2, "getCount"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 63
    .local v0, "size":I
    if-le v0, v1, :cond_0

    move v0, v1

    .end local v0    # "size":I
    :cond_0
    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const-string v2, "getItem"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Order;

    .line 40
    .local v1, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    new-instance v0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;-><init>()V

    .line 41
    .local v0, "fragment":Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->setOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 42
    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const-string v0, "getItemPosition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    const/4 v0, -0x2

    return v0
.end method

.method public setOrders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;"
    const-string v0, "setOrders"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;->mOrders:Ljava/util/List;

    .line 25
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;->notifyDataSetChanged()V

    .line 26
    return-void
.end method
