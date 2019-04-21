.class Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;
.super Ljava/lang/Object;
.source "StoreLocatorMapFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->hidePager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

.field final synthetic val$newY:F


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    iput p2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;->val$newY:F

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

    .line 1254
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2502(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z

    .line 1255
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onAnimationEnd"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1246
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2502(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z

    .line 1247
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$300(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setEnabled(Z)V

    .line 1248
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$802(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;F)F

    .line 1249
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$700(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;->val$newY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1250
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

    .line 1260
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onAnimationStart"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1240
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2502(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z

    .line 1241
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$13;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$300(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setEnabled(Z)V

    .line 1242
    return-void
.end method
