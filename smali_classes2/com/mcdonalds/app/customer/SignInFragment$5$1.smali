.class Lcom/mcdonalds/app/customer/SignInFragment$5$1;
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
    .line 556
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$1;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$1;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    const-string v1, "onClick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$1;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v1, v1, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignInFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Need an Account"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    .line 564
    .local v0, "mManager":Lcom/mcdonalds/app/util/LoginManager;
    if-eqz v0, :cond_0

    .line 565
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$1;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 567
    :cond_0
    sput-boolean v4, Lcom/mcdonalds/app/customer/SignUpFragment;->isSocialRegister:Z

    .line 569
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$1;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v1, v1, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v2, Lcom/mcdonalds/app/customer/TermsOfServiceActivity;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/customer/SignInFragment;->startActivity(Ljava/lang/Class;)V

    .line 570
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$5$1;->this$1:Lcom/mcdonalds/app/customer/SignInFragment$5;

    iget-object v1, v1, Lcom/mcdonalds/app/customer/SignInFragment$5;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 571
    return-void
.end method
