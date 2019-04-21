.class public Landroid/databinding/adapters/ViewBindingAdapter;
.super Ljava/lang/Object;
.source "ViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;,
        Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;
    }
.end annotation


# static fields
.field public static FADING_EDGE_HORIZONTAL:I

.field public static FADING_EDGE_NONE:I

.field public static FADING_EDGE_VERTICAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Landroid/databinding/adapters/ViewBindingAdapter;->FADING_EDGE_NONE:I

    .line 60
    const/4 v0, 0x1

    sput v0, Landroid/databinding/adapters/ViewBindingAdapter;->FADING_EDGE_HORIZONTAL:I

    .line 61
    const/4 v0, 0x2

    sput v0, Landroid/databinding/adapters/ViewBindingAdapter;->FADING_EDGE_VERTICAL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
