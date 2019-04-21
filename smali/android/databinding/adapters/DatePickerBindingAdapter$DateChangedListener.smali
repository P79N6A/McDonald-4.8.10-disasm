.class Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;
.super Ljava/lang/Object;
.source "DatePickerBindingAdapter.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/DatePickerBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateChangedListener"
.end annotation


# instance fields
.field mDayChanged:Landroid/databinding/InverseBindingListener;

.field mListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field mMonthChanged:Landroid/databinding/InverseBindingListener;

.field mYearChanged:Landroid/databinding/InverseBindingListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 73
    iget-object v0, p0, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mListener:Landroid/widget/DatePicker$OnDateChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 76
    :cond_0
    iget-object v0, p0, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mYearChanged:Landroid/databinding/InverseBindingListener;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mYearChanged:Landroid/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroid/databinding/InverseBindingListener;->onChange()V

    .line 79
    :cond_1
    iget-object v0, p0, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mMonthChanged:Landroid/databinding/InverseBindingListener;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mMonthChanged:Landroid/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroid/databinding/InverseBindingListener;->onChange()V

    .line 82
    :cond_2
    iget-object v0, p0, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mDayChanged:Landroid/databinding/InverseBindingListener;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Landroid/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mDayChanged:Landroid/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroid/databinding/InverseBindingListener;->onChange()V

    .line 85
    :cond_3
    return-void
.end method
