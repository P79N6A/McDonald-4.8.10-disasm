.class public Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NoOffersAvailableViewHolder.java"


# instance fields
.field private mCheckBackPrompt:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    const v0, 0x7f110141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;->mContainer:Landroid/view/View;

    .line 32
    const v0, 0x7f110144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 33
    const v0, 0x7f110142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;->mCheckBackPrompt:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method public static bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.viewholder.NoOffersAvailableViewHolder"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;->mCheckBackPrompt:Landroid/widget/TextView;

    .line 47
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.dashboard.offersTextNoOffers"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {p0, v1}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 55
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.viewholder.NoOffersAvailableViewHolder"

    const-string v2, "create"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v5, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const v1, 0x7f040045

    invoke-virtual {p0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;

    invoke-direct {v1, v0}, Lcom/mcdonalds/app/home/dashboard/viewholder/NoOffersAvailableViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
