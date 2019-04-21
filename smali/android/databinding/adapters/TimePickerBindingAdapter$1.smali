.class final Landroid/databinding/adapters/TimePickerBindingAdapter$1;
.super Ljava/lang/Object;
.source "TimePickerBindingAdapter.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/TimePickerBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hourChange:Landroid/databinding/InverseBindingListener;

.field final synthetic val$listener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field final synthetic val$minuteChange:Landroid/databinding/InverseBindingListener;


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 96
    iget-object v0, p0, Landroid/databinding/adapters/TimePickerBindingAdapter$1;->val$listener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/databinding/adapters/TimePickerBindingAdapter$1;->val$listener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/databinding/adapters/TimePickerBindingAdapter$1;->val$hourChange:Landroid/databinding/InverseBindingListener;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Landroid/databinding/adapters/TimePickerBindingAdapter$1;->val$hourChange:Landroid/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroid/databinding/InverseBindingListener;->onChange()V

    .line 102
    :cond_1
    iget-object v0, p0, Landroid/databinding/adapters/TimePickerBindingAdapter$1;->val$minuteChange:Landroid/databinding/InverseBindingListener;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Landroid/databinding/adapters/TimePickerBindingAdapter$1;->val$minuteChange:Landroid/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroid/databinding/InverseBindingListener;->onChange()V

    .line 105
    :cond_2
    return-void
.end method
