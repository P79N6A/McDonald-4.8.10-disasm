.class public Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;
.super Ljava/lang/Object;
.source "AdapterViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/AdapterViewBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnItemSelectedComponentListener"
.end annotation


# instance fields
.field private final mAttrChanged:Landroid/databinding/InverseBindingListener;

.field private final mNothingSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

.field private final mSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 74
    :cond_0
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mAttrChanged:Landroid/databinding/InverseBindingListener;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mAttrChanged:Landroid/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroid/databinding/InverseBindingListener;->onChange()V

    .line 77
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mNothingSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mNothingSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mAttrChanged:Landroid/databinding/InverseBindingListener;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mAttrChanged:Landroid/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroid/databinding/InverseBindingListener;->onChange()V

    .line 87
    :cond_1
    return-void
.end method
