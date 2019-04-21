.class Landroid/support/transition/TransitionManagerStaticsKitKat;
.super Landroid/support/transition/TransitionManagerStaticsImpl;
.source "TransitionManagerStaticsKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerStaticsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/TransitionImpl;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 46
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :goto_0
    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 48
    return-void

    .line 46
    .restart local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :cond_0
    check-cast p2, Landroid/support/transition/TransitionKitKat;

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v0, p2, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    goto :goto_0
.end method
