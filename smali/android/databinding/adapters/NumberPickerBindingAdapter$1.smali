.class final Landroid/databinding/adapters/NumberPickerBindingAdapter$1;
.super Ljava/lang/Object;
.source "NumberPickerBindingAdapter.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/NumberPickerBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attrChange:Landroid/databinding/InverseBindingListener;

.field final synthetic val$listener:Landroid/widget/NumberPicker$OnValueChangeListener;


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 55
    iget-object v0, p0, Landroid/databinding/adapters/NumberPickerBindingAdapter$1;->val$listener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Landroid/databinding/adapters/NumberPickerBindingAdapter$1;->val$listener:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 58
    :cond_0
    iget-object v0, p0, Landroid/databinding/adapters/NumberPickerBindingAdapter$1;->val$attrChange:Landroid/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroid/databinding/InverseBindingListener;->onChange()V

    .line 59
    return-void
.end method
