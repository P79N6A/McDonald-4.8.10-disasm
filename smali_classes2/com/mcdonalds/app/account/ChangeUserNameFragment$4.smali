.class Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;
.super Ljava/lang/Object;
.source "ChangeUserNameFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ChangeUserNameFragment;->onSave()V
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
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

.field final synthetic val$originalEmail:Ljava/lang/String;

.field final synthetic val$originalFirstName:Ljava/lang/String;

.field final synthetic val$originalLastName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangeUserNameFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->val$originalFirstName:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->val$originalLastName:Ljava/lang/String;

    iput-object p4, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->val$originalEmail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const v3, 0x7f0905d4

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

    .line 188
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 190
    if-nez p3, :cond_1

    .line 191
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    .line 193
    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090204

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    .line 194
    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09076c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    .line 195
    invoke-static {v1}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->access$100(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->access$200(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->val$originalFirstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->access$200(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->val$originalLastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->access$200(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->val$originalEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 208
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4$1;-><init>(Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;)V

    .line 209
    invoke-virtual {v0, v3, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
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

    .line 184
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
