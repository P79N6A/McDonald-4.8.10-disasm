.class public Lcom/mcdonalds/app/home/dashboard/viewholder/NoRestaurantsNearbyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NoRestaurantsNearbyViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.viewholder.NoRestaurantsNearbyViewHolder"

    const-string v2, "create"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v5, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const v1, 0x7f0401a7

    invoke-virtual {p0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 21
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/NoRestaurantsNearbyViewHolder;

    invoke-direct {v1, v0}, Lcom/mcdonalds/app/home/dashboard/viewholder/NoRestaurantsNearbyViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
