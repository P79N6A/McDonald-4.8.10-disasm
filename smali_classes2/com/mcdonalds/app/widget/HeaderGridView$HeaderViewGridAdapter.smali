.class Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;
.super Ljava/lang/Object;
.source "HeaderGridView.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewGridAdapter"
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p2, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 227
    const/4 v0, 0x1

    iput v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    .line 237
    iput-object p2, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 238
    instance-of v0, p2, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mIsFilterable:Z

    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "headerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iput-object p1, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 245
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 246
    return-void
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "areAllListInfosSelectable"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;

    .line 270
    .local v0, "info":Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;
    iget-boolean v4, v0, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-nez v4, :cond_0

    .line 275
    .end local v0    # "info":Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const-string v1, "areAllItemsEnabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iget-object v1, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 306
    iget-boolean v1, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "getFilter"

    invoke-static {p0, v1, v0}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-boolean v1, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mIsFilterable:Z

    if-eqz v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 460
    :cond_0
    return-object v0
.end method

.method public getHeadersCount()I
    .locals 2

    .prologue
    const-string v0, "getHeadersCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const-string v3, "getItem"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 338
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    .line 339
    iget v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v3, p1, v3

    if-nez v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;

    iget-object v3, v3, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 351
    :goto_0
    return-object v3

    .line 342
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 346
    :cond_1
    sub-int v1, p1, v2

    .line 347
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 348
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    .line 349
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 350
    if-ge v1, v0, :cond_2

    .line 351
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 355
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemId(I)J
    .locals 7
    .param p1, "position"    # I

    .prologue
    const-string v3, "getItemId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 361
    .local v2, "numHeadersAndPlaceholders":I
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 362
    sub-int v1, p1, v2

    .line 363
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 364
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 365
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 368
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const-string v4, "getItemViewType"

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v4

    iget v5, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v4, v5

    .line 416
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    iget v4, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-eqz v4, :cond_1

    .line 418
    iget-object v4, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 428
    :cond_0
    :goto_0
    return v3

    .line 420
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    if-lt p1, v2, :cond_2

    .line 421
    sub-int v1, p1, v2

    .line 422
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 423
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_2

    .line 424
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    goto :goto_0

    .line 428
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v4

    iget v5, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v3, v4, v5

    .line 383
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_2

    .line 384
    iget-object v4, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v5, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v5, p1, v5

    .line 385
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;

    iget-object v2, v4, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 386
    .local v2, "headerViewContainer":Landroid/view/View;
    iget v4, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_0

    .line 410
    .end local v2    # "headerViewContainer":Landroid/view/View;
    :goto_0
    invoke-static {v2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v4, "getView"

    invoke-static {p0, v4}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object v2

    .line 389
    .restart local v2    # "headerViewContainer":Landroid/view/View;
    :cond_0
    if-nez p2, :cond_1

    .line 390
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 394
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 395
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v2, p2

    .line 396
    goto :goto_0

    .line 401
    .end local v2    # "headerViewContainer":Landroid/view/View;
    :cond_2
    sub-int v1, p1, v3

    .line 402
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 403
    .local v0, "adapterCount":I
    iget-object v4, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    .line 404
    iget-object v4, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 405
    if-ge v1, v0, :cond_3

    .line 406
    iget-object v4, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 410
    :cond_3
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const-string v0, "getViewTypeCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 436
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    const-string v0, "getWrappedAdapter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 2

    .prologue
    const-string v0, "hasStableIds"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const-string v0, "isEmpty"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, "isEnabled"

    new-array v6, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v5

    invoke-static {p0, v3, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v6, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v6

    .line 316
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    .line 317
    iget v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v3, p1, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v6, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v6, p1, v6

    .line 318
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/mcdonalds/app/widget/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-eqz v3, :cond_0

    move v3, v4

    .line 327
    :goto_0
    return v3

    :cond_0
    move v3, v5

    .line 318
    goto :goto_0

    .line 322
    :cond_1
    sub-int v1, p1, v2

    .line 323
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 324
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    .line 325
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 326
    if-ge v1, v0, :cond_2

    .line 327
    iget-object v3, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 331
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    const-string v0, "notifyDataSetChanged"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 470
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    const-string v0, "registerDataSetObserver"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 445
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 5
    .param p1, "numColumns"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "setNumColumns"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    if-ge p1, v4, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of columns must be 1 or more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iget v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    if-eq v0, p1, :cond_1

    .line 262
    iput p1, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    .line 263
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->notifyDataSetChanged()V

    .line 265
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    const-string v0, "unregisterDataSetObserver"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/mcdonalds/app/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 453
    :cond_0
    return-void
.end method
