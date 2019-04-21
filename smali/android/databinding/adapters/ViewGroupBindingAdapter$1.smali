.class final Landroid/databinding/adapters/ViewGroupBindingAdapter$1;
.super Ljava/lang/Object;
.source "ViewGroupBindingAdapter.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/ViewGroupBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$added:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;

.field final synthetic val$removed:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;->val$added:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;->val$added:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;

    invoke-interface {v0, p1, p2}, Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;->val$removed:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;->val$removed:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;

    invoke-interface {v0, p1, p2}, Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 67
    :cond_0
    return-void
.end method
