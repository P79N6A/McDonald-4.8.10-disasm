.class public Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NotSubscribedToOffersViewHolder.java"


# instance fields
.field mCheckBackPrompt:Landroid/widget/TextView;

.field mContainer:Landroid/view/View;

.field mJoinNow:Landroid/widget/TextView;

.field mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    const v0, 0x7f110141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->mContainer:Landroid/view/View;

    .line 34
    const v0, 0x7f110144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 35
    const v0, 0x7f110142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->mCheckBackPrompt:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f110143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->mJoinNow:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public static bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.viewholder.NotSubscribedToOffersViewHolder"

    const-string v2, "bind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->mCheckBackPrompt:Landroid/widget/TextView;

    .line 47
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.dashboard.offersTextNotSubscribed"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {p0, v1}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->mJoinNow:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->mJoinNow:Landroid/widget/TextView;

    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.viewholder.NotSubscribedToOffersViewHolder"

    const-string v2, "create"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v5, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const v1, 0x7f040045

    invoke-virtual {p0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "rootView":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;

    invoke-direct {v1, v0}, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
