.class public Lcom/mcdonalds/app/customer/SignOutFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "SignOutFragment.java"


# instance fields
.field private final mLogoutListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnCancelDialog:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

.field private module:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/mcdonalds/app/customer/SignOutFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignOutFragment$1;-><init>(Lcom/mcdonalds/app/customer/SignOutFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignOutFragment;->mOnCancelDialog:Landroid/content/DialogInterface$OnCancelListener;

    .line 75
    new-instance v0, Lcom/mcdonalds/app/customer/SignOutFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignOutFragment$2;-><init>(Lcom/mcdonalds/app/customer/SignOutFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignOutFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    .line 112
    new-instance v0, Lcom/mcdonalds/app/customer/SignOutFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignOutFragment$3;-><init>(Lcom/mcdonalds/app/customer/SignOutFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignOutFragment;->mLogoutListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/SignOutFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignOutFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignOutFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignOutFragment;->close()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/SignOutFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignOutFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignOutFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignOutFragment;->module:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/customer/SignOutFragment;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignOutFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignOutFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignOutFragment;->mLogoutListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method private close()V
    .locals 2

    .prologue
    const-string v0, "close"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignOutFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignOutFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->onBackPressed()V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const v0, 0x7f09087d

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/SignOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignOutFragment;->module:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 49
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignOutFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignOutFragment;->mOnCancelDialog:Landroid/content/DialogInterface$OnCancelListener;

    .line 51
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0900ef

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignOutFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090145

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignOutFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0906d9

    .line 54
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0906d8

    .line 55
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 59
    return-void
.end method
