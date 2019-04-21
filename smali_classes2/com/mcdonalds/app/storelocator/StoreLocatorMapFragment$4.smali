.class Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$4;
.super Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;
.source "StoreLocatorMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->searchHere()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$4;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-direct {p0}, Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-string v0, "onAnimationEnd"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$4;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1100(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 691
    return-void
.end method
