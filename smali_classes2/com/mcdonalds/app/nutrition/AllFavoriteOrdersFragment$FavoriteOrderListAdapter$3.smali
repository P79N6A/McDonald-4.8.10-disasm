.class Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$3;
.super Ljava/lang/Object;
.source "AllFavoriteOrdersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

.field final synthetic val$favoriteOrder:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$3;->this$1:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$3;->val$favoriteOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$3;->this$1:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$3;->val$favoriteOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->access$300(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 173
    return-void
.end method
