.class public Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;
.super Lcom/mcdonalds/app/social/SocialLoginFragment;
.source "LiteSignInFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private autoLoginPass:Ljava/lang/String;

.field private autoLoginUser:Ljava/lang/String;

.field private isShouldReturnToBasket:Z

.field private mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

.field private mEmailEditText:Landroid/widget/EditText;

.field private mEmailValidated:Z

.field private mLoginAttempts:I

.field private mMaximumLoginAttempts:I

.field private mNeedToReturnToBasket:Z

.field private mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

.field private final mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field protected mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mPasswordValidated:Z

.field private mResultContainerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/mcdonalds/app/ui/URLNavigationActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mResultFragmentName:Ljava/lang/String;

.field private mSignInNotificationReceiver:Landroid/content/BroadcastReceiver;

.field private mSocialContainer:Landroid/view/View;

.field private mSocialLoginId:I

.field private mSubmitButton:Landroid/widget/Button;

.field private mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

.field private mValidations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/app/widget/ValidationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;-><init>()V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSocialLoginId:I

    .line 105
    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->autoLoginUser:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->autoLoginPass:Ljava/lang/String;

    .line 340
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$8;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$8;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    .line 406
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$9;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$9;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 443
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$11;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$11;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->openResetPassword()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mEmailEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->showSignInChangePasswordFragment()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

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
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->finishLogin(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->startSmsVerification(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$1300"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->startEmailVerification(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    return-void
.end method

.method static synthetic access$1408(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$1408"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mLoginAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mLoginAttempts:I

    return v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-boolean v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mEmailValidated:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iput-boolean p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mEmailValidated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-boolean v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordValidated:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iput-boolean p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordValidated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSubmitButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->onSubmitDoSignin(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mValidations:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Lcom/mcdonalds/app/customer/ChooseMethodView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignInFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->validateData()V

    return-void
.end method

.method private addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;
    .locals 6
    .param p1, "field"    # Landroid/widget/EditText;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "addValidation"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    .line 379
    .local v0, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v1

    return-object v1
.end method

.method private addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;
    .locals 3
    .param p1, "validation"    # Lcom/mcdonalds/app/widget/ValidationListener;

    .prologue
    const-string v0, "addValidation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    invoke-virtual {p1}, Lcom/mcdonalds/app/widget/ValidationListener;->getTextField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 385
    invoke-virtual {p1}, Lcom/mcdonalds/app/widget/ValidationListener;->getTextField()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 386
    invoke-virtual {p1}, Lcom/mcdonalds/app/widget/ValidationListener;->getTextField()Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->onDoneKeyPressed(Lcom/mcdonalds/app/widget/ValidationListener;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 387
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 389
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/mcdonalds/app/widget/ValidationListener;->getTextField()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    return-object p1
.end method

.method private configure(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "configure"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mValidations:Landroid/util/SparseArray;

    .line 368
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->setMailValidation(Landroid/view/View;)V

    .line 369
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordEditText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 370
    return-void
.end method

.method private finishLogin(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 3
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "customerModule"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    const-string v0, "finishLogin"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->persistProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 679
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->shouldUpdateTermsAndCondition()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->shouldUpdatePrivacyPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    :cond_0
    const-string v0, "litepolicyupdates"

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mResultFragmentName:Ljava/lang/String;

    .line 681
    const-class v0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesActivity;

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mResultContainerClass:Ljava/lang/Class;

    .line 687
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(I)V

    .line 689
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/mcdonalds/app/MainActivity;

    if-nez v0, :cond_2

    .line 690
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 694
    :goto_1
    return-void

    .line 683
    :cond_1
    const-string v0, "dashboard"

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mResultFragmentName:Ljava/lang/String;

    .line 684
    const-class v0, Lcom/mcdonalds/app/MainActivity;

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mResultContainerClass:Ljava/lang/Class;

    goto :goto_0

    .line 692
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mResultFragmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showFragment(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDoneKeyPressed(Lcom/mcdonalds/app/widget/ValidationListener;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 3
    .param p1, "validation"    # Lcom/mcdonalds/app/widget/ValidationListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-string v0, "onDoneKeyPressed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$10;

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$10;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/app/widget/ValidationListener;)V

    return-object v0
.end method

.method private onSubmitDoSignin(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
    .locals 7
    .param p1, "socialLoginInfo"    # Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "onSubmitDoSignin"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    if-eqz p1, :cond_0

    move v2, v3

    .line 562
    .local v2, "useSocialLogin":Z
    :cond_0
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordEditText:Landroid/widget/EditText;

    .line 563
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 674
    :cond_1
    :goto_0
    return-void

    .line 570
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/util/AppUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 572
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->showNoNetworkAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 576
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const v6, 0x7f090491

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 578
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 579
    .local v1, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    if-nez v2, :cond_4

    .line 580
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setPassword(Ljava/lang/String;)V

    .line 594
    :goto_1
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 595
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v3, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;

    invoke-direct {v3, p0, v1, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$12;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    invoke-virtual {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 583
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_4
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 586
    iget v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSocialLoginId:I

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 587
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setFirstName(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setLastName(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setEmailAddress(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private openResetPassword()V
    .locals 3

    .prologue
    const-string v1, "openResetPassword"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 702
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "modal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 704
    const-class v1, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    const-string v2, "reset_password"

    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 705
    return-void
.end method

.method private setMailValidation(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const-string v4, "setMailValidation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    const v4, 0x7f1102df

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 397
    .local v1, "mailErrorDisplay":Landroid/widget/TextView;
    const v4, 0x7f09030b

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "mailErrorMessage":Ljava/lang/String;
    const v4, 0x7f090317

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "mailEmptyMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-direct {p0, v4, v6}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v3

    .line 401
    .local v3, "mailValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorDisplay(Landroid/widget/TextView;)V

    .line 402
    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorMessage(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/widget/ValidationListener;->setEmptyMessage(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private showSignInChangePasswordFragment()V
    .locals 2

    .prologue
    const-string v0, "showSignInChangePasswordFragment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    const-string v0, "signin_change_password"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->showFragment(Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method private startEmailVerification(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 4
    .param p1, "customerModule"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    const-string v1, "startEmailVerification"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 730
    .local v0, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    new-instance v1, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$14;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$14;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resendActivation(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 746
    return-void
.end method

.method private startSmsVerification(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V
    .locals 3
    .param p1, "customerModule"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    const-string v0, "startSmsVerification"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$13;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$13;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->sendSMSCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 726
    return-void
.end method

.method private validateData()V
    .locals 5

    .prologue
    const-string v3, "validateData"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 454
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 455
    .local v1, "key":I
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/widget/ValidationListener;

    .line 457
    .local v2, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 463
    .end local v1    # "key":I
    .end local v2    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :goto_1
    return-void

    .line 452
    .restart local v1    # "key":I
    .restart local v2    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    .end local v1    # "key":I
    .end local v2    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSubmitButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    const v0, 0x7f09087e

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutResourceId()I
    .locals 2

    .prologue
    const-string v0, "getLayoutResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    const v0, 0x7f0400ce

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    const v0, 0x7f0904f6

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-super {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->loadRegisterConfig()V

    .line 123
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 124
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "loginAttemptsToRequestPasswordReset"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mMaximumLoginAttempts:I

    .line 126
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_RESULT_FRAGMENT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mResultFragmentName:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_RESULT_CONTAINER_CLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mResultContainerClass:Ljava/lang/Class;

    .line 130
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NEED_TO_RETURN_TO_BASKET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mNeedToReturnToBasket:Z

    .line 131
    iput-boolean v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->isShouldReturnToBasket:Z

    .line 133
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_AUTO_LOGIN_USERNAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->autoLoginUser:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_AUTO_LOGIN_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->autoLoginPass:Ljava/lang/String;

    .line 137
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->setHasOptionsMenu(Z)V

    .line 138
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const-string v0, "onCreateOptionsMenu"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 143
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    .line 188
    .local v5, "rootView":Landroid/view/View;
    const-string v6, "NAV_TEST"

    const-string v7, "Launched Lite Sign In Fragment!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const v6, 0x7f1102cd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSocialContainer:Landroid/view/View;

    .line 191
    const v6, 0x7f11021e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mEmailEditText:Landroid/widget/EditText;

    .line 193
    const v6, 0x7f1103b4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 194
    .local v2, "forget_password":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 195
    new-instance v6, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$1;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.register.chooseEmailOrPhoneAsUsername"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 212
    .local v1, "enablePhoneLogin":Z
    if-eqz v1, :cond_0

    .line 213
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mEmailEditText:Landroid/widget/EditText;

    const v7, 0x7f090760

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 217
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mEmailEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$2;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    const v6, 0x7f1102ca

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordEditText:Landroid/widget/EditText;

    .line 251
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordEditText:Landroid/widget/EditText;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v7, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v7}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 253
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$3;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$4;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$4;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 294
    const v6, 0x7f1102d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSubmitButton:Landroid/widget/Button;

    .line 295
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v7, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$5;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$5;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const v6, 0x7f1102d2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 305
    .local v4, "registerButton":Landroid/widget/TextView;
    new-instance v6, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$6;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$6;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v6, 0x7f1102d0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 319
    .local v3, "forgotPasswordLink":Landroid/widget/TextView;
    new-instance v6, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$7;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$7;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v6, 0x7f1102be

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 330
    .local v0, "customerSupportLink":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    invoke-direct {p0, v5}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->configure(Landroid/view/View;)V

    .line 334
    return-object v5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 501
    invoke-super {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onDestroy()V

    .line 502
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSignInNotificationReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 503
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSignInNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->removeObserver(Landroid/content/BroadcastReceiver;)V

    .line 505
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onOptionsItemSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    return v2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 494
    invoke-super {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onPause()V

    .line 496
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 497
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 478
    invoke-super {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onResume()V

    .line 480
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 481
    .local v0, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-nez v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "username":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSocialNetworkAuthenticationComplete(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
    .locals 3
    .param p1, "results"    # Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    .prologue
    const-string v0, "onSocialNetworkAuthenticationComplete"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 536
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090815

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    const/4 v2, 0x0

    .line 537
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->onSubmitDoSignin(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V

    goto :goto_0
.end method

.method public onSocialNetworkAvailable()V
    .locals 4

    .prologue
    const-string v0, "onSocialNetworkAvailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSocialContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 521
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSocialContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSocialContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 523
    return-void
.end method

.method public onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V
    .locals 3
    .param p1, "socialNetwork"    # Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .prologue
    const-string v0, "onSocialNetworkSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    invoke-super {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V

    .line 528
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getSocialNetworkID()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mSocialLoginId:I

    .line 529
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 468
    invoke-super {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onStart()V

    .line 470
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->autoLoginUser:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->autoLoginPass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mEmailEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->autoLoginUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->autoLoginPass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_0
    return-void
.end method

.method persistProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const-string v1, "persistProfile"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    .line 550
    .local v0, "dataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLogin(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedSocialNetworkId(I)V

    .line 557
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLogin(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    goto :goto_0
.end method
