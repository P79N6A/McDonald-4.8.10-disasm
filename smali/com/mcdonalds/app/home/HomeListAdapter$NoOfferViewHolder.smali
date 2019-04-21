.class Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;
.super Ljava/lang/Object;
.source "HomeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/HomeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoOfferViewHolder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mCheckBackPrompt:Landroid/widget/TextView;

.field mContainer:Landroid/view/View;

.field mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeListAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeListAdapter;
    .param p2, "noOffersView"    # Landroid/view/View;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    const v0, 0x7f110141

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->mContainer:Landroid/view/View;

    .line 726
    const v0, 0x7f110144

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 727
    const v0, 0x7f110142

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeListAdapter$NoOfferViewHolder;->mCheckBackPrompt:Landroid/widget/TextView;

    .line 728
    return-void
.end method
