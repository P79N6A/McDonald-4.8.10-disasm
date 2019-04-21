.class Lcom/mcdonalds/app/ordering/menu/MenuActivity$20;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/MenuActivity;->catalogSyncWithTimeout()V
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
    .line 1025
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$20;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

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

    .line 1028
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$20;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->isCatalogSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    const-string v0, "catUpdate"

    const-string v1, "catalogSyncTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 1031
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$20;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setCatalogSync(Z)V

    .line 1033
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$20;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->showCatalogSyncErrorAlert()V

    .line 1035
    :cond_0
    return-void
.end method
