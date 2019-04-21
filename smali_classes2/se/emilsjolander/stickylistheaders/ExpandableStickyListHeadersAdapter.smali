.class Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpandableStickyListHeadersAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;


# instance fields
.field mCollapseHeaderIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIdToViewMap:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

.field mViewToItemIdMap:Lse/emilsjolander/stickylistheaders/DualHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/emilsjolander/stickylistheaders/DualHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V
    .locals 1
    .param p1, "innerAdapter"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Lse/emilsjolander/stickylistheaders/DualHashMap;

    invoke-direct {v0}, Lse/emilsjolander/stickylistheaders/DualHashMap;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mViewToItemIdMap:Lse/emilsjolander/stickylistheaders/DualHashMap;

    .line 19
    new-instance v0, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;

    invoke-direct {v0}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mHeaderIdToViewMap:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mCollapseHeaderIds:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    .line 24
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v1, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "convertView":Landroid/view/View;
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mViewToItemIdMap:Lse/emilsjolander/stickylistheaders/DualHashMap;

    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lse/emilsjolander/stickylistheaders/DualHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mHeaderIdToViewMap:Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;

    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lse/emilsjolander/stickylistheaders/DistinctMultiHashMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mCollapseHeaderIds:Ljava/util/List;

    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "dataSetObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 48
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 49
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "dataSetObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 53
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;->mInnerAdapter:Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 54
    return-void
.end method
