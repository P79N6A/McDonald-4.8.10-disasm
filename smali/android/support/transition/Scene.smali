.class public Landroid/support/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# static fields
.field private static sImpl:Landroid/support/transition/SceneStaticsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v0, Landroid/support/transition/SceneStaticsApi21;

    invoke-direct {v0}, Landroid/support/transition/SceneStaticsApi21;-><init>()V

    sput-object v0, Landroid/support/transition/Scene;->sImpl:Landroid/support/transition/SceneStaticsImpl;

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 43
    new-instance v0, Landroid/support/transition/SceneStaticsKitKat;

    invoke-direct {v0}, Landroid/support/transition/SceneStaticsKitKat;-><init>()V

    sput-object v0, Landroid/support/transition/Scene;->sImpl:Landroid/support/transition/SceneStaticsImpl;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Landroid/support/transition/SceneStaticsIcs;

    invoke-direct {v0}, Landroid/support/transition/SceneStaticsIcs;-><init>()V

    sput-object v0, Landroid/support/transition/Scene;->sImpl:Landroid/support/transition/SceneStaticsImpl;

    goto :goto_0
.end method
