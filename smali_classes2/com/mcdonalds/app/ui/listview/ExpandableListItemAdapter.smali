.class public abstract Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ExpandableListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper;,
        Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;,
        Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;,
        Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;,
        Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$TitleViewOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mAbsListView:Landroid/widget/AbsListView;

.field private final mContentParentResId:I

.field private final mContext:Landroid/content/Context;

.field private mExpandCollapseListener:Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;

.field private final mExpandedIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mLimit:I

.field private final mTitleParentResId:I

.field private mViewLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I
    .param p3, "titleParentResId"    # I
    .param p4, "contentParentResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    .local p5, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 68
    iput-object p1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mContext:Landroid/content/Context;

    .line 69
    iput p2, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mViewLayoutResId:I

    .line 70
    iput p3, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mTitleParentResId:I

    .line 71
    iput p4, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mContentParentResId:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    .line 74
    if-eqz p5, :cond_0

    .end local p5    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    iput-object p5, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mItems:Ljava/util/List;

    .line 75
    return-void

    .line 74
    .restart local p5    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    new-instance p5, Ljava/util/ArrayList;

    .end local p5    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;Landroid/view/View;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.listview.ExpandableListItemAdapter"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->toggle(Landroid/view/View;)V

    return-void
.end method

.method private createView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const/4 v3, 0x0

    const-string v1, "createView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget v1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mViewLayoutResId:I

    if-nez v1, :cond_0

    .line 164
    new-instance v0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$RootView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "view":Landroid/view/ViewGroup;
    :goto_0
    return-object v0

    .line 166
    .end local v0    # "view":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mViewLayoutResId:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .restart local v0    # "view":Landroid/view/ViewGroup;
    goto :goto_0
.end method

