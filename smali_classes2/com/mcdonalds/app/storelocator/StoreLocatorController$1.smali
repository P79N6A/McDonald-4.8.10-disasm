.class Lcom/mcdonalds/app/storelocator/StoreLocatorController$1;
.super Landroid/database/ContentObserver;
.source "StoreLocatorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateCurrentStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorController$1;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const-string v0, "onChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 477
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const-string v0, "onChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    if-eqz p2, :cond_0

    .line 481
    sget-object v0, Lcom/mcdonalds/sdk/services/data/provider/Contract$CurrentStore;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 485
    :cond_0
    return-void
.end method
