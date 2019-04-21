.class Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$9;
.super Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;
.source "StoreLocatorMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
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
    .line 821
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-direct {p0}, Lcom/mcdonalds/app/ui/animation/AnimatorEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onAnimationEnd"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$9;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1802(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Z)Z

    .line 825
    return-void
.end method
