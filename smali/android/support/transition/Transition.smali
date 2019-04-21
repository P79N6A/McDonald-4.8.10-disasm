.class public abstract Landroid/support/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Landroid/support/transition/TransitionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Transition$TransitionListener;
    }
.end annotation


# instance fields
.field mImpl:Landroid/support/transition/TransitionImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/Transition;-><init>(Z)V

    .line 69
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "deferred"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 75
    new-instance v0, Landroid/support/transition/TransitionApi23;

    invoke-direct {v0}, Landroid/support/transition/TransitionApi23;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    .line 81
    :goto_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p0}, Landroid/support/transition/TransitionImpl;->init(Landroid/support/transition/TransitionInterface;)V

    .line 83
    :cond_0
    return-void

    .line 76
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 77
    new-instance v0, Landroid/support/transition/TransitionKitKat;

    invoke-direct {v0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_0

    .line 79
    :cond_2
    new-instance v0, Landroid/support/transition/TransitionIcs;

    invoke-direct {v0}, Landroid/support/transition/TransitionIcs;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_0
.end method


# virtual methods
.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDuration(J)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "duration"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->setDuration(J)Landroid/support/transition/TransitionImpl;

    .line 453
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionImpl;

    .line 482
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
