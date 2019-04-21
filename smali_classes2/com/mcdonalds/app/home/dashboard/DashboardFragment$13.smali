.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$13;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Product;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$13;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 8
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "onResponse"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object p2, v5, v3

    aput-object p3, v5, v7

    invoke-static {p0, v2, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 941
    sget-object v5, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v6, "recipe: %s exception: %s"

    new-array v7, v7, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v4

    if-eqz p3, :cond_0

    move v4, v3

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    if-eqz p3, :cond_1

    .line 943
    sget-object v2, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    :cond_1
    if-nez p3, :cond_4

    if-eqz p1, :cond_4

    .line 948
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 949
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "ARG_RECIPE_ID"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 951
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$13;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v3, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 965
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v4

    .line 941
    goto :goto_0

    .line 955
    :cond_4
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.dashboard.promotionCarrouselAlert"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 956
    .local v1, "showDialog":Z
    if-eqz v1, :cond_2

    .line 957
    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$13;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .line 958
    invoke-virtual {v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$13;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const v4, 0x7f0903fb

    .line 959
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$13;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const v5, 0x7f09076e

    .line 960
    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/mcdonalds/app/util/UIUtils;->DEFAULT_DIALOG_CLICK_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 957
    invoke-static {v2, v3, v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$13;->onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
