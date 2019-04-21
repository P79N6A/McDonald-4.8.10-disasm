.class Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;
.super Ljava/lang/Object;
.source "LiteAccountProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;
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
    .line 393
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;

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

    .line 396
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 397
    .local v1, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v2, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 399
    .local v2, "newProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    const-string v3, "yyyy-MM-dd HH:mm:ss Z"

    const-string v4, "UTC"

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->getCurrentTimestampUsingFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "currentTimestamp":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setDeactivateAccountTimeStamp(Ljava/lang/String;)V

    .line 402
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;

    const v5, 0x7f09048b

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 403
    new-instance v3, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3$1;

    invoke-direct {v3, p0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3$1;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteAccountProfileFragment$3;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 421
    return-void
.end method
