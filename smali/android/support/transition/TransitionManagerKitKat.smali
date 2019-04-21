.class Landroid/support/transition/TransitionManagerKitKat;
.super Landroid/support/transition/TransitionManagerImpl;
.source "TransitionManagerKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
.end annotation


# instance fields
.field private final mTransitionManager:Landroid/transition/TransitionManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerImpl;-><init>()V

    .line 28
    new-instance v0, Landroid/transition/TransitionManager;

    invoke-direct {v0}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerKitKat;->mTransitionManager:Landroid/transition/TransitionManager;

    return-void
.end method
