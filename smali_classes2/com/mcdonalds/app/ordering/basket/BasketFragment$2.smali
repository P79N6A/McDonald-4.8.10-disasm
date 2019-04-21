.class Lcom/mcdonalds/app/ordering/basket/BasketFragment$2;
.super Landroid/database/ContentObserver;
.source "BasketFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/basket/BasketFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$2;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const-string v0, "onChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$2;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$000(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$100()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$2;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setNeedsUpdatedRecipes(Z)V

    .line 215
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$2;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$302(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Z)Z

    .line 216
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$2;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->refreshStoreInfoAndDeliveryFee()V

    .line 218
    :cond_0
    return-void
.end method
