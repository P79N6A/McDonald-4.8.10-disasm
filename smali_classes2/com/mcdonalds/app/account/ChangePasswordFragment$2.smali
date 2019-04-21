.class Lcom/mcdonalds/app/account/ChangePasswordFragment$2;
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
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangePasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$100(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$200(Lcom/mcdonalds/app/account/ChangePasswordFragment;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(I)V

    .line 218
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$300(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPasswordChangeRequired(Z)V

    .line 222
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 224
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .line 225
    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090771

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    const/4 v3, 0x0

    .line 226
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 232
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1100d3

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    .line 234
    .local v0, "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    invoke-virtual {v0, v5}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setLoggedInDrawerState(Z)V

    .line 236
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    const-class v2, Lcom/mcdonalds/app/MainActivity;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->startActivity(Ljava/lang/Class;)V

    .line 238
    .end local v0    # "navFragment":Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    :cond_0
    return-void
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

    .line 207
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
