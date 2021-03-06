.class final Landroid/support/transition/ScenePort;
.super Ljava/lang/Object;
.source "ScenePort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
.end annotation


# instance fields
.field mExitAction:Ljava/lang/Runnable;

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method static getCurrentScene(Landroid/view/View;)Landroid/support/transition/ScenePort;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 133
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/ScenePort;

    return-object v0
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/support/transition/ScenePort;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scene"    # Landroid/support/transition/ScenePort;

    .prologue
    .line 122
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 123
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/ScenePort;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/ScenePort;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mExitAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 160
    :cond_0
    return-void
.end method
