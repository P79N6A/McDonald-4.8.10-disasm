.class public Lcom/mcdonalds/app/widget/HeaderGridView;
.super Landroid/widget/GridView;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;,
        Lcom/mcdonalds/app/widget/HeaderGridView$FullWidthFixedViewLayout;,
        Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;
    }
.end annotation


# instance fields
.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 71
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderGridView;->initHeaderGridView()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 76
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderGridView;->initHeaderGridView()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 81
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/HeaderGridView;->initHeaderGridView()V

    .line 82
    return-void
.end method

.method private initHeaderGridView()V
    .locals 2

    .prologue
    const-string v0, "initHeaderGridView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const-string v0, "addHeaderView"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v3}, Lcom/mcdonalds/app/widget/HeaderGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 146
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    const-string v3, "addHeaderView"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 113
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;

    if-nez v3, :cond_0

    .line 114
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_0
    new-instance v2, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;-><init>(Lcom/mcdonalds/app/widget/HeaderGridView$1;)V

    .line 119
    .local v2, "info":Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;
    new-instance v1, Lcom/mcdonalds/app/widget/HeaderGridView$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/mcdonalds/app/widget/HeaderGridView$FullWidthFixedViewLayout;-><init>(Lcom/mcdonalds/app/widget/HeaderGridView;Landroid/content/Context;)V

    .line 120
    .local v1, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 121
    iput-object p1, v2, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 122
    iput-object v1, v2, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 123
    iput-object p2, v2, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 124
    iput-boolean p3, v2, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;->isSelectable:Z

    .line 125
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    if-eqz v0, :cond_1

    .line 130
    check-cast v0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->notifyDataSetChanged()V

    .line 132
    :cond_1
    return-void
.end method

.method public getHeaderViewCount()I
    .locals 2

    .prologue
    const-string v0, "getHeaderViewCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const-string v1, "onMeasure"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 87
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 88
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView;->getNumColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 3

    .prologue
    const-string v0, "setAdapter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const-string v2, "setAdapter"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v2, p0, Lcom/mcdonalds/app/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 186
    new-instance v0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v2, p1}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;-><init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 187
    .local v0, "hadapter":Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView;->getNumColumns()I

    move-result v1

    .line 188
    .local v1, "numColumns":I
    if-le v1, v5, :cond_0

    .line 189
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 191
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    .end local v0    # "hadapter":Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;
    .end local v1    # "numColumns":I
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 4
    .param p1, "clipChildren"    # Z

    .prologue
    const-string v0, "setClipChildren"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return-void
.end method
