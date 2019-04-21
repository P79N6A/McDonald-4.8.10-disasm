.class Lcom/mcdonalds/app/customer/SignUpFragment$14$1;
.super Ljava/lang/Object;
.source "SignUpFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/SignUpFragment$14;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/customer/SignUpFragment$14;

.field final synthetic val$response:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignUpFragment$14;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/customer/SignUpFragment$14;

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14$1;->this$1:Lcom/mcdonalds/app/customer/SignUpFragment$14;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14$1;->val$response:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14$1;->this$1:Lcom/mcdonalds/app/customer/SignUpFragment$14;

    iget-object v0, v0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resend Activation Email"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14$1;->this$1:Lcom/mcdonalds/app/customer/SignUpFragment$14;

    iget-object v0, v0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->val$customerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14$1;->val$response:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v2, Lcom/mcdonalds/app/customer/SignUpFragment$14$1$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$14$1$1;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment$14$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1187
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14$1;->this$1:Lcom/mcdonalds/app/customer/SignUpFragment$14;

    iget-object v0, v0, Lcom/mcdonalds/app/customer/SignUpFragment$14;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 1188
    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    const/4 v2, 0x0

    .line 1189
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$14$1;->this$1:Lcom/mcdonalds/app/customer/SignUpFragment$14;

    iget-object v1, v1, Lcom/mcdonalds/app/customer/SignUpFragment$14;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    const v2, 0x7f0906a9

    .line 1190
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09006e

    .line 1191
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 1192
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1193
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1195
    return-void
.end method
