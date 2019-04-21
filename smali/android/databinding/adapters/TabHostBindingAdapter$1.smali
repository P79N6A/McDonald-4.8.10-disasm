.class final Landroid/databinding/adapters/TabHostBindingAdapter$1;
.super Ljava/lang/Object;
.source "TabHostBindingAdapter.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/TabHostBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attrChange:Landroid/databinding/InverseBindingListener;

.field final synthetic val$listener:Landroid/widget/TabHost$OnTabChangeListener;


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/databinding/adapters/TabHostBindingAdapter$1;->val$listener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Landroid/databinding/adapters/TabHostBindingAdapter$1;->val$listener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/databinding/adapters/TabHostBindingAdapter$1;->val$attrChange:Landroid/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroid/databinding/InverseBindingListener;->onChange()V

    .line 64
    return-void
.end method
