.class Landroid/support/transition/TransitionIcs;
.super Landroid/support/transition/TransitionImpl;
.source "TransitionIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionIcs$CompatListener;,
        Landroid/support/transition/TransitionIcs$TransitionWrapper;
    }
.end annotation


# instance fields
.field mExternalTransition:Landroid/support/transition/TransitionInterface;

.field mTransition:Landroid/support/transition/TransitionPort;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/transition/TransitionImpl;-><init>()V

    .line 236
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 87
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 92
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/TransitionPort;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
    .locals 1
    .param p1, "external"    # Landroid/support/transition/TransitionInterface;
    .param p2, "internal"    # Ljava/lang/Object;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    .line 42
    if-nez p2, :cond_0

    .line 43
    new-instance v0, Landroid/support/transition/TransitionIcs$TransitionWrapper;

    invoke-direct {v0, p1}, Landroid/support/transition/TransitionIcs$TransitionWrapper;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    .line 47
    .end local p2    # "internal":Ljava/lang/Object;
    :goto_0
    return-void

    .line 45
    .restart local p2    # "internal":Ljava/lang/Object;
    :cond_0
    check-cast p2, Landroid/support/transition/TransitionPort;

    .end local p2    # "internal":Ljava/lang/Object;
    iput-object p2, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    goto :goto_0
.end method

.method public setDuration(J)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->setDuration(J)Landroid/support/transition/TransitionPort;

    .line 144
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionPort;

    .line 155
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
