.class public Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OfferLocationSelectorViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;
    }
.end annotation


# instance fields
.field private mOfferLocationSelectorListener:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    const v0, 0x7f1104a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;)Landroid/widget/RadioGroup;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.viewholder.OfferLocationSelectorViewHolder"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;)Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.dashboard.viewholder.OfferLocationSelectorViewHolder"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->mOfferLocationSelectorListener:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;

    return-object v0
.end method

.method public static create(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p0, "selectorView"    # Landroid/view/View;
    .param p1, "dashboardListener"    # Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.home.dashboard.viewholder.OfferLocationSelectorViewHolder"

    const-string v4, "create"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    .local v1, "viewHolder":Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;
    new-instance v0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$1;

    invoke-direct {v0, p1, v1}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;)V

    .line 36
    .local v0, "offerLocationSelectorListener":Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->setOfferLocationSelectorListener(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;)V

    .line 37
    iget-object v2, v1, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$2;

    invoke-direct {v3, v0}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$2;-><init>(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 43
    return-object v1
.end method

.method public static forceTabSelection(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;ZZ)V
    .locals 6
    .param p0, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;
    .param p1, "isNearBy"    # Z
    .param p2, "isDelivery"    # Z

    .prologue
    const/4 v5, 0x0

    const-string v0, "com.mcdonalds.app.home.dashboard.viewholder.OfferLocationSelectorViewHolder"

    const-string v1, "forceTabSelection"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {v5, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f1104aa

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$3;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$3;-><init>(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 69
    return-void

    .line 56
    :cond_0
    if-eqz p2, :cond_1

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f1104b0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f1104ae

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method


# virtual methods
.method public setOfferLocationSelectorListener(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;)V
    .locals 3
    .param p1, "offerLocationSelectorListener"    # Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;

    .prologue
    const-string v0, "setOfferLocationSelectorListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->mOfferLocationSelectorListener:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;

    .line 73
    return-void
.end method
