.class Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;
.super Ljava/lang/Object;
.source "HomeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/HomeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HomeItemViewHolder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mIcon:Landroid/widget/ImageView;

.field mRootView:Landroid/view/View;

.field mSubtitle:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeListAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeListAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    const v0, 0x7f1100bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mRootView:Landroid/view/View;

    .line 703
    const v0, 0x7f1104a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 704
    const v0, 0x7f1104a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 705
    const v0, 0x7f1104a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$HomeItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 706
    return-void
.end method
