.class Lcom/mcdonalds/app/ordering/menu/MenuActivity$19;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/MenuActivity;->checkIfCatalogFail()V
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
    .line 1008
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$19;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

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

    .line 1011
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$19;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->isCatalogSync()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    const-string v0, "catUpdate"

    const-string v1, "catalog is syncing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$19;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->catalogSyncWithTimeout()V

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$19;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mMenuGridFragment:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$19;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->mMenuGridFragment:Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->isProductMapEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    const-string v0, "catUpdate"

    const-string v1, "requestSyncReload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$19;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->access$200(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V

    goto :goto_0
.end method
