.class Lcom/mcdonalds/app/customer/SignInFragment$5$6$2;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/SignInFragment$5$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mcdonalds/app/customer/SignInFragment$5$6;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignInFragment$5$6;)V
    .locals 0
    .param p1, "this$2"    # Lcom/mcdonalds/app/customer/SignInFragment$5$6;

    .prologue
    .line 862
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6$2;->this$2:Lcom/mcdonalds/app/customer/SignInFragment$5$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 867
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "validation_method"

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6$2;->this$2:Lcom/mcdonalds/app/customer/SignInFragment$5$6;

    iget-object v2, v2, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 868
    const-string v1, "social_login_without_email"

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6$2;->this$2:Lcom/mcdonalds/app/customer/SignInFragment$5$6;

    iget-object v2, v2, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 869
    const-string v1, "EXTRA_USER_PROFILR"

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6$2;->this$2:Lcom/mcdonalds/app/customer/SignInFragment$5$6;

    iget-object v2, v2, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 870
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$6$2;->this$2:Lcom/mcdonalds/app/customer/SignInFragment$5$6;

    iget-object v1, v1, Lcom/mcdonalds/app/customer/SignInFragment$5$6;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v1, v1, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v2, Lcom/mcdonalds/app/customer/push/OffersRequestActivity;

    const-string v3, "mail_validation"

    invoke-virtual {v1, v2, v3, v0}, Lcom/mcdonalds/app/customer/SignInFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 871
    return-void
.end method
