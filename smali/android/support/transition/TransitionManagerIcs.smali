.class Landroid/support/transition/TransitionManagerIcs;
.super Landroid/support/transition/TransitionManagerImpl;
.source "TransitionManagerIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
.end annotation


# instance fields
.field private final mTransitionManager:Landroid/support/transition/TransitionManagerPort;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerImpl;-><init>()V

    .line 26
    new-instance v0, Landroid/support/transition/TransitionManagerPort;

    invoke-direct {v0}, Landroid/support/transition/TransitionManagerPort;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerIcs;->mTransitionManager:Landroid/support/transition/TransitionManagerPort;

    return-void
.end method
