.class Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$6;
.super Ljava/lang/Object;
.source "FavoritesFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$6;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/models/FavoriteItem;Lcom/mcdonalds/sdk/modules/models/FavoriteItem;)I
    .locals 5
    .param p1, "lhs"    # Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .param p2, "rhs"    # Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .prologue
    const-string v2, "compare"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getFavoriteId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    .local v0, "lhsOrderId":I
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getFavoriteId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 288
    .local v1, "rhsOrderId":I
    sub-int v2, v1, v0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const-string v0, "compare"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    check-cast p2, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$6;->compare(Lcom/mcdonalds/sdk/modules/models/FavoriteItem;Lcom/mcdonalds/sdk/modules/models/FavoriteItem;)I

    move-result v0

    return v0
.end method
