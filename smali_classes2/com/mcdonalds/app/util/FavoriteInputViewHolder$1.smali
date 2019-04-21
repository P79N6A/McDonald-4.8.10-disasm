.class Lcom/mcdonalds/app/util/FavoriteInputViewHolder$1;
.super Ljava/lang/Object;
.source "FavoriteInputViewHolder.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/FavoriteInputViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/FavoriteInputViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$1;->this$0:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const-string v1, "onAnimationEnd"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/mcdonalds/app/util/FavoriteInputViewHolder$1;->this$0:Lcom/mcdonalds/app/util/FavoriteInputViewHolder;

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/FavoriteInputViewHolder;->getFavoriteNameInputEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 70
    .local v0, "favoriteNameInput":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 71
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const-string v0, "onAnimationRepeat"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const-string v0, "onAnimationStart"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return-void
.end method
