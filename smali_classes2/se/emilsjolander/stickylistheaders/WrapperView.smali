.class public Lse/emilsjolander/stickylistheaders/WrapperView;
.super Landroid/view/ViewGroup;
.source "WrapperView.java"


# instance fields
.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field mHeader:Landroid/view/View;

.field mItem:Landroid/view/View;

.field mItemTop:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/WrapperView;->getWidth()I

    move-result v0

    iget v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDividerHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 153
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    :cond_1
    return-void
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method public getItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    return-object v0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 124
    const/4 p2, 0x0

    .line 125
    const/4 p3, 0x0

    .line 126
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/WrapperView;->getWidth()I

    move-result p4

    .line 127
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/WrapperView;->getHeight()I

    move-result p5

    .line 129
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 131
    .local v0, "headerHeight":I
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 132
    iput v0, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItemTop:I

    .line 133
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v1, p2, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 142
    .end local v0    # "headerHeight":I
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDividerHeight:I

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    iget v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDividerHeight:I

    iput v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItemTop:I

    .line 137
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDividerHeight:I

    invoke-virtual {v1, p2, v2, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 139
    :cond_1
    iput p3, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItemTop:I

    .line 140
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v8, 0x8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 82
    .local v2, "measuredWidth":I
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 84
    .local v0, "childWidthMeasureSpec":I
    const/4 v1, 0x0

    .line 87
    .local v1, "measuredHeight":I
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 88
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 89
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_1

    .line 90
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 90
    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 96
    :goto_0
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 102
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_1
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 104
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 105
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    .line 106
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 105
    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 118
    :goto_2
    invoke-virtual {p0, v2, v1}, Lse/emilsjolander/stickylistheaders/WrapperView;->setMeasuredDimension(II)V

    .line 119
    return-void

    .line 93
    :cond_1
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    .line 94
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 93
    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 97
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v8, :cond_0

    .line 98
    iget v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDividerHeight:I

    add-int/2addr v1, v4

    goto :goto_1

    .line 107
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    if-eqz v3, :cond_4

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_4

    .line 108
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 108
    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 110
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_2

    .line 112
    :cond_4
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    .line 113
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 112
    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 114
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_2
.end method

.method update(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "item"    # Landroid/view/View;
    .param p2, "header"    # Landroid/view/View;
    .param p3, "divider"    # Landroid/graphics/drawable/Drawable;
    .param p4, "dividerHeight"    # I

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "List view item must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    if-eq v1, p1, :cond_2

    .line 50
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {p0, v1}, Lse/emilsjolander/stickylistheaders/WrapperView;->removeView(Landroid/view/View;)V

    .line 51
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 53
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 54
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    :cond_1
    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/WrapperView;->addView(Landroid/view/View;)V

    .line 62
    :cond_2
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eq v1, p2, :cond_4

    .line 63
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 64
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v1}, Lse/emilsjolander/stickylistheaders/WrapperView;->removeView(Landroid/view/View;)V

    .line 66
    :cond_3
    iput-object p2, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    .line 67
    if-eqz p2, :cond_4

    .line 68
    invoke-virtual {p0, p2}, Lse/emilsjolander/stickylistheaders/WrapperView;->addView(Landroid/view/View;)V

    .line 72
    :cond_4
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eq v1, p3, :cond_5

    .line 73
    iput-object p3, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 74
    iput p4, p0, Lse/emilsjolander/stickylistheaders/WrapperView;->mDividerHeight:I

    .line 75
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/WrapperView;->invalidate()V

    .line 77
    :cond_5
    return-void
.end method
