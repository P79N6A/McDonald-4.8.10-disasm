.class Landroid/support/transition/TransitionIcs$CompatListener;
.super Ljava/lang/Object;
.source "TransitionIcs.java"

# interfaces
.implements Landroid/support/transition/TransitionPort$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionIcs;
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

.field final synthetic this$0:Landroid/support/transition/TransitionIcs;


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/TransitionPort;)V
    .locals 3
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 265
    iget-object v1, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 266
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->this$0:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionEnd(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 268
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/TransitionPort;)V
    .locals 3
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 279
    iget-object v1, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 280
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->this$0:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionPause(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 282
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_0
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/TransitionPort;)V
    .locals 3
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 286
    iget-object v1, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 287
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->this$0:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionResume(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 289
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_0
    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/TransitionPort;)V
    .locals 3
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 258
    iget-object v1, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 259
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->this$0:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionStart(Landroid/support/transition/TransitionInterface;)V

    goto :goto_0

    .line 261
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_0
    return-void
.end method
