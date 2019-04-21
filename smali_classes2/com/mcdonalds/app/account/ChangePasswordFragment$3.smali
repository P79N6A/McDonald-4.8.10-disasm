.class Lcom/mcdonalds/app/account/ChangePasswordFragment$3;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ChangePasswordFragment;->onSave()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

.field final synthetic val$newPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangePasswordFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;->val$newPassword:Ljava/lang/String;

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

    .line 243
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
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

    .line 246
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;->val$newPassword:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$200(Lcom/mcdonalds/app/account/ChangePasswordFragment;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "timeDismissAlertView"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 251
    .local v0, "timeDismissAlertView":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f090204

    .line 252
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .line 253
    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090771

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .line 254
    invoke-static {v3}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$400(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .line 255
    invoke-static {v2}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$400(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setDelayToDismissInSeconds(Ljava/lang/Integer;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 260
    .end local v0    # "timeDismissAlertView":Ljava/lang/Integer;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 261
    return-void
.end method
