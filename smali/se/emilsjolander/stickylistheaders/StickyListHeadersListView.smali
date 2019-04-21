.class public Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
.super Landroid/widget/FrameLayout;
.source "StickyListHeadersListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;,
        Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;,
        Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;,
        Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;,
        Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;,
        Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;,
        Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

.field private mAreHeadersSticky:Z

.field private mClippingToPadding:Z

.field private mDataSetObserver:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDownY:F

.field private mHeader:Landroid/view/View;

.field private mHeaderId:Ljava/lang/Long;

.field private mHeaderOffset:Ljava/lang/Integer;

.field private mHeaderOwnsTouch:Z

.field private mHeaderPosition:Ljava/lang/Integer;

.field private mIsDrawingListUnderStickyHeader:Z

.field private mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

.field private mOnHeaderClickListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

.field private mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnStickyHeaderChangedListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;

.field private mOnStickyHeaderOffsetChangedListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mStickyHeaderTopOffset:I

.field private mTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    sget v0, Lse/emilsjolander/stickylistheaders/R$attr;->stickyListHeadersListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v11, 0xb

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    iput-boolean v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 93
    iput-boolean v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    .line 94
    iput-boolean v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z

    .line 95
    iput v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mStickyHeaderTopOffset:I

    .line 96
    iput v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    .line 97
    iput v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    .line 98
    iput v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    .line 99
    iput v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingBottom:I

    .line 126
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mTouchSlop:F

    .line 129
    new-instance v6, Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-direct {v6, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    .line 132
    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 133
    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getDividerHeight()I

    move-result v6

    iput v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    .line 134
    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v6, v10}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v6, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setDividerHeight(I)V

    .line 137
    if-eqz p2, :cond_5

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget-object v7, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView:[I

    invoke-virtual {v6, p2, v7, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v6, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_padding:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 143
    .local v2, "padding":I
    sget v6, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_paddingLeft:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    .line 144
    sget v6, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_paddingTop:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    .line 145
    sget v6, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_paddingRight:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    .line 146
    sget v6, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_paddingBottom:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingBottom:I

    .line 148
    iget v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    iget v7, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    iget v8, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    iget v9, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingBottom:I

    invoke-virtual {p0, v6, v7, v8, v9}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setPadding(IIII)V

    .line 152
    sget v6, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_clipToPadding:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    .line 153
    const/4 v6, 0x1

    invoke-super {p0, v6}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 154
    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    iget-boolean v7, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    invoke-virtual {v6, v7}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setClipToPadding(Z)V

    .line 157
    sget v6, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_scrollbars:I

    const/16 v7, 0x200

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 158
    .local v3, "scrollBars":I
    iget-object v7, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    and-int/lit16 v6, v3, 0x200

    if-eqz v6, :cond_6

    move v6, v4

    :goto_0
    invoke-virtual {v7, v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setVerticalScrollBarEnabled(Z)V

    .line 159
    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    and-int/lit16 v7, v3, 0x100

    if-eqz v7, :cond_7

    :goto_1
    invoke-virtual {v6, v4}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setHorizontalScrollBarEnabled(Z)V

    .line 162
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_0

    .line 163
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_overScrollMode:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setOverScrollMode(I)V

    .line 167
    :cond_0
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_fadingEdgeLength:I

    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    .line 168
    invoke-virtual {v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 167
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setFadingEdgeLength(I)V

    .line 169
    sget v4, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_requiresFadingEdge:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 170
    .local v1, "fadingEdge":I
    const/16 v4, 0x1000

    if-ne v1, v4, :cond_8

    .line 171
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setVerticalFadingEdgeEnabled(Z)V

    .line 172
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setHorizontalFadingEdgeEnabled(Z)V

    .line 180
    :goto_2
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_cacheColorHint:I

    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    .line 181
    invoke-virtual {v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getCacheColorHint()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 180
    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setCacheColorHint(I)V

    .line 182
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v11, :cond_1

    .line 183
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_choiceMode:I

    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    .line 184
    invoke-virtual {v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChoiceMode()I

    move-result v6

    .line 183
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setChoiceMode(I)V

    .line 186
    :cond_1
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_drawSelectorOnTop:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setDrawSelectorOnTop(Z)V

    .line 187
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_fastScrollEnabled:I

    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    .line 188
    invoke-virtual {v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->isFastScrollEnabled()Z

    move-result v6

    .line 187
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setFastScrollEnabled(Z)V

    .line 189
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v11, :cond_2

    .line 190
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_fastScrollAlwaysVisible:I

    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    .line 192
    invoke-virtual {v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->isFastScrollAlwaysVisible()Z

    move-result v6

    .line 190
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setFastScrollAlwaysVisible(Z)V

    .line 195
    :cond_2
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_scrollbarStyle:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setScrollBarStyle(I)V

    .line 197
    sget v4, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_listSelector:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 198
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_listSelector:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_3
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_scrollingCache:I

    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    .line 202
    invoke-virtual {v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->isScrollingCacheEnabled()Z

    move-result v6

    .line 201
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setScrollingCacheEnabled(Z)V

    .line 204
    sget v4, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_divider:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 205
    sget v4, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_divider:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 208
    :cond_4
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_stackFromBottom:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setStackFromBottom(Z)V

    .line 210
    sget v4, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_dividerHeight:I

    iget v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    .line 213
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    sget v5, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_android_transcriptMode:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setTranscriptMode(I)V

    .line 217
    sget v4, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_hasStickyHeaders:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 218
    sget v4, Lse/emilsjolander/stickylistheaders/R$styleable;->StickyListHeadersListView_isDrawingListUnderStickyHeader:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "fadingEdge":I
    .end local v2    # "padding":I
    .end local v3    # "scrollBars":I
    :cond_5
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    new-instance v5, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;

    invoke-direct {v5, p0, v10}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$WrapperViewListLifeCycleListener;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;)V

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setLifeCycleListener(Lse/emilsjolander/stickylistheaders/WrapperViewList$LifeCycleListener;)V

    .line 228
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    new-instance v5, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;

    invoke-direct {v5, p0, v10}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$WrapperListScrollListener;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;)V

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 230
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {p0, v4}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->addView(Landroid/view/View;)V

    .line 231
    return-void

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "padding":I
    .restart local v3    # "scrollBars":I
    :cond_6
    move v6, v5

    .line 158
    goto/16 :goto_0

    :cond_7
    move v4, v5

    .line 159
    goto/16 :goto_1

    .line 173
    .restart local v1    # "fadingEdge":I
    :cond_8
    const/16 v4, 0x2000

    if-ne v1, v4, :cond_9

    .line 174
    :try_start_1
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setVerticalFadingEdgeEnabled(Z)V

    .line 175
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setHorizontalFadingEdgeEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 222
    .end local v1    # "fadingEdge":I
    .end local v2    # "padding":I
    .end local v3    # "scrollBars":I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4

    .line 177
    .restart local v1    # "fadingEdge":I
    .restart local v2    # "padding":I
    .restart local v3    # "scrollBars":I
    :cond_9
    :try_start_2
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setVerticalFadingEdgeEnabled(Z)V

    .line 178
    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setHorizontalFadingEdgeEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic access$1000(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Z
    .locals 1
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    return v0
.end method

.method static synthetic access$1100(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)I
    .locals 1
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .prologue
    .line 38
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1200(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # J

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # J

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$500(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;
    .locals 1
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .prologue
    .line 38
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->clearHeader()V

    return-void
.end method

.method static synthetic access$700(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$800(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/WrapperViewList;
    .locals 1
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    return-object v0
.end method

.method static synthetic access$900(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;I)V
    .locals 0
    .param p0, "x0"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->updateOrClearHeader(I)V

    return-void
.end method

.method private clearHeader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->removeView(Landroid/view/View;)V

    .line 290
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 291
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    .line 292
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 293
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    .line 296
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setTopClippingLength(I)V

    .line 297
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 299
    :cond_0
    return-void
.end method

.method private ensureHeaderHasCorrectLayoutParams(Landroid/view/View;)V
    .locals 4
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 241
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 242
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v3, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_0

    .line 245
    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 246
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private isStartOfSection(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 561
    if-eqz p1, :cond_0

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureHeader(Landroid/view/View;)V
    .locals 6
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    sub-int v2, v3, v4

    .line 254
    .local v2, "width":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 256
    .local v1, "parentWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 258
    .local v0, "parentHeightMeasureSpec":I
    invoke-virtual {p0, p1, v1, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->measureChild(Landroid/view/View;II)V

    .line 261
    .end local v0    # "parentHeightMeasureSpec":I
    .end local v1    # "parentWidthMeasureSpec":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

.method private requireSdkVersion(I)Z
    .locals 3
    .param p1, "versionCode"    # I

    .prologue
    .line 681
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p1, :cond_0

    .line 682
    const-string v0, "StickyListHeaders"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api lvl must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to call this method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x0

    .line 685
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setHeaderOffet(I)V
    .locals 4
    .param p1, "offset"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 442
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    .line 443
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 444
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 450
    :goto_0
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnStickyHeaderOffsetChangedListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnStickyHeaderOffsetChangedListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    neg-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;->onStickyHeaderOffsetChanged(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View;I)V

    .line 454
    :cond_1
    return-void

    .line 446
    :cond_2
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 447
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 448
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private stickyHeaderTop()I
    .locals 2

    .prologue
    .line 579
    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mStickyHeaderTopOffset:I

    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private swapHeader(Landroid/view/View;)V
    .locals 2
    .param p1, "newHeader"    # Landroid/view/View;

    .prologue
    .line 386
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->removeView(Landroid/view/View;)V

    .line 389
    :cond_0
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 390
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->addView(Landroid/view/View;)V

    .line 391
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    new-instance v1, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;

    invoke-direct {v1, p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 402
    return-void
.end method

.method private updateHeader(I)V
    .locals 14
    .param p1, "headerPosition"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 337
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 338
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v10

    .line 339
    .local v10, "headerId":J
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_5

    .line 340
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    .line 341
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 342
    .local v8, "header":Landroid/view/View;
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eq v0, v8, :cond_3

    .line 343
    if-nez v8, :cond_2

    .line 344
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_2
    invoke-direct {p0, v8}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->swapHeader(Landroid/view/View;)V

    .line 348
    :cond_3
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->ensureHeaderHasCorrectLayoutParams(Landroid/view/View;)V

    .line 349
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->measureHeader(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnStickyHeaderChangedListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;

    if-eqz v0, :cond_4

    .line 351
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnStickyHeaderChangedListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;->onStickyHeaderChanged(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View;IJ)V

    .line 356
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    .line 360
    .end local v8    # "header":Landroid/view/View;
    .end local v10    # "headerId":J
    :cond_5
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->stickyHeaderTop()I

    move-result v9

    .line 365
    .local v9, "headerOffset":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v0

    if-ge v12, v0, :cond_7

    .line 366
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, v12}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 367
    .local v6, "child":Landroid/view/View;
    instance-of v0, v6, Lse/emilsjolander/stickylistheaders/WrapperView;

    if-eqz v0, :cond_9

    move-object v0, v6

    check-cast v0, Lse/emilsjolander/stickylistheaders/WrapperView;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v7, 0x1

    .line 368
    .local v7, "doesChildHaveHeader":Z
    :goto_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->containsFooterView(Landroid/view/View;)Z

    move-result v13

    .line 369
    .local v13, "isChildFooter":Z
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->stickyHeaderTop()I

    move-result v1

    if-lt v0, v1, :cond_a

    if-nez v7, :cond_6

    if-eqz v13, :cond_a

    .line 370
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 375
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "doesChildHaveHeader":Z
    .end local v13    # "isChildFooter":Z
    :cond_7
    invoke-direct {p0, v9}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setHeaderOffet(I)V

    .line 377
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z

    if-nez v0, :cond_8

    .line 378
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    .line 379
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 378
    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setTopClippingLength(I)V

    .line 382
    :cond_8
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 383
    return-void

    .line 367
    .restart local v6    # "child":Landroid/view/View;
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    .line 365
    .restart local v7    # "doesChildHaveHeader":Z
    .restart local v13    # "isChildFooter":Z
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private updateHeaderVisibilities()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 407
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->stickyHeaderTop()I

    move-result v4

    .line 408
    .local v4, "top":I
    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v1

    .line 409
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 412
    iget-object v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v6, v3}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 413
    .local v0, "child":Landroid/view/View;
    instance-of v6, v0, Lse/emilsjolander/stickylistheaders/WrapperView;

    if-nez v6, :cond_1

    .line 409
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v0

    .line 418
    check-cast v5, Lse/emilsjolander/stickylistheaders/WrapperView;

    .line 419
    .local v5, "wrapperViewChild":Lse/emilsjolander/stickylistheaders/WrapperView;
    invoke-virtual {v5}, Lse/emilsjolander/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 424
    iget-object v2, v5, Lse/emilsjolander/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    .line 425
    .local v2, "childHeader":Landroid/view/View;
    invoke-virtual {v5}, Lse/emilsjolander/stickylistheaders/WrapperView;->getTop()I

    move-result v6

    if-ge v6, v4, :cond_2

    .line 426
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v7, :cond_0

    .line 427
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 430
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 431
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 435
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childHeader":Landroid/view/View;
    .end local v5    # "wrapperViewChild":Lse/emilsjolander/stickylistheaders/WrapperView;
    :cond_3
    return-void
.end method

.method private updateOrClearHeader(I)V
    .locals 10
    .param p1, "firstVisiblePosition"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 302
    iget-object v8, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    if-nez v8, :cond_1

    move v0, v6

    .line 303
    .local v0, "adapterCount":I
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v8, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-nez v8, :cond_2

    .line 331
    :cond_0
    :goto_1
    return-void

    .line 302
    .end local v0    # "adapterCount":I
    :cond_1
    iget-object v8, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    invoke-virtual {v8}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->getCount()I

    move-result v0

    goto :goto_0

    .line 307
    .restart local v0    # "adapterCount":I
    :cond_2
    iget-object v8, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v8}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getHeaderViewsCount()I

    move-result v4

    .line 308
    .local v4, "headerViewCount":I
    sub-int v3, p1, v4

    .line 309
    .local v3, "headerPosition":I
    iget-object v8, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v8}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v8

    if-lez v8, :cond_3

    .line 310
    iget-object v8, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v8, v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, "firstItem":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->stickyHeaderTop()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 312
    add-int/lit8 v3, v3, 0x1

    .line 319
    .end local v2    # "firstItem":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v8}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_7

    move v1, v7

    .line 320
    .local v1, "doesListHaveChildren":Z
    :goto_2
    if-eqz v1, :cond_8

    iget-object v8, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    .line 321
    invoke-virtual {v8}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getFirstVisiblePosition()I

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    .line 322
    invoke-virtual {v8, v6}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->stickyHeaderTop()I

    move-result v9

    if-lt v8, v9, :cond_8

    move v5, v7

    .line 323
    .local v5, "isFirstViewBelowTop":Z
    :goto_3
    add-int/lit8 v8, v0, -0x1

    if-gt v3, v8, :cond_4

    if-gez v3, :cond_5

    :cond_4
    move v6, v7

    .line 325
    .local v6, "isHeaderPositionOutsideAdapterRange":Z
    :cond_5
    if-eqz v1, :cond_6

    if-nez v6, :cond_6

    if-eqz v5, :cond_9

    .line 326
    :cond_6
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->clearHeader()V

    goto :goto_1

    .end local v1    # "doesListHaveChildren":Z
    .end local v5    # "isFirstViewBelowTop":Z
    .end local v6    # "isHeaderPositionOutsideAdapterRange":Z
    :cond_7
    move v1, v6

    .line 319
    goto :goto_2

    .restart local v1    # "doesListHaveChildren":Z
    :cond_8
    move v5, v6

    .line 322
    goto :goto_3

    .line 330
    .restart local v5    # "isFirstViewBelowTop":Z
    .restart local v6    # "isHeaderPositionOutsideAdapterRange":Z
    :cond_9
    invoke-direct {p0, v3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->updateHeader(I)V

    goto :goto_1
.end method


# virtual methods
.method public areHeadersSticky()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1
    .param p1, "direction"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1112
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 280
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 283
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 459
    .local v8, "action":I
    if-nez v8, :cond_0

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDownY:F

    .line 461
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDownY:F

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOffset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOwnsTouch:Z

    .line 465
    :cond_0
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOwnsTouch:Z

    if-eqz v0, :cond_4

    .line 466
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 467
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 486
    .local v11, "handled":Z
    :goto_1
    return v11

    .end local v11    # "handled":Z
    :cond_1
    move v0, v12

    .line 461
    goto :goto_0

    .line 469
    :cond_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 470
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 471
    .local v9, "cancelEvent":Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 472
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 473
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 476
    .end local v9    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 477
    .local v10, "downEvent":Landroid/view/MotionEvent;
    invoke-virtual {v10, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 478
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, v10}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 479
    .restart local v11    # "handled":Z
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 480
    iput-boolean v12, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeaderOwnsTouch:Z

    goto :goto_1

    .line 483
    .end local v10    # "downEvent":Landroid/view/MotionEvent;
    .end local v11    # "handled":Z
    :cond_4
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .restart local v11    # "handled":Z
    goto :goto_1
.end method

.method public getAdapter()Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    iget-object v0, v0, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->mDelegate:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    goto :goto_0
.end method

.method public getAreHeadersSticky()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->areHeadersSticky()Z

    move-result v0

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 953
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getCheckedItemCount()I

    move-result v0

    .line 956
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 961
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getCheckedItemIds()[J

    move-result-object v0

    .line 964
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 969
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 974
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getCount()I

    move-result v0

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getEmptyView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getFooterViewsCount()I

    move-result v0

    return v0
.end method

.method public getHeaderOverlap(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 565
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, v3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->isStartOfSection(I)Z

    move-result v1

    .line 566
    .local v1, "isStartOfSection":Z
    if-nez v1, :cond_1

    .line 567
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    const/4 v3, 0x0

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v2, p1, v3, v4}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 568
    .local v0, "header":Landroid/view/View;
    if-nez v0, :cond_0

    .line 569
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "header may not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    :cond_0
    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->ensureHeaderHasCorrectLayoutParams(Landroid/view/View;)V

    .line 572
    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->measureHeader(Landroid/view/View;)V

    .line 573
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 575
    .end local v0    # "header":Landroid/view/View;
    :cond_1
    return v2
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getHeaderViewsCount()I

    move-result v0

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getListChildCount()I
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getOverScrollMode()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 841
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getOverScrollMode()I

    move-result v0

    .line 844
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 1049
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    return v0
.end method

.method public getScrollBarStyle()I
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method public getStickyHeaderTopOffset()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mStickyHeaderTopOffset:I

    return v0
.end method

.method public getWrappedList()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    return-object v0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->isHorizontalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->isVerticalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 265
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v3}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->layout(IIII)V

    .line 266
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 268
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 269
    .local v0, "headerTop":I
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    iget v3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 270
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    .line 269
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 272
    .end local v0    # "headerTop":I
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 236
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->measureHeader(Landroid/view/View;)V

    .line 237
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1105
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1106
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1107
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1096
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1097
    .local v0, "superState":Landroid/os/Parcelable;
    sget-object v1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq v0, v1, :cond_0

    .line 1098
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Handling non empty state of parent class is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1100
    :cond_0
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setAdapter(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    .prologue
    const/4 v2, 0x0

    .line 691
    if-nez p1, :cond_2

    .line 692
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    instance-of v0, v0, Lse/emilsjolander/stickylistheaders/SectionIndexerAdapterWrapper;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    check-cast v0, Lse/emilsjolander/stickylistheaders/SectionIndexerAdapterWrapper;

    iput-object v2, v0, Lse/emilsjolander/stickylistheaders/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    .line 695
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    iput-object v2, v0, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->mDelegate:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    .line 698
    :cond_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 699
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->clearHeader()V

    .line 724
    :goto_0
    return-void

    .line 702
    :cond_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_3

    .line 703
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDataSetObserver:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 706
    :cond_3
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_4

    .line 707
    new-instance v0, Lse/emilsjolander/stickylistheaders/SectionIndexerAdapterWrapper;

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lse/emilsjolander/stickylistheaders/SectionIndexerAdapterWrapper;-><init>(Landroid/content/Context;Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    .line 711
    :goto_1
    new-instance v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    invoke-direct {v0, p0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDataSetObserver:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    .line 712
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDataSetObserver:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperDataSetObserver;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 714
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_5

    .line 715
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    new-instance v1, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;

    invoke-direct {v1, p0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;)V

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->setOnHeaderClickListener(Lse/emilsjolander/stickylistheaders/AdapterWrapper$OnHeaderClickListener;)V

    .line 720
    :goto_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1, v2}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;I)V

    .line 722
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 723
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->clearHeader()V

    goto :goto_0

    .line 709
    :cond_4
    new-instance v0, Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;-><init>(Landroid/content/Context;Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    goto :goto_1

    .line 717
    :cond_5
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->setOnHeaderClickListener(Lse/emilsjolander/stickylistheaders/AdapterWrapper$OnHeaderClickListener;)V

    goto :goto_2
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1
    .param p1, "areHeadersSticky"    # Z

    .prologue
    .line 585
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 586
    if-nez p1, :cond_0

    .line 587
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->clearHeader()V

    .line 592
    :goto_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->invalidate()V

    .line 593
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v0

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->updateOrClearHeader(I)V

    goto :goto_0
.end method

.method public setBlockLayoutChildren(Z)V
    .locals 1
    .param p1, "blockLayoutChildren"    # Z

    .prologue
    .line 1120
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setBlockLayoutChildren(Z)V

    .line 1121
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1
    .param p1, "choiceMode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 943
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setChoiceMode(I)V

    .line 944
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 1005
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setClipToPadding(Z)V

    .line 1008
    :cond_0
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    .line 1009
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 731
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 732
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1, v2}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;I)V

    .line 735
    :cond_0
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 3
    .param p1, "dividerHeight"    # I

    .prologue
    .line 738
    iput p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    .line 739
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1, v2}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;I)V

    .line 742
    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 2
    .param p1, "drawingListUnderStickyHeader"    # Z

    .prologue
    .line 623
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mIsDrawingListUnderStickyHeader:Z

    .line 625
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setTopClippingLength(I)V

    .line 626
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 811
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setEmptyView(Landroid/view/View;)V

    .line 812
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysVisible"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1058
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setFastScrollAlwaysVisible(Z)V

    .line 1061
    :cond_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "fastScrollEnabled"    # Z

    .prologue
    .line 1053
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setFastScrollEnabled(Z)V

    .line 1054
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "horizontalScrollBarEnabled"    # Z

    .prologue
    .line 835
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setHorizontalScrollBarEnabled(Z)V

    .line 836
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 948
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1, p2}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setItemChecked(IZ)V

    .line 949
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1089
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1092
    :cond_0
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 991
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 992
    return-void
.end method

.method public setOnHeaderClickListener(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;)V
    .locals 3
    .param p1, "listener"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    .prologue
    const/4 v2, 0x0

    .line 633
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    .line 634
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    new-instance v1, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;

    invoke-direct {v1, p0, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$AdapterWrapperHeaderClickHandler;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$1;)V

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->setOnHeaderClickListener(Lse/emilsjolander/stickylistheaders/AdapterWrapper$OnHeaderClickListener;)V

    .line 638
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    new-instance v1, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$2;

    invoke-direct {v1, p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$2;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/AdapterWrapper;->setOnHeaderClickListener(Lse/emilsjolander/stickylistheaders/AdapterWrapper$OnHeaderClickListener;)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 771
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 772
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 775
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 776
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 753
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    .line 754
    return-void
.end method

.method public setOnStickyHeaderChangedListener(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;

    .prologue
    .line 659
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnStickyHeaderChangedListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderChangedListener;

    .line 660
    return-void
.end method

.method public setOnStickyHeaderOffsetChangedListener(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;

    .prologue
    .line 655
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mOnStickyHeaderOffsetChangedListener:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$OnStickyHeaderOffsetChangedListener;

    .line 656
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 758
    if-eqz p1, :cond_0

    .line 759
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    new-instance v1, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$3;

    invoke-direct {v1, p0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$3;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 768
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 850
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->requireSdkVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setOverScrollMode(I)V

    .line 855
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 1013
    iput p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingLeft:I

    .line 1014
    iput p2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    .line 1015
    iput p3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingRight:I

    .line 1016
    iput p4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingBottom:I

    .line 1018
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setPadding(IIII)V

    .line 1021
    :cond_0
    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1022
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 1023
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1076
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setScrollBarStyle(I)V

    .line 1077
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 912
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setSelectionFromTop(II)V

    .line 913
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setSelectionAfterHeaderView()V

    .line 917
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 920
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mAdapter:Lse/emilsjolander/stickylistheaders/AdapterWrapper;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr p2, v0

    .line 921
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Z

    if-eqz v0, :cond_1

    :goto_1
    sub-int/2addr p2, v1

    .line 922
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1, p2}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setSelectionFromTop(II)V

    .line 923
    return-void

    .line 920
    :cond_0
    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getHeaderOverlap(I)I

    move-result v0

    goto :goto_0

    .line 921
    :cond_1
    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mPaddingTop:I

    goto :goto_1
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 930
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setSelector(I)V

    .line 931
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 926
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 927
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 1124
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setStackFromBottom(Z)V

    .line 1125
    return-void
.end method

.method public setStickyHeaderTopOffset(I)V
    .locals 1
    .param p1, "stickyHeaderTopOffset"    # I

    .prologue
    .line 613
    iput p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mStickyHeaderTopOffset:I

    .line 614
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v0

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->updateOrClearHeader(I)V

    .line 615
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1116
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setTranscriptMode(I)V

    .line 1117
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 830
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->setVerticalScrollBarEnabled(Z)V

    .line 831
    return-void
.end method

.method public showContextMenu()Z
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->mList:Lse/emilsjolander/stickylistheaders/WrapperViewList;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/WrapperViewList;->showContextMenu()Z

    move-result v0

    return v0
.end method
