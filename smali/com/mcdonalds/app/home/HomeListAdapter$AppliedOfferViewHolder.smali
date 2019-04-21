.class Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;
.super Ljava/lang/Object;
.source "HomeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/HomeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppliedOfferViewHolder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mExpirationTextView:Landroid/widget/TextView;

.field mFoodImageView:Landroid/widget/ImageView;

.field mFoodNameTextView:Landroid/widget/TextView;

.field mFoodSubtitleTextView:Landroid/widget/TextView;

.field mGridItem:Landroid/widget/LinearLayout;

.field mParent:Landroid/widget/LinearLayout;

.field mRemoveFromBasket:Landroid/widget/Button;

.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeListAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeListAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    const v0, 0x7f1100fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mParent:Landroid/widget/LinearLayout;

    .line 743
    const v0, 0x7f110136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mFoodNameTextView:Landroid/widget/TextView;

    .line 744
    const v0, 0x7f110437

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mFoodSubtitleTextView:Landroid/widget/TextView;

    .line 745
    const v0, 0x7f110063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mFoodImageView:Landroid/widget/ImageView;

    .line 746
    const v0, 0x7f110424

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mGridItem:Landroid/widget/LinearLayout;

    .line 747
    const v0, 0x7f1104a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mExpirationTextView:Landroid/widget/TextView;

    .line 748
    const v0, 0x7f1100ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$AppliedOfferViewHolder;->mRemoveFromBasket:Landroid/widget/Button;

    .line 749
    return-void
.end method
