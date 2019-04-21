.class Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$5;
.super Ljava/lang/Object;
.source "AllFavoriteOrdersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->orderAgain(ILcom/mcdonalds/sdk/modules/models/Order;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

.field final synthetic val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field final synthetic val$favoriteOrder:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$5;->this$1:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$5;->val$favoriteOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iput-object p3, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$5;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$5;->this$1:Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$5;->val$favoriteOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter$5;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;->access$500(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 242
    return-void
.end method
