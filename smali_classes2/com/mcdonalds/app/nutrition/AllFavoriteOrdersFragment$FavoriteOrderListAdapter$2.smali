.class Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$2;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;ILcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$2;->this$1:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

    iput p2, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$2;->val$favoriteOrder:Lcom/mcdonalds/sdk/modules/models/Order;

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

    .line 165
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$2;->this$1:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

    iget v1, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$2;->val$position:I

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$2;->val$favoriteOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->access$400(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;ILcom/mcdonalds/sdk/modules/models/Order;)V

    .line 166
    return-void
.end method
