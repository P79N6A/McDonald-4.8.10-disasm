.class final Landroid/databinding/adapters/SearchViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "SearchViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/SearchViewBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;

.field final synthetic val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;->val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;->val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;->val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;->val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
