.class public Lcom/mcdonalds/app/home/dashboard/viewholder/HeaderPagerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HeaderPagerViewHolder.java"


# instance fields
.field public mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    const v0, 0x7f110538

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/HeaderPagerViewHolder;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 22
    return-void
.end method
