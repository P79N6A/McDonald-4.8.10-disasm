.class Lcom/mcdonalds/app/customer/SignInFragment$5$6;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/SignInFragment$5;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

.field final synthetic val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignInFragment$5;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/customer/SignInFragment$5;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v7, 0x7f0905d4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onClick"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v1, v1, Lcom/mcdonalds/app/customer/SignInFragment$5;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v3, Lcom/mcdonalds/app/customer/SignInFragment$5$6$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/customer/SignInFragment$5$6$1;-><init>(Lcom/mcdonalds/app/customer/SignInFragment$5$6;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 862
    new-instance v0, Lcom/mcdonalds/app/customer/SignInFragment$5$6$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignInFragment$5$6$2;-><init>(Lcom/mcdonalds/app/customer/SignInFragment$5$6;)V

    .line 874
    .local v0, "onClickOK":Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getActivationOption()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 875
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v1, v1, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 876
    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 877
    invoke-virtual {v1, v7, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v2, v2, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v3, 0x7f0906a9

    .line 878
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f09006e

    .line 879
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 880
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 881
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getActivationOption()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 883
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v1, v1, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 884
    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 885
    invoke-virtual {v1, v7, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v2, v2, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v3, 0x7f0906a7

    .line 886
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f09006d

    .line 887
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 888
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 889
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method