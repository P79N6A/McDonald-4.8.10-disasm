.class Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$2;
.super Ljava/util/TimerTask;
.source "StoreLocatorListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->scheduleMinRefreshDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$2;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->access$002(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;Z)Z

    .line 375
    return-void
.end method
