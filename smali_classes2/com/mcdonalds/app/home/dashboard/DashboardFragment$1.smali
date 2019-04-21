.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$1;
.super Landroid/database/ContentObserver;
.source "DashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const-string v2, "onChange"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 235
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "GO_TO_PRODUCT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 236
    .local v0, "goToProduct":Z
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "PRODUCT_RECIPE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "productId":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 238
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v2, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$000(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "GO_TO_MENU_LINK"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v3, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$1;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "GO_TO_MENU_LINK"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
