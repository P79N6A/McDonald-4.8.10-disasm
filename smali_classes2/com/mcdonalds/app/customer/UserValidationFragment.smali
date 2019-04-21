.class public Lcom/mcdonalds/app/customer/UserValidationFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "UserValidationFragment.java"


# instance fields
.field private mCode:Landroid/widget/EditText;

.field private mCodeValidated:Z

.field private mContent:Landroid/view/View;

.field private final mOnClickDone:Landroid/view/View$OnClickListener;

.field private final mOnClickLater:Landroid/view/View$OnClickListener;

.field private final mOnClickResend:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/view/View;

.field private mValidationMethod:I

.field private profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 177
    new-instance v0, Lcom/mcdonalds/app/customer/UserValidationFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/UserValidationFragment$2;-><init>(Lcom/mcdonalds/app/customer/UserValidationFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mOnClickResend:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Lcom/mcdonalds/app/customer/UserValidationFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/UserValidationFragment$3;-><init>(Lcom/mcdonalds/app/customer/UserValidationFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mOnClickLater:Landroid/view/View$OnClickListener;

    .line 226
    new-instance v0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/UserValidationFragment$4;-><init>(Lcom/mcdonalds/app/customer/UserValidationFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mOnClickDone:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/UserValidationFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mCodeValidated:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/customer/UserValidationFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iput-boolean p1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mCodeValidated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/UserValidationFragment;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->validate(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/customer/UserValidationFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/customer/UserValidationFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/customer/UserValidationFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->showProgress()V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/customer/UserValidationFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->hideProgress()V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/customer/UserValidationFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mValidationMethod:I

    return v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/customer/UserValidationFragment;Landroid/widget/EditText;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/customer/UserValidationFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/customer/UserValidationFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$800"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/customer/UserValidationFragment;->trySignIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/customer/UserValidationFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.UserValidationFragment"

    const-string v2, "access$900"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->checkForOneLastThing(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    return-void
.end method

.method private checkForOneLastThing(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 6
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const-string v3, "checkForOneLastThing"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v3, "ARG_CUSTOMER_PROFILE"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 454
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 456
    .local v1, "mCustomerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isFirstTimeLoginOnDevice(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Z

    move-result v2

    .line 458
    .local v2, "showOneLastThing":Z
    if-eqz v2, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->startPushNotificationRequestActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;Landroid/os/Bundle;)V

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/UserValidationFragment;->startMainActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    goto :goto_0
.end method

.method private getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # Landroid/widget/EditText;

    .prologue
    const-string v0, "getTrimmedText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private hideProgress()V
    .locals 2

    .prologue
    const-string v0, "hideProgress"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    return-void
.end method

.method private showProgress()V
    .locals 2

    .prologue
    const-string v0, "showProgress"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    return-void
.end method

.method private startMainActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v1, "startMainActivity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcdonalds/app/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 471
    return-void
.end method

.method private startPushNotificationRequestActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const-string v1, "startPushNotificationRequestActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcdonalds/app/customer/push/PushNotificationRequestActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 477
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 480
    :cond_0
    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 481
    return-void
.end method

.method private trySignIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Ljava/lang/String;)V
    .locals 4
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const-string v1, "trySignIn"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0901ff

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 321
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 322
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v1, Lcom/mcdonalds/app/customer/UserValidationFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/mcdonalds/app/customer/UserValidationFragment$5;-><init>(Lcom/mcdonalds/app/customer/UserValidationFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 354
    return-void
.end method

.method private validate(Ljava/lang/CharSequence;)Z
    .locals 8
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "validate"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "text":Ljava/lang/String;
    const-string v4, "[\\d\\w]{6}"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 160
    .local v0, "isCode":Z
    iget-object v4, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mCode:Landroid/widget/EditText;

    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2
.end method


# virtual methods
.method protected doSignIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 4
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    const-string v1, "doSignIn"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0901ff

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 361
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v1, Lcom/mcdonalds/app/customer/UserValidationFragment$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/mcdonalds/app/customer/UserValidationFragment$6;-><init>(Lcom/mcdonalds/app/customer/UserValidationFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 445
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    .local v1, "arguments":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 75
    const-string v4, "validation_method"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mValidationMethod:I

    .line 76
    const-string v4, "social_login_without_email"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 77
    .local v3, "mSocialLoginWithoutEmail":Z
    if-eqz v3, :cond_0

    .line 78
    const/4 v4, 0x2

    iput v4, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mValidationMethod:I

    .line 80
    :cond_0
    const-string v4, "EXTRA_USER_PROFILR"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 83
    .end local v3    # "mSocialLoginWithoutEmail":Z
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v2, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "EVENT_NAME"

    const-string v5, "register"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v4, "RegSend"

    const-string v5, "\u5df2\u53d1\u9001"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 87
    invoke-virtual {v4, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 88
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 89
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v4, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 95
    const v5, 0x7f04012b

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 97
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f110420

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mCode:Landroid/widget/EditText;

    .line 99
    const v5, 0x7f1103b0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 100
    .local v3, "resend":Landroid/view/View;
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mOnClickResend:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v5, 0x7f110421

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 103
    .local v2, "later":Landroid/view/View;
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mOnClickLater:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v5, 0x7f110349

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 106
    .local v0, "done":Landroid/widget/Button;
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mOnClickDone:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v5, 0x7f110260

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    .local v1, "instructions":Landroid/widget/TextView;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.register.useActivationCodeForAccountVerification"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    const v5, 0x7f0903a2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mCode:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 113
    const v5, 0x7f090136

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 115
    iget-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mCode:Landroid/widget/EditText;

    new-instance v6, Lcom/mcdonalds/app/customer/UserValidationFragment$1;

    invoke-direct {v6, p0, v0}, Lcom/mcdonalds/app/customer/UserValidationFragment$1;-><init>(Lcom/mcdonalds/app/customer/UserValidationFragment;Landroid/widget/Button;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    :cond_0
    iget v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mValidationMethod:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const v5, 0x7f090785

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 148
    const v5, 0x7f110276

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mContent:Landroid/view/View;

    .line 149
    const v5, 0x7f11027a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/customer/UserValidationFragment;->mProgress:Landroid/view/View;

    .line 151
    return-object v4

    .line 144
    :cond_1
    const v5, 0x7f090786

    goto :goto_0
.end method
