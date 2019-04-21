.class public Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FavoritesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public container:Landroid/widget/RelativeLayout;

.field public favorite:Landroid/widget/ImageView;

.field public image:Landroid/widget/ImageView;

.field public item_no_available:Landroid/widget/LinearLayout;

.field public offer:Landroid/widget/ImageView;

.field public orderPager:Landroid/support/v4/view/ViewPager;

.field public pagerIndicator:Lcom/mcdonalds/app/widget/PagerIndicator;

.field public seeAll:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;Landroid/view/View;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I

    .prologue
    .line 230
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    .line 231
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 233
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 234
    const v0, 0x7f110424

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 235
    const v0, 0x7f110136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f110063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 237
    const v0, 0x7f110428

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->offer:Landroid/widget/ImageView;

    .line 238
    const v0, 0x7f110429

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->favorite:Landroid/widget/ImageView;

    .line 239
    const v0, 0x7f110425

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->item_no_available:Landroid/widget/LinearLayout;

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    if-nez p3, :cond_0

    .line 241
    const v0, 0x7f110201

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->orderPager:Landroid/support/v4/view/ViewPager;

    .line 242
    const v0, 0x7f110202

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/widget/PagerIndicator;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->pagerIndicator:Lcom/mcdonalds/app/widget/PagerIndicator;

    .line 243
    const v0, 0x7f110203

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$ViewHolder;->seeAll:Landroid/widget/TextView;

    goto :goto_0
.end method
