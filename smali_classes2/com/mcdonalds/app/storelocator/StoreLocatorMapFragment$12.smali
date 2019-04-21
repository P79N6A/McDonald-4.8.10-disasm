.class Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;
.super Ljava/lang/Object;
.source "StoreLocatorMapFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->updateNonFavoritePagerHeight(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

.field final synthetic val$heightDP:I

.field final synthetic val$newY:F


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;IF)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    iput p2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;->val$heightDP:I

    iput p3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;->val$newY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onAnimationCancel"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1210
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2702(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z

    .line 1211
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onAnimationEnd"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1200
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2702(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z

    .line 1201
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    iget v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;->val$heightDP:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1002(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;F)F

    .line 1204
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$900(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;->val$newY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1205
    invoke-static {}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPagerContainerNonFavorite y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$900(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const-string v0, "onAnimationRepeat"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onAnimationStart"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1194
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$12;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2702(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z

    .line 1195
    return-void
.end method
