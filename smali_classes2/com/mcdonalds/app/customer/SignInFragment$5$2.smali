.class Lcom/mcdonalds/app/customer/SignInFragment$5$2;
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
    .line 584
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$2;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$2;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

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

    const/4 v6, 0x0

    const-string v2, "onClick"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$2;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v2, v2, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/SignInFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Resend Activation Email"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$2;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v2, v2, Lcom/mcdonalds/app/customer/SignInFragment$5;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$2;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v4, Lcom/mcdonalds/app/customer/SignInFragment$5$2$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/customer/SignInFragment$5$2$1;-><init>(Lcom/mcdonalds/app/customer/SignInFragment$5$2;)V

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 606
    new-instance v0, Lcom/mcdonalds/app/customer/SignInFragment$5$2$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignInFragment$5$2$2;-><init>(Lcom/mcdonalds/app/customer/SignInFragment$5$2;)V

    .line 618
    .local v0, "onClickOK":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.useMobileNumberRegisterOnly"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 619
    .local v1, "useMobileRegisterOnly":Z
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$2;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 620
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$2;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v2, v2, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 621
    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 622
    invoke-virtual {v2, v7, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$2;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v3, v3, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v4, 0x7f0906a9

    .line 623
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f09006e

    .line 624
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 625
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 626
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 636
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$2;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v2, v2, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 629
    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const/4 v3, 0x0

    .line 630
    invoke-virtual {v2, v7, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$2;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v3, v3, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const v4, 0x7f0906a7

    .line 631
    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f09006d

    .line 632
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 633
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 634
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method
