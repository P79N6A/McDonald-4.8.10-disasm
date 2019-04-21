.class abstract Landroid/support/transition/TransitionImpl;
.super Ljava/lang/Object;
.source "TransitionImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract captureEndValues(Landroid/support/transition/TransitionValues;)V
.end method

.method public abstract captureStartValues(Landroid/support/transition/TransitionValues;)V
.end method

.method public abstract createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end method

.method public init(Landroid/support/transition/TransitionInterface;)V
    .locals 1
    .param p1, "external"    # Landroid/support/transition/TransitionInterface;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/TransitionImpl;->init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public abstract init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
.end method

.method public abstract setDuration(J)Landroid/support/transition/TransitionImpl;
.end method

.method public abstract setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionImpl;
.end method
