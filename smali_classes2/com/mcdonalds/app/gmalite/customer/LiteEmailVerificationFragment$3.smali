.class Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$3;
.super Ljava/lang/Object;
.source "LiteEmailVerificationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->access$200(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->access$200(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->setEmailAddressVerified(Z)V

    .line 208
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->access$200(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailActivated(Z)V

    .line 209
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(I)V

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    const-class v1, Lcom/mcdonalds/app/MainActivity;

    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->getHomeScreenFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const-string v1, "gmalite_signin"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showFragment(Ljava/lang/String;)V

    goto :goto_0
.end method
