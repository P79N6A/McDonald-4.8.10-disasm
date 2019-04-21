.class Landroid/support/transition/TransitionKitKat$CompatListener;
.super Ljava/lang/Object;
.source "TransitionKitKat.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionKitKat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompatListener"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionInterfaceListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/transition/TransitionKitKat;


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 364
    iget-object v1, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 365
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->this$0:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionCancel(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 367
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_0
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 357
    iget-object v1, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 358
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->this$0:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionEnd(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 360
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 371
    iget-object v1, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 372
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->this$0:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionPause(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 374
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_0
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 378
    iget-object v1, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 379
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->this$0:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionResume(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 381
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_0
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 350
    iget-object v1, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 351
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat$CompatListener;->this$0:Landroid/support/transition/TransitionKitKat;

    iget-object v2, v2, Landroid/support/transition/TransitionKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionStart(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 353
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_0
    return-void
.end method
