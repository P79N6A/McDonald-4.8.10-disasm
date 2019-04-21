.class public Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SectionHeaderViewHolder.java"


# instance fields
.field public mHeaderImageView:Landroid/widget/ImageView;

.field public mHeaderTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    const v0, 0x7f1100bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f11050e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->mHeaderImageView:Landroid/widget/ImageView;

    .line 29
    return-void
.end method

.method public static bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;
    .param p2, "mcdListSectionHeaderModel"    # Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.viewholder.SectionHeaderViewHolder"

    const-string v2, "bind"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    :goto_0
    invoke-virtual {p2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->isImageVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getImageResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getBackgroundColorResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    :goto_1
    iget-object v1, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getBackgroundColorResource()I

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getBackgroundColorResource()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 54
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 57
    iget-object v1, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getTextColor()I

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 57
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    return-void

    .line 43
    :cond_0
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0049

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3
.end method

.method public static create(Landroid/view/LayoutInflater;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p0, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v6, 0x0

    const-string v2, "com.mcdonalds.app.home.dashboard.viewholder.SectionHeaderViewHolder"

    const-string v3, "create"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v6, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    const v2, 0x7f040187

    invoke-virtual {p0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "sectionHeaderView":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;

    invoke-direct {v1, v0}, Lcom/mcdonalds/app/home/dashboard/viewholder/SectionHeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    return-object v1
.end method
