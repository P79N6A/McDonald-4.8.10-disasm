.class final Landroid/databinding/adapters/RatingBarBindingAdapter$1;
.super Ljava/lang/Object;
.source "RatingBarBindingAdapter.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/RatingBarBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field final synthetic val$ratingChange:Landroid/databinding/InverseBindingListener;


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 1
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Landroid/databinding/adapters/RatingBarBindingAdapter$1;->val$listener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Landroid/databinding/adapters/RatingBarBindingAdapter$1;->val$listener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 49
    :cond_0
    iget-object v0, p0, Landroid/databinding/adapters/RatingBarBindingAdapter$1;->val$ratingChange:Landroid/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroid/databinding/InverseBindingListener;->onChange()V

    .line 50
    return-void
.end method
