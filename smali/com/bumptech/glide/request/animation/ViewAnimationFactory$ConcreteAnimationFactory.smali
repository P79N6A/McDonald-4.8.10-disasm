.class Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcreteAnimationFactory"
.end annotation


# instance fields
.field private final animation:Landroid/view/animation/Animation;


# virtual methods
.method public build()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method
