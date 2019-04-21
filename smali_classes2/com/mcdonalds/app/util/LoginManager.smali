.class public Lcom/mcdonalds/app/util/LoginManager;
.super Ljava/util/Observable;
.source "LoginManager.java"


# static fields
.field private static sInstance:Lcom/mcdonalds/app/util/LoginManager;


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private final mCustomerProfileListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMandatoryFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMandatoryToggles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterSettings:Lcom/mcdonalds/app/model/Register;

.field private mRegisterToggleSettings:Lcom/mcdonalds/app/model/RegisterToggle;

.field private final mResendListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 690
    new-instance v0, Lcom/mcdonalds/app/util/LoginManager$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/util/LoginManager$5;-><init>(Lcom/mcdonalds/app/util/LoginManager;)V

    iput-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfileListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 706
    new-instance v0, Lcom/mcdonalds/app/util/LoginManager$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/util/LoginManager$6;-><init>(Lcom/mcdonalds/app/util/LoginManager;)V

    iput-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mResendListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 117
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;
    .param p1, "x1"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->showVerificationScreen(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/util/LoginManager;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;
    .param p1, "x1"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$1000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->startLiteEmailVerificationActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iput-object p1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .param p2, "x2"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$1100"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/util/LoginManager;->onAuthentication(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/util/LoginManager;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/LoginManager;->setChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/util/LoginManager;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$1300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/LoginManager;->setChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/util/LoginManager;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;
    .param p1, "x1"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$1500"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->startMainActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/util/LoginManager;)Lcom/mcdonalds/app/model/Register;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mRegisterSettings:Lcom/mcdonalds/app/model/Register;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/util/LoginManager;Landroid/content/Context;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$300"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->startSignInActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$400"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->trackRegistrationSuccess(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/sdk/AsyncException;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$500"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->isEmailRegistered(Lcom/mcdonalds/sdk/AsyncException;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/sdk/AsyncException;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->isCustomerSocialLoginPhoneIsAlreadyVerified(Lcom/mcdonalds/sdk/AsyncException;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/util/LoginManager;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/LoginManager;->setChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;
    .param p1, "x1"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$800"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->startLiteSmsActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/util/LoginManager;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/util/LoginManager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.LoginManager"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/LoginManager;->setChanged()V

    return-void
.end method

.method private checkForOneLastThing(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 5
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v2, "checkForOneLastThing"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 570
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "ARG_CUSTOMER_PROFILE"

    iget-object v3, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 574
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v3, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 575
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isFirstTimeLoginOnDevice(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Z

    move-result v1

    .line 577
    .local v1, "showOneLastThing":Z
    if-eqz v1, :cond_0

    .line 579
    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/util/LoginManager;->startPushNotificationRequestActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;Landroid/os/Bundle;)V

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->startMainActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    goto :goto_0
.end method

.method public static destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.util.LoginManager"

    const-string v1, "destroy"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    sput-object v2, Lcom/mcdonalds/app/util/LoginManager;->sInstance:Lcom/mcdonalds/app/util/LoginManager;

    .line 113
    return-void
.end method

.method private finishSignIn(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v0, "finishSignIn"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/LoginManager;->persistProfile()V

    .line 550
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->checkForOneLastThing(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 551
    invoke-virtual {p0}, Lcom/mcdonalds/app/util/LoginManager;->setChanged()V

    .line 552
    const/16 v0, 0xbb9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/util/LoginManager;->notifyObservers(Ljava/lang/Object;)V

    .line 553
    return-void
.end method

.method public static getInstance()Lcom/mcdonalds/app/util/LoginManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.util.LoginManager"

    const-string v1, "getInstance"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/mcdonalds/app/util/LoginManager;->sInstance:Lcom/mcdonalds/app/util/LoginManager;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/mcdonalds/app/util/LoginManager;

    invoke-direct {v0}, Lcom/mcdonalds/app/util/LoginManager;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/util/LoginManager;->sInstance:Lcom/mcdonalds/app/util/LoginManager;

    .line 108
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/util/LoginManager;->sInstance:Lcom/mcdonalds/app/util/LoginManager;

    return-object v0
.end method

.method private getSocialProvider(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Ljava/lang/String;
    .locals 4
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-string v1, "getSocialProvider"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    const-string v0, ""

    .line 509
    .local v0, "socialProvider":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialProvider()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 510
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialProvider()Ljava/lang/String;

    move-result-object v0

    .line 514
    :cond_0
    :goto_0
    return-object v0

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSocialNetworkById(I)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSocialNetworkById(I)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getSocialNetworkName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSocialProvider(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)Ljava/lang/String;
    .locals 4
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-string v1, "getSocialProvider"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    const-string v0, ""

    .line 498
    .local v0, "socialProvider":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialProvider()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialProvider()Ljava/lang/String;

    move-result-object v0

    .line 503
    :cond_0
    :goto_0
    return-object v0

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSocialNetworkById(I)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getSocialNetworkById(I)Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getSocialNetworkName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isCustomerSocialLoginPhoneIsAlreadyVerified(Lcom/mcdonalds/sdk/AsyncException;)Z
    .locals 5
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isCustomerSocialLoginPhoneIsAlreadyVerified"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    instance-of v3, p1, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 371
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    .line 372
    .local v0, "mwException":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getErrorCode()I

    move-result v3

    const/16 v4, -0x848

    if-ne v3, v4, :cond_0

    .line 376
    .end local v0    # "mwException":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isEmailRegistered(Lcom/mcdonalds/sdk/AsyncException;)Z
    .locals 5
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isEmailRegistered"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    instance-of v3, p1, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 359
    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    .line 360
    .local v0, "mwException":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getErrorCode()I

    move-result v3

    const/16 v4, -0x408

    if-eq v3, v4, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->getErrorCode()I

    move-result v3

    const/16 v4, -0x899

    if-ne v3, v4, :cond_1

    .line 366
    .end local v0    # "mwException":Lcom/mcdonalds/sdk/connectors/middleware/MWException;
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private onAuthentication(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 3
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .param p2, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v0, "onAuthentication"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->updateProfileWithSocial(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    .line 522
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isPasswordChangeRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/util/LoginManager;->showSignInChangePasswordFragment(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 535
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/util/LoginManager;->startSignInActivity(Landroid/content/Context;)V

    .line 529
    invoke-virtual {p2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0

    .line 533
    :cond_1
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/util/LoginManager;->finishSignIn(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    goto :goto_0
.end method

.method private showSignInChangePasswordFragment(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v0, "showSignInChangePasswordFragment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    const-string v0, "signin_change_password"

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showFragment(Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method private showVerificationScreen(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 5
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v2, "showVerificationScreen"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v1

    .line 541
    .local v1, "method":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 542
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "validation_method"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    const-string v2, "social_login_without_email"

    iget-object v3, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 544
    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/util/LoginManager;->startOffersRequestActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;Landroid/os/Bundle;)V

    .line 545
    return-void
.end method

.method private startLiteEmailVerificationActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v0, "startLiteEmailVerificationActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    instance-of v0, p1, Lcom/mcdonalds/app/MainActivity;

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "liteverifyemail"

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showFragment(Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 350
    :cond_0
    const-class v0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationActivity;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;)V

    .line 351
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0
.end method

.method private startLiteSmsActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v1, "startLiteSmsActivity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    instance-of v1, p1, Lcom/mcdonalds/app/MainActivity;

    if-eqz v1, :cond_0

    .line 339
    const-string v1, "gmalite_sms_verification"

    invoke-virtual {p1, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showFragment(Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0
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

    .line 588
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcdonalds/app/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 591
    return-void
.end method

.method private startOffersRequestActivity(Lcom/mcdonalds/app/ui/URLNavigationActivity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-string v1, "startOffersRequestActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcdonalds/app/customer/push/OffersRequestActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 608
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 611
    :cond_0
    const-string v1, "fragment"

    const-string v2, "mail_validation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 614
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

    .line 595
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcdonalds/app/customer/push/PushNotificationRequestActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 597
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 600
    :cond_0
    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 601
    return-void
.end method

.method private startSignInActivity(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const-string v2, "startSignInActivity"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/app/customer/SignInActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 623
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "DATA_PASSER_KEY"

    iget-object v3, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 625
    const-string v2, "SHOW_ACTIVATION_DIALOG"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 627
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 630
    return-void
.end method

.method private trackRegistrationSuccess(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 8
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const-string v4, "trackRegistrationSuccess"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    if-eqz p1, :cond_1

    .line 311
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialProvider()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "socialSite":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 313
    const-string v2, "social"

    .line 319
    .local v2, "signInType":Ljava/lang/String;
    :goto_0
    const-string v1, ""

    .line 320
    .local v1, "kochavaMarketId":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "analytics.EnhancedKochava.marketId"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "analytics.EnhancedKochava.marketId"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    const-string v0, ""

    .line 326
    .local v0, "customerId":Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v5, "registration_success"

    .line 327
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "sign_in_type"

    .line 328
    invoke-virtual {v4, v5, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "social_site"

    .line 329
    invoke-virtual {v4, v5, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "ecp_id"

    .line 330
    invoke-virtual {v4, v5, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    const-string v5, "customer_id"

    .line 331
    invoke-virtual {v4, v5, v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 332
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v4

    .line 326
    invoke-static {v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 334
    .end local v0    # "customerId":Ljava/lang/String;
    .end local v1    # "kochavaMarketId":Ljava/lang/String;
    .end local v2    # "signInType":Ljava/lang/String;
    .end local v3    # "socialSite":Ljava/lang/String;
    :cond_1
    return-void

    .line 315
    .restart local v3    # "socialSite":Ljava/lang/String;
    :cond_2
    const-string v2, "mcd"

    .line 316
    .restart local v2    # "signInType":Ljava/lang/String;
    const-string v3, ""

    goto :goto_0

    .line 323
    .restart local v1    # "kochavaMarketId":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private trackSuccessfulRegister(ZLjava/lang/Integer;Ljava/lang/String;J)V
    .locals 6
    .param p1, "isSocial"    # Z
    .param p2, "socialType"    # Ljava/lang/Integer;
    .param p3, "ecpId"    # Ljava/lang/String;
    .param p4, "customerId"    # J

    .prologue
    const-string v1, "trackSuccessfulRegister"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    if-nez p2, :cond_0

    const-string v1, ""

    .line 415
    :goto_0
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-static {p1, v1, p3, v3}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getRegistrationSuccess(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setBusiness(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 417
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 419
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 420
    return-void

    .line 413
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateProfileWithSocial(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 4
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    const/4 v3, 0x1

    const-string v0, "updateProfileWithSocial"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isUsingSocialLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 561
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 563
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 565
    :cond_0
    return-void
.end method


# virtual methods
.method public addLoginMethod(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v0, "addLoginMethod"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v2, Lcom/mcdonalds/app/util/LoginManager$1;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/util/LoginManager$1;-><init>(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addLoginMethod(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 202
    return-void
.end method

.method public fieldIsMandatory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "fieldIsMandatory"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mMandatoryFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mMandatoryFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 171
    :cond_0
    return v0
.end method

.method public forceRegister(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v0, "forceRegister"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v2, Lcom/mcdonalds/app/util/LoginManager$2;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/util/LoginManager$2;-><init>(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->registerExtSocialNetworkForced(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 220
    return-void
.end method

.method public getAuthenticationParameters()Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .locals 7

    .prologue
    const-string v0, "getAuthenticationParameters"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    new-instance v6, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 382
    .local v6, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setEmailAddress(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setPassword(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 392
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setAllowSocialLoginWithoutEmail(Z)V

    .line 393
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 394
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 400
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v1

    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 401
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 403
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v4

    move-object v0, p0

    .line 399
    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/util/LoginManager;->trackSuccessfulRegister(ZLjava/lang/Integer;Ljava/lang/String;J)V

    .line 406
    return-object v6
.end method

.method public getDefaultState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "getDefaultState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mDefaultStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mDefaultStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 164
    :cond_0
    return v0
.end method

.method public getMandatoryToggles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getMandatoryToggles"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mMandatoryToggles:Ljava/util/List;

    return-object v0
.end method

.method public getOptionFields()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getOptionFields"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mOptionFields:Ljava/util/HashMap;

    return-object v0
.end method

.method public getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 2

    .prologue
    const-string v0, "getProfile"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method public getRegisterSettings()Lcom/mcdonalds/app/model/Register;
    .locals 2

    .prologue
    const-string v0, "getRegisterSettings"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mRegisterSettings:Lcom/mcdonalds/app/model/Register;

    return-object v0
.end method

.method public getVisibleFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getVisibleFields"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mVisibleFields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isLoggedIn()Z
    .locals 2

    .prologue
    const-string v0, "isLoggedIn"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadRegisterConfig()V
    .locals 10

    .prologue
    const-string v6, "loadRegisterConfig"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.register"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 124
    .local v0, "config":Ljava/util/Map;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 125
    .local v3, "gson":Lcom/google/gson/Gson;
    instance-of v6, v3, Lcom/google/gson/Gson;

    if-nez v6, :cond_1

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    :goto_0
    const-class v8, Lcom/mcdonalds/app/model/Register;

    instance-of v6, v3, Lcom/google/gson/Gson;

    if-nez v6, :cond_2

    invoke-virtual {v3, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    :goto_1
    check-cast v6, Lcom/mcdonalds/app/model/Register;

    iput-object v6, p0, Lcom/mcdonalds/app/util/LoginManager;->mRegisterSettings:Lcom/mcdonalds/app/model/Register;

    .line 126
    instance-of v6, v3, Lcom/google/gson/Gson;

    if-nez v6, :cond_3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    const-class v7, Lcom/mcdonalds/app/model/RegisterToggle;

    instance-of v8, v3, Lcom/google/gson/Gson;

    if-nez v8, :cond_4

    invoke-virtual {v3, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .end local v3    # "gson":Lcom/google/gson/Gson;
    :goto_3
    check-cast v6, Lcom/mcdonalds/app/model/RegisterToggle;

    iput-object v6, p0, Lcom/mcdonalds/app/util/LoginManager;->mRegisterToggleSettings:Lcom/mcdonalds/app/model/RegisterToggle;

    .line 127
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/util/LoginManager;->mVisibleFields:Ljava/util/List;

    .line 128
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/util/LoginManager;->mMandatoryFields:Ljava/util/HashMap;

    .line 129
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/util/LoginManager;->mDefaultStates:Ljava/util/HashMap;

    .line 130
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/util/LoginManager;->mOptionFields:Ljava/util/HashMap;

    .line 131
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/util/LoginManager;->mMandatoryToggles:Ljava/util/List;

    .line 133
    iget-object v6, p0, Lcom/mcdonalds/app/util/LoginManager;->mRegisterSettings:Lcom/mcdonalds/app/model/Register;

    invoke-virtual {v6}, Lcom/mcdonalds/app/model/Register;->getFields()Ljava/util/List;

    move-result-object v2

    .line 134
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/model/FormField;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/model/FormField;

    .line 135
    .local v1, "field":Lcom/mcdonalds/app/model/FormField;
    invoke-virtual {v1}, Lcom/mcdonalds/app/model/FormField;->doShow()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    iget-object v7, p0, Lcom/mcdonalds/app/util/LoginManager;->mVisibleFields:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mcdonalds/app/model/FormField;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    iget-object v7, p0, Lcom/mcdonalds/app/util/LoginManager;->mMandatoryFields:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mcdonalds/app/model/FormField;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/mcdonalds/app/model/FormField;->isRequired()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v7, p0, Lcom/mcdonalds/app/util/LoginManager;->mOptionFields:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mcdonalds/app/model/FormField;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/mcdonalds/app/model/FormField;->getOptions()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .end local v1    # "field":Lcom/mcdonalds/app/model/FormField;
    .end local v2    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/model/FormField;>;"
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    :cond_1
    move-object v6, v3

    .line 125
    check-cast v6, Lcom/google/gson/Gson;

    invoke-static {v6, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    goto/16 :goto_0

    :cond_2
    move-object v6, v3

    check-cast v6, Lcom/google/gson/Gson;

    invoke-static {v6, v7, v8}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_1

    :cond_3
    move-object v6, v3

    .line 126
    check-cast v6, Lcom/google/gson/Gson;

    invoke-static {v6, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_4
    check-cast v3, Lcom/google/gson/Gson;

    .end local v3    # "gson":Lcom/google/gson/Gson;
    invoke-static {v3, v6, v7}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_3

    .line 142
    .restart local v2    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/model/FormField;>;"
    :cond_5
    iget-object v6, p0, Lcom/mcdonalds/app/util/LoginManager;->mRegisterSettings:Lcom/mcdonalds/app/model/Register;

    invoke-virtual {v6}, Lcom/mcdonalds/app/model/Register;->getToggles()Ljava/util/List;

    move-result-object v5

    .line 143
    .local v5, "togglesList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/app/model/RegisterToggle;>;"
    if-eqz v5, :cond_7

    .line 144
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/model/RegisterToggle;

    .line 145
    .local v4, "toggle":Lcom/mcdonalds/app/model/RegisterToggle;
    iget-object v7, p0, Lcom/mcdonalds/app/util/LoginManager;->mVisibleFields:Ljava/util/List;

    invoke-virtual {v4}, Lcom/mcdonalds/app/model/RegisterToggle;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v7, p0, Lcom/mcdonalds/app/util/LoginManager;->mDefaultStates:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/mcdonalds/app/model/RegisterToggle;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/mcdonalds/app/model/RegisterToggle;->getDefaultState()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v4}, Lcom/mcdonalds/app/model/RegisterToggle;->isRequired()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 148
    iget-object v7, p0, Lcom/mcdonalds/app/util/LoginManager;->mMandatoryToggles:Ljava/util/List;

    invoke-virtual {v4}, Lcom/mcdonalds/app/model/RegisterToggle;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 152
    .end local v4    # "toggle":Lcom/mcdonalds/app/model/RegisterToggle;
    :cond_7
    return-void
.end method

.method public login(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 3
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .param p2, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v0, "login"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/util/LoginManager;->getSocialProvider(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialProvider(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    new-instance v1, Lcom/mcdonalds/app/util/LoginManager$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/mcdonalds/app/util/LoginManager$4;-><init>(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    invoke-virtual {v0, p1, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 493
    return-void
.end method

.method public persistProfile()V
    .locals 3

    .prologue
    const-string v1, "persistProfile"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-eqz v1, :cond_0

    .line 646
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    .line 647
    .local v0, "dataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLogin(Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedSocialNetworkId(I)V

    .line 651
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 652
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    .line 658
    .end local v0    # "dataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    :cond_0
    :goto_0
    return-void

    .line 655
    .restart local v0    # "dataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public register(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v0, "register"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/util/LoginManager;->getSocialProvider(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialProvider(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v2, Lcom/mcdonalds/app/util/LoginManager$3;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/util/LoginManager$3;-><init>(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->register(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 306
    return-void
.end method

.method public resendSMSCode(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v0, "resendSMSCode"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    const v0, 0x7f090498

    invoke-static {p1, v0}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 731
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v2, Lcom/mcdonalds/app/util/LoginManager$7;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/util/LoginManager$7;-><init>(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->sendSMSCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 755
    return-void
.end method

.method public resendVerification(I)V
    .locals 4
    .param p1, "option"    # I

    .prologue
    const-string v0, "resendVerification"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setActivationOption(I)V

    .line 683
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager;->mResendListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 684
    return-void
.end method

.method public setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const-string v0, "setProfile"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    iput-object p1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 671
    return-void
.end method

.method public showField(Ljava/lang/String;)Z
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const-string v0, "showField"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mVisibleFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateProfile()V
    .locals 3

    .prologue
    const-string v0, "updateProfile"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfileListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 678
    :cond_0
    return-void
.end method

.method public verifySMSCode(Ljava/lang/String;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 3
    .param p1, "smsCode"    # Ljava/lang/String;
    .param p2, "activity"    # Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .prologue
    const-string v0, "verifySMSCode"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    const v0, 0x7f090499

    invoke-static {p2, v0}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 767
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v2, Lcom/mcdonalds/app/util/LoginManager$8;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/app/util/LoginManager$8;-><init>(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->verifySMS(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 791
    return-void
.end method
