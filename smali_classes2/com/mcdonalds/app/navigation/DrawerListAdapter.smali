.class public Lcom/mcdonalds/app/navigation/DrawerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DrawerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/mcdonalds/app/ui/models/DrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ui/models/DrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ui/models/DrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResource:I

.field private mStateDependentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ui/models/DrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private myFilter:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ui/models/DrawerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/ui/models/DrawerItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    iput-object p1, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput p2, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mResource:I

    .line 45
    iput-object p3, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mItems:Ljava/util/List;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mItems:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mOriginalItems:Ljava/util/List;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mItems:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mStateDependentItems:Ljava/util/List;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    iget-object v1, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/models/DrawerItem;

    .line 51
    .local v0, "item":Lcom/mcdonalds/app/ui/models/DrawerItem;
    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/models/DrawerItem;->isRequiresLoginState()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mStateDependentItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v0    # "item":Lcom/mcdonalds/app/ui/models/DrawerItem;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/navigation/DrawerListAdapter;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.navigation.DrawerListAdapter"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mOriginalItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/navigation/DrawerListAdapter;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.navigation.DrawerListAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/navigation/DrawerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/navigation/DrawerListAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.navigation.DrawerListAdapter"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mItems:Ljava/util/List;

    return-object p1
.end method

.method private setImageAndVisibilityForItem(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v4, 0x0

    const-string v1, "setImageAndVisibilityForItem"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v1, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 135
    .local v0, "imageResource":I
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    const-string v0, "getFilter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->myFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/mcdonalds/app/navigation/DrawerListAdapter$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/navigation/DrawerListAdapter$1;-><init>(Lcom/mcdonalds/app/navigation/DrawerListAdapter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->myFilter:Landroid/widget/Filter;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->myFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Lcom/mcdonalds/app/ui/models/DrawerItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/models/DrawerItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    const-string v0, "getItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->getItem(I)Lcom/mcdonalds/app/ui/models/DrawerItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItemId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "getItemViewType"

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->getItem(I)Lcom/mcdonalds/app/ui/models/DrawerItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/models/DrawerItem;->isHeading()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    .line 82
    if-nez p2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->mResource:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 87
    new-instance v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;-><init>()V

    .line 88
    .local v1, "viewHolder":Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;
    const v2, 0x7f1101ba

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mLeftImage:Landroid/widget/ImageView;

    .line 89
    const v2, 0x7f1101bb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f1101bc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mRightImage:Landroid/widget/ImageView;

    .line 91
    const v2, 0x7f1101b9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mBackground:Landroid/view/View;

    .line 93
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->getItem(I)Lcom/mcdonalds/app/ui/models/DrawerItem;

    move-result-object v0

    .line 102
    .local v0, "item":Lcom/mcdonalds/app/ui/models/DrawerItem;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getDataLayerTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getSectionTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    iget-object v2, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getSectionTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/models/DrawerItem;->isHeading()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    iget-object v2, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mBackground:Landroid/view/View;

    const v3, 0x7f0e008f

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    iget-object v2, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :cond_2
    :goto_1
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v2, "getView"

    invoke-static {p0, v2}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 97
    .end local v0    # "item":Lcom/mcdonalds/app/ui/models/DrawerItem;
    .end local v1    # "viewHolder":Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;
    goto :goto_0

    .line 117
    .restart local v0    # "item":Lcom/mcdonalds/app/ui/models/DrawerItem;
    :cond_4
    iget-object v2, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mBackground:Landroid/view/View;

    const v3, 0x7f0201c9

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    iget-object v2, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v2, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getRightHandImageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 122
    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getRightHandImageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mRightImage:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->setImageAndVisibilityForItem(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 125
    :cond_5
    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getLeftHandImageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getLeftHandImageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/mcdonalds/app/navigation/DrawerListAdapter$ViewHolder;->mLeftImage:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->setImageAndVisibilityForItem(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const-string v0, "getViewTypeCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const/4 v0, 0x2

    return v0
.end method
