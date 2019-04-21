.class final Landroid/databinding/adapters/RadioGroupBindingAdapter$1;
.super Ljava/lang/Object;
.source "RadioGroupBindingAdapter.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/RadioGroupBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attrChange:Landroid/databinding/InverseBindingListener;

.field final synthetic val$listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 46
    iget-object v0, p0, Landroid/databinding/adapters/RadioGroupBindingAdapter$1;->val$listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Landroid/databinding/adapters/RadioGroupBindingAdapter$1;->val$listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 50
    :cond_0
    iget-object v0, p0, Landroid/databinding/adapters/RadioGroupBindingAdapter$1;->val$attrChange:Landroid/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroid/databinding/InverseBindingListener;->onChange()V

    .line 51
    return-void
.end method
