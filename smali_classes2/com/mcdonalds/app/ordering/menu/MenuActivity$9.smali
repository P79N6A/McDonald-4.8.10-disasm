.class Lcom/mcdonalds/app/ordering/menu/MenuActivity$9;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/MenuActivity;->goToFragment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$9;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$9;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->showFavoriteMethodSelector()V

    .line 395
    :cond_0
    return-void
.end method
