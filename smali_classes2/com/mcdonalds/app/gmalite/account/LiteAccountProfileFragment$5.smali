.class Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;
.super Ljava/lang/Object;
.source "LiteAccountProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->deleteAccountHard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v3, "onClick"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 440
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 441
    .local v1, "mCustomerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    new-instance v2, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 442
    .local v2, "newProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 444
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;

    const v5, 0x7f09048c

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 445
    const/4 v3, 0x0

    new-instance v4, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;

    invoke-direct {v4, p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5$1;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$5;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    invoke-virtual {v0, v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->deregister(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 466
    return-void
.end method
