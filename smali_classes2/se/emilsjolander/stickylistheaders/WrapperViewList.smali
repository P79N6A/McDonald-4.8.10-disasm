.class Lse/emilsjolander/stickylistheaders/WrapperViewList;
.super Landroid/widget/ListView;
.source "WrapperViewList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/emilsjolander/stickylistheaders/WrapperViewList$LifeCycleListener;
    }
.end annotation


# instance fields
.field private mBlockLayoutChildren:Z

.field private mClippingToPadding:Z

.field private mFooterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLifeCycleListener:Lse/emilsjolander/stickylistheaders/WrapperViewList$LifeCycleListener;

.field private mSelectorPositionField:Ljava/lang/reflect/Field;

.field private mSelectorRect:Landroid/graphics/Rect;

.field private mTopClippingLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mSelectorRect:Landroid/graphics/Rect;

    .line 26
    iput-boolean v3, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mClippingToPadding:Z

    .line 27
    const/4 v2, 0x0

    iput-boolean v2, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mBlockLayoutChildren:Z

    .line 35
    :try_start_0
    const-class v2, Landroid/widget/AbsListView;

    const-string v3, "mSelectorRect"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 36
    .local v1, "selectorRectField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mSelectorRect:Landroid/graphics/Rect;

    .line 39
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 40
    const-class v2, Landroid/widget/AbsListView;

    const-string v3, "mSelectorPosition"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mSelectorPositionField:Ljava/lang/reflect/Field;

    .line 41
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mSelectorPositionField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    .end local v1    # "selectorRectField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private addInternalFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    .line 130
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method private getSelectorPosition()I
    .locals 4

    .prologue
    .line 75
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mSelectorPositionField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 78
    invoke-virtual {p0, v1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_0

    .line 79
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v2

    add-int/2addr v2, v1

    .line 91
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 77
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_1
    :try_start_0
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mSelectorPositionField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    const/4 v2, -0x1

    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method private positionSelectorRect()V
    .locals 7

    .prologue
    .line 61
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getSelectorPosition()I

    move-result v1

    .line 63
    .local v1, "selectorPosition":I
    if-ltz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v0

    .line 65
    .local v0, "firstVisibleItem":I
    sub-int v4, v1, v0

    invoke-virtual {p0, v4}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "v":Landroid/view/View;
    instance-of v4, v2, Lse/emilsjolander/stickylistheaders/WrapperView;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 67
    check-cast v3, Lse/emilsjolander/stickylistheaders/WrapperView;

    .line 68
    .local v3, "wrapper":Lse/emilsjolander/stickylistheaders/WrapperView;
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Lse/emilsjolander/stickylistheaders/WrapperView;->getTop()I

    move-result v5

    iget v6, v3, Lse/emilsjolander/stickylistheaders/WrapperView;->mItemTop:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 72
    .end local v0    # "firstVisibleItem":I
    .end local v1    # "selectorPosition":I
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "wrapper":Lse/emilsjolander/stickylistheaders/WrapperView;
    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 117
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->addInternalFooterView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 123
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->addInternalFooterView(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method containsFooterView(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 96
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->positionSelectorRect()V

    .line 97
    iget v1, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mTopClippingLength:I

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 100
    .local v0, "clipping":Landroid/graphics/Rect;
    iget v1, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mTopClippingLength:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 101
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 107
    .end local v0    # "clipping":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mLifeCycleListener:Lse/emilsjolander/stickylistheaders/WrapperViewList$LifeCycleListener;

    invoke-interface {v1, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList$LifeCycleListener;->onDispatchDrawOccurred(Landroid/graphics/Canvas;)V

    .line 108
    return-void

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method getFixedFirstVisibleItem()I
    .locals 5

    .prologue
    .line 154
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getFirstVisiblePosition()I

    move-result v0

    .line 155
    .local v0, "firstVisibleItem":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    move v1, v0

    .line 177
    .end local v0    # "firstVisibleItem":I
    .local v1, "firstVisibleItem":I
    :goto_0
    return v1

    .line 161
    .end local v1    # "firstVisibleItem":I
    .restart local v0    # "firstVisibleItem":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 162
    invoke-virtual {p0, v2}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ltz v3, :cond_3

    .line 163
    add-int/2addr v0, v2

    .line 171
    :cond_1
    iget-boolean v3, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mClippingToPadding:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getPaddingTop()I

    move-result v3

    if-lez v3, :cond_2

    if-lez v0, :cond_2

    .line 172
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lez v3, :cond_2

    .line 173
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v1, v0

    .line 177
    .end local v0    # "firstVisibleItem":I
    .restart local v1    # "firstVisibleItem":I
    goto :goto_0

    .line 161
    .end local v1    # "firstVisibleItem":I
    .restart local v0    # "firstVisibleItem":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mBlockLayoutChildren:Z

    if-nez v0, :cond_0

    .line 193
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 195
    :cond_0
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 54
    instance-of v0, p1, Lse/emilsjolander/stickylistheaders/WrapperView;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lse/emilsjolander/stickylistheaders/WrapperView;

    .end local p1    # "view":Landroid/view/View;
    iget-object p1, p1, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    .line 57
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlockLayoutChildren(Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mBlockLayoutChildren:Z

    .line 188
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mClippingToPadding:Z

    .line 183
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 184
    return-void
.end method

.method setLifeCycleListener(Lse/emilsjolander/stickylistheaders/WrapperViewList$LifeCycleListener;)V
    .locals 0
    .param p1, "lifeCycleListener"    # Lse/emilsjolander/stickylistheaders/WrapperViewList$LifeCycleListener;

    .prologue
    .line 111
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mLifeCycleListener:Lse/emilsjolander/stickylistheaders/WrapperViewList$LifeCycleListener;

    .line 112
    return-void
.end method

.method setTopClippingLength(I)V
    .locals 0
    .param p1, "topClipping"    # I

    .prologue
    .line 150
    iput p1, p0, Lse/emilsjolander/stickylistheaders/WrapperViewList;->mTopClippingLength:I

    .line 151
    return-void
.end method
