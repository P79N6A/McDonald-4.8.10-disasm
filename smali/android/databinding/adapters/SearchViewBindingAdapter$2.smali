.class final Landroid/databinding/adapters/SearchViewBindingAdapter$2;
.super Ljava/lang/Object;
.source "SearchViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/SearchViewBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;

.field final synthetic val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;


# virtual methods
.method public onSuggestionClick(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;->val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;->val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;->onSuggestionClick(I)Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;->val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;->val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;->onSuggestionSelect(I)Z

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
