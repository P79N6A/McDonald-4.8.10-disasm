.class Lcom/mcdonalds/app/customer/LostPasswordFragment$6;
.super Ljava/lang/Object;
.source "LostPasswordFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/LostPasswordFragment;->sendLostPasswordEmail()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/LostPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/LostPasswordFragment;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$6;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 189
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/LostPasswordFragment$6;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v5, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 194
    if-nez p3, :cond_1

    .line 195
    iget-object v1, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$6;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->isActivityAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$6;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$6;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    const v3, 0x7f090202

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$6;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    const v4, 0x7f0901e5

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 199
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    new-instance v1, Lcom/mcdonalds/app/customer/LostPasswordFragment$6$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment$6$1;-><init>(Lcom/mcdonalds/app/customer/LostPasswordFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 206
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const-string v2, "Signed-out"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v3

    invoke-virtual {v1, v5, v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
