.class public Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;
.super Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
.source "ExpandableStickyListHeadersListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$IAnimationExecutor;
    }
.end annotation


# instance fields
.field mDefaultAnimExecutor:Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$IAnimationExecutor;

.field mExpandableStickyListHeadersAdapter:Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$1;

    invoke-direct {v0, p0}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$1;-><init>(Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->mDefaultAnimExecutor:Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$IAnimationExecutor;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$1;

    invoke-direct {v0, p0}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$1;-><init>(Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->mDefaultAnimExecutor:Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$IAnimationExecutor;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$1;

    invoke-direct {v0, p0}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$1;-><init>(Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->mDefaultAnimExecutor:Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$IAnimationExecutor;

    .line 47
    return-void
.end method


# virtual methods
.method public getAdapter()Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;

    return-object v0
.end method

.method public bridge synthetic getAdapter()Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->getAdapter()Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;

    .prologue
    .line 56
    new-instance v0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;

    invoke-direct {v0, p1}, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;

    .line 57
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->mExpandableStickyListHeadersAdapter:Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersAdapter;

    invoke-super {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V

    .line 58
    return-void
.end method

.method public setAnimExecutor(Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$IAnimationExecutor;)V
    .locals 0
    .param p1, "animExecutor"    # Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$IAnimationExecutor;

    .prologue
    .line 103
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView;->mDefaultAnimExecutor:Lse/emilsjolander/stickylistheaders/ExpandableStickyListHeadersListView$IAnimationExecutor;

    .line 104
    return-void
.end method