.method private findPositionForId(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v1, "findPositionForId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 342
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 346
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 341
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findViewForPosition(I)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v3, "findViewForPosition"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    const/4 v2, 0x0

    .line 331
    .local v2, "result":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-nez v2, :cond_1

    .line 332
    iget-object v3, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "childView":Landroid/view/View;
    iget-object v3, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-static {v3, v0}, Lcom/mcdonalds/app/ui/listview/AdapterViewUtil;->getPositionForView(Landroid/widget/AdapterView;Landroid/view/View;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 334
    move-object v2, v0

    .line 331
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "childView":Landroid/view/View;
    :cond_1
    return-object v2
.end method

.method private getContentParent(I)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v3, "getContentParent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, "contentParent":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->findViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, "parentView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 293
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;

    if-eqz v3, :cond_0

    .line 294
    check-cast v2, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;

    .end local v2    # "tag":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getContentParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 298
    :cond_0
    return-object v0
.end method

.method private toggle(Landroid/view/View;)V
    .locals 10
    .param p1, "contentParent"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "toggle"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object p1, v9, v7

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    move v4, v6

    .line 372
    .local v4, "isVisible":Z
    :goto_0
    if-nez v4, :cond_4

    iget v8, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mLimit:I

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mLimit:I

    if-lt v8, v9, :cond_4

    .line 373
    .local v6, "shouldCollapseOther":Z
    :goto_1
    if-eqz v6, :cond_1

    .line 374
    iget-object v8, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 376
    .local v1, "firstId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->findPositionForId(J)I

    move-result v2

    .line 377
    .local v2, "firstPosition":I
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getContentParent(I)Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, "firstEV":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 379
    invoke-static {v0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper;->animateCollapsing(Landroid/view/View;)V

    .line 381
    :cond_0
    iget-object v7, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 383
    iget-object v7, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;

    if-eqz v7, :cond_1

    .line 384
    iget-object v7, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;

    invoke-interface {v7, v2}, Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;->onItemCollapsed(I)V

    .line 388
    .end local v0    # "firstEV":Landroid/view/View;
    .end local v1    # "firstId":Ljava/lang/Long;
    .end local v2    # "firstPosition":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 389
    .local v3, "id":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->findPositionForId(J)I

    move-result v5

    .line 390
    .local v5, "position":I
    if-eqz v4, :cond_5

    .line 391
    invoke-static {p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper;->animateCollapsing(Landroid/view/View;)V

    .line 392
    iget-object v7, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object v7, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;

    if-eqz v7, :cond_2

    .line 395
    iget-object v7, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;

    invoke-interface {v7, v5}, Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;->onItemCollapsed(I)V

    .line 406
    :cond_2
    :goto_2
    return-void

    .end local v3    # "id":Ljava/lang/Long;
    .end local v4    # "isVisible":Z
    .end local v5    # "position":I
    .end local v6    # "shouldCollapseOther":Z
    :cond_3
    move v4, v7

    .line 371
    goto :goto_0

    .restart local v4    # "isVisible":Z
    :cond_4
    move v6, v7

    .line 372
    goto :goto_1

    .line 399
    .restart local v3    # "id":Ljava/lang/Long;
    .restart local v5    # "position":I
    .restart local v6    # "shouldCollapseOther":Z
    :cond_5
    iget-object v7, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-static {p1, v7}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ExpandCollapseHelper;->animateExpanding(Landroid/view/View;Landroid/widget/AbsListView;)V

    .line 400
    iget-object v7, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v7, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;

    if-eqz v7, :cond_2

    .line 403
    iget-object v7, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;

    invoke-interface {v7, v5}, Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;->onItemExpanded(I)V

    goto :goto_2
.end method


# virtual methods
.method public collapse(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v2, "collapse"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v0

    .line 322
    .local v0, "itemId":J
    iget-object v2, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->toggle(I)V

    goto :goto_0
.end method

.method protected createViewHolder(Landroid/view/View;)Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v0, "createViewHolder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    new-instance v0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolderImpl;-><init>(Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$1;)V

    return-object v0
.end method

.method public expand(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v2, "expand"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v0

    .line 308
    .local v0, "itemId":J
    iget-object v2, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->toggle(I)V

    goto :goto_0
.end method

.method public abstract getContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    move-object v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    .line 117
    .local v3, "view":Landroid/view/ViewGroup;
    if-nez v3, :cond_2

    .line 118
    invoke-direct {p0, p3}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 120
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->createViewHolder(Landroid/view/View;)Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;

    move-result-object v4

    .line 121
    .local v4, "viewHolder":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;
    iget v5, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mTitleParentResId:I

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->setTitleParent(Landroid/view/ViewGroup;)V

    .line 122
    iget v5, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mContentParentResId:I

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->setContentParent(Landroid/view/ViewGroup;)V

    .line 124
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 128
    :goto_0
    const-class v5, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;

    invoke-static {p2, v5, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 130
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getTitleView()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getTitleParent()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, "titleView":Landroid/view/View;
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getTitleView()Landroid/view/View;

    move-result-object v5

    if-eq v2, v5, :cond_0

    .line 132
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getTitleParent()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 133
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getTitleParent()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 141
    :cond_0
    invoke-interface {v4, v2}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->setTitleView(Landroid/view/View;)V

    .line 143
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getContentParent()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "contentView":Landroid/view/View;
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getContentView()Landroid/view/View;

    move-result-object v5

    if-eq v0, v5, :cond_1

    .line 145
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getContentParent()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 146
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getContentParent()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    :cond_1
    invoke-interface {v4, v0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->setContentView(Landroid/view/View;)V

    .line 150
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getContentParent()Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v5, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getContentParent()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 153
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getContentParent()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 154
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x2

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 155
    invoke-interface {v4}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;->getContentParent()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-static {v3, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v5, "getView"

    invoke-static {p0, v5}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object v3

    .line 126
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleView":Landroid/view/View;
    .end local v4    # "viewHolder":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;
    :cond_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;

    .restart local v4    # "viewHolder":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter$ViewHolder;
    goto/16 :goto_0

    .line 150
    .restart local v0    # "contentView":Landroid/view/View;
    .restart local v2    # "titleView":Landroid/view/View;
    :cond_3
    const/16 v5, 0x8

    goto :goto_1
.end method

.method public isExpanded(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v2, "isExpanded"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v0

    .line 222
    .local v0, "itemId":J
    iget-object v2, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v4, "notifyDataSetChanged"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 271
    new-instance v1, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 273
    .local v1, "removedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 274
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v2

    .line 275
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    .end local v2    # "id":J
    :cond_0
    return-void
.end method

.method public setAbsListView(Landroid/widget/AbsListView;)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v0, "setAbsListView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iput-object p1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mAbsListView:Landroid/widget/AbsListView;

    .line 79
    return-void
.end method

.method public setExpandCollapseListener(Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;)V
    .locals 3
    .param p1, "expandCollapseListener"    # Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v0, "setExpandCollapseListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iput-object p1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandCollapseListener:Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;

    .line 110
    return-void
.end method

.method public setLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v0, "setLimit"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iput p1, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mLimit:I

    .line 104
    iget-object v0, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method

.method public toggle(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;, "Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter<TT;>;"
    const-string v4, "toggle"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getItemId(I)J

    move-result-wide v2

    .line 356
    .local v2, "itemId":J
    iget-object v4, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 358
    .local v1, "isExpanded":Z
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->getContentParent(I)Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, "contentParent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->toggle(Landroid/view/View;)V

    .line 363
    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 364
    iget-object v4, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 366
    iget-object v4, p0, Lcom/mcdonalds/app/ui/listview/ExpandableListItemAdapter;->mExpandedIds:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
