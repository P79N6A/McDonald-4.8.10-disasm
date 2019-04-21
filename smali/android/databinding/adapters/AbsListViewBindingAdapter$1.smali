.class final Landroid/databinding/adapters/AbsListViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "AbsListViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/AbsListViewBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$scrollListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

.field final synthetic val$scrollStateListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 47
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

    .line 49
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;->onScroll(Landroid/widget/AbsListView;III)V

    .line 51
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 39
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollStateListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollStateListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;

    invoke-interface {v0, p1, p2}, Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 42
    :cond_0
    return-void
.end method
