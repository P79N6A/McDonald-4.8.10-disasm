.class public Lcom/mcdonalds/app/customer/SignInFragment;
.super Lcom/mcdonalds/app/social/SocialLoginFragment;
.source "SignInFragment.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private autoLoginPass:Ljava/lang/String;

.field private autoLoginUser:Ljava/lang/String;

.field private isShouldReturnToBasket:Z

.field private mAutoEnrollOffersByDefault:Z

.field private mConfirmPassword:Landroid/widget/EditText;

.field private mEmail:Landroid/widget/EditText;

.field private mHideOffersOptInPage:Z

.field private mLoginAttempts:I

.field private mMaximumLoginAttempts:I

.field private mNeedToReturnToBasket:Z

.field private mNewPassword:Landroid/widget/EditText;

.field private mOfferCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

.field protected mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field private mPassword:Landroid/widget/EditText;

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

.field private mSocialContainer:Landroid/view/View;

.field private mSocialLoginId:I

.field private mSubmitButton:Landroid/widget/Button;

.field private mSubmitButtonEnableTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/customer/SignInFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;-><init>()V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSocialLoginId:I

    .line 134
    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment;->autoLoginUser:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment;->autoLoginPass:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mHideOffersOptInPage:Z

    .line 341
    new-instance v0, Lcom/mcdonalds/app/customer/SignInFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignInFragment$4;-><init>(Lcom/mcdonalds/app/customer/SignInFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSubmitButtonEnableTextWatcher:Landroid/text/TextWatcher;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/SignInFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->openResetPassword()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/SignInFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->shouldEnableSubmitButton()V

    return-void
.end method

.method static synthetic access$1002(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$1002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mResultContainerClass:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/customer/SignInFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mNeedToReturnToBasket:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/customer/SignInFragment;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/SignInFragment;->startNextActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/customer/SignInFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$1300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mMaximumLoginAttempts:I

    return v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/customer/SignInFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->showSignInChangePasswordFragment()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/customer/SignInFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mLoginAttempts:I

    return v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/customer/SignInFragment;I)I
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iput p1, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mLoginAttempts:I

    return p1
.end method

.method static synthetic access$308(Lcom/mcdonalds/app/customer/SignInFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$308"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mLoginAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mLoginAttempts:I

    return v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/customer/SignInFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mHideOffersOptInPage:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/customer/SignInFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mAutoEnrollOffersByDefault:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/app/customer/SignInFragment;Lcom/mcdonalds/sdk/modules/offers/OffersModule;)Lcom/mcdonalds/sdk/modules/offers/OffersModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/customer/SignInFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mOfferCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/customer/SignInFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->isShouldReturnToBasket:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mcdonalds/app/customer/SignInFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iput-boolean p1, p0, Lcom/mcdonalds/app/customer/SignInFragment;->isShouldReturnToBasket:Z

    return p1
.end method

.method static synthetic access$902(Lcom/mcdonalds/app/customer/SignInFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignInFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignInFragment"

    const-string v2, "access$902"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mResultFragmentName:Ljava/lang/String;

    return-object p1
.end method

.method private checkForOffersModule()V
    .locals 2

    .prologue
    const-string v0, "checkForOffersModule"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "offers"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 205
    :cond_0
    return-void
.end method

.method private getTrimmedString(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-string v0, "getTrimmedString"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openResetPassword()V
    .locals 3

    .prologue
    const-string v1, "openResetPassword"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 951
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 952
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "modal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 954
    const-class v1, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    const-string v2, "reset_password"

    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/customer/SignInFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 955
    return-void
.end method

.method private setUserPwd()V
    .locals 7

    .prologue
    const-string v5, "setUserPwd"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    .line 183
    .local v1, "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "prefSavedLogin":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLoginPass()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "prefSavedLoginPass":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedSocialNetworkId()I

    move-result v4

    .line 187
    .local v4, "prefSavedSocialID":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 188
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 190
    .local v0, "autoLogin":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 191
    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 192
    iput-object v2, p0, Lcom/mcdonalds/app/customer/SignInFragment;->autoLoginUser:Ljava/lang/String;

    .line 193
    iput-object v3, p0, Lcom/mcdonalds/app/customer/SignInFragment;->autoLoginPass:Ljava/lang/String;

    .line 198
    :cond_1
    return-void

    .line 188
    .end local v0    # "autoLogin":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldEnableSubmitButton()V
    .locals 2

    .prologue
    const-string v0, "shouldEnableSubmitButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/SignInFragment;->validate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showSignInChangePasswordFragment()V
    .locals 2

    .prologue
    const-string v0, "showSignInChangePasswordFragment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    const-string v0, "signin_change_password"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/SignInFragment;->showFragment(Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method private startNextActivity(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "startNextActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mResultContainerClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mResultFragmentName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/mcdonalds/app/customer/SignInFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 944
    return-void
.end method

.method private validate(Ljava/lang/String;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "validate"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.signin.usernameStrictValidation"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 331
    invoke-static {p1}, Lcom/mcdonalds/app/util/UIUtils;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    .line 332
    .local v0, "isEmail":Z
    invoke-static {p1}, Lcom/mcdonalds/app/util/UIUtils;->isPhoneValid(Ljava/lang/String;)Z

    move-result v1

    .line 333
    .local v1, "isPhone":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    .line 338
    .end local v0    # "isEmail":Z
    .end local v1    # "isPhone":Z
    .local v2, "result":Z
    :cond_1
    :goto_0
    return v2

    .line 335
    .end local v2    # "result":Z
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .restart local v2    # "result":Z
    :cond_3
    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    const v0, 0x7f09087e

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutResourceId()I
    .locals 2

    .prologue
    const-string v0, "getLayoutResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    const v0, 0x7f04010d

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    const v0, 0x7f0907bc

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-super {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->loadRegisterConfig()V

    .line 155
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 156
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "loginAttemptsToRequestPasswordReset"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mMaximumLoginAttempts:I

    .line 158
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.register.hideOffersOptinPage"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mHideOffersOptInPage:Z

    .line 159
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.signin.autoEnrollOffersByDefault"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mAutoEnrollOffersByDefault:Z

    .line 161
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_RESULT_FRAGMENT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mResultFragmentName:Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_RESULT_CONTAINER_CLASS"

    .line 167
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mResultContainerClass:Ljava/lang/Class;

    .line 169
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NEED_TO_RETURN_TO_BASKET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mNeedToReturnToBasket:Z

    .line 170
    iput-boolean v2, p0, Lcom/mcdonalds/app/customer/SignInFragment;->isShouldReturnToBasket:Z

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->setUserPwd()V

    .line 176
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/customer/SignInFragment;->setHasOptionsMenu(Z)V

    .line 177
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->checkForOffersModule()V

    .line 178
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Sign In Form"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setFormName(Ljava/lang/String;)V

    .line 179
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

    .line 209
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 210
    const v0, 0x7f120015

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 211
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 254
    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 256
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.register.chooseEmailOrPhoneAsUsername"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 258
    .local v0, "enablePhoneLogin":Z
    const v4, 0x7f1102cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSocialContainer:Landroid/view/View;

    .line 259
    const v4, 0x7f11021e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mEmail:Landroid/widget/EditText;

    .line 260
    if-eqz v0, :cond_0

    .line 261
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mEmail:Landroid/widget/EditText;

    const v5, 0x7f090760

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 264
    :cond_0
    const v4, 0x7f1102ca

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mPassword:Landroid/widget/EditText;

    .line 266
    const v4, 0x7f1103b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 267
    .local v1, "forget_password":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setFlags(I)V

    .line 268
    new-instance v4, Lcom/mcdonalds/app/customer/SignInFragment$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/customer/SignInFragment$1;-><init>(Lcom/mcdonalds/app/customer/SignInFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mPassword:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSubmitButtonEnableTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mEmail:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSubmitButtonEnableTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 286
    const v4, 0x7f1103b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mNewPassword:Landroid/widget/EditText;

    .line 287
    const v4, 0x7f1102cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mConfirmPassword:Landroid/widget/EditText;

    .line 289
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.disableInteraction"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mEmail:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/mcdonalds/app/util/UIUtils;->disableInteraction(Landroid/widget/TextView;)V

    .line 293
    :cond_1
    const v4, 0x7f1102d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSubmitButton:Landroid/widget/Button;

    .line 294
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSubmitButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v5, Lcom/mcdonalds/app/customer/SignInFragment$2;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/customer/SignInFragment$2;-><init>(Lcom/mcdonalds/app/customer/SignInFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v4, 0x7f1103bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 304
    .local v2, "registerText":Landroid/widget/TextView;
    new-instance v4, Lcom/mcdonalds/app/customer/SignInFragment$3;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/customer/SignInFragment$3;-><init>(Lcom/mcdonalds/app/customer/SignInFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    .end local v0    # "enablePhoneLogin":Z
    .end local v1    # "forget_password":Landroid/widget/TextView;
    .end local v2    # "registerText":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    const v5, 0x7f0906d4

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/customer/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    return-object v3
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

    .line 238
    return v2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 398
    invoke-super {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onPause()V

    .line 400
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 401
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 379
    invoke-super {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onResume()V

    .line 381
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 382
    .local v1, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-nez v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.signin.clearUserNameAfterSignOut"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    .line 387
    .local v2, "shouldSaveUsername":Z
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "username":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 389
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedSocialNetworkId()I

    move-result v0

    .line 390
    .local v0, "prefSavedSocialID":I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 391
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

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

    .line 432
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->isAllowSocialLoginWithoutEmail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 435
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090815

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    const/4 v2, 0x0

    .line 436
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/customer/SignInFragment;->onSubmitDoSignin(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V

    goto :goto_0
.end method

.method public onSocialNetworkAvailable()V
    .locals 4

    .prologue
    const-string v0, "onSocialNetworkAvailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.register.hideSocialLogin"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSocialContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 417
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSocialContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSocialContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 420
    :cond_0
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

    .line 424
    invoke-super {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V

    .line 425
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getSocialNetworkID()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSocialLoginId:I

    .line 426
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 369
    invoke-super {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onStart()V

    .line 371
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->autoLoginUser:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->autoLoginPass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment;->autoLoginUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment;->autoLoginPass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    return-void
.end method

.method protected onSubmitDoSignin(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
    .locals 8
    .param p1, "socialLoginInfo"    # Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "onSubmitDoSignin"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    if-eqz p1, :cond_1

    move v2, v3

    .line 482
    .local v2, "useSocialLogin":Z
    :goto_0
    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {p0, v5}, Lcom/mcdonalds/app/customer/SignInFragment;->getTrimmedString(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mPassword:Landroid/widget/EditText;

    .line 483
    invoke-direct {p0, v5}, Lcom/mcdonalds/app/customer/SignInFragment;->getTrimmedString(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 934
    :cond_0
    :goto_1
    return-void

    .end local v2    # "useSocialLogin":Z
    :cond_1
    move v2, v4

    .line 481
    goto :goto_0

    .line 489
    .restart local v2    # "useSocialLogin":Z
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v5}, Lcom/mcdonalds/app/util/AppUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 491
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->showNoNetworkAlert(Landroid/content/Context;)V

    goto :goto_1

    .line 495
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const v7, 0x7f0901ff

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 497
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 498
    .local v1, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    if-nez v2, :cond_4

    .line 499
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignInFragment;->getTrimmedString(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 500
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mPassword:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignInFragment;->getTrimmedString(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setPassword(Ljava/lang/String;)V

    .line 519
    :goto_2
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 520
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v3, Lcom/mcdonalds/app/customer/SignInFragment$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/mcdonalds/app/customer/SignInFragment$5;-><init>(Lcom/mcdonalds/app/customer/SignInFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    invoke-virtual {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_1

    .line 502
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_4
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->isAllowSocialLoginWithoutEmail()Z

    move-result v5

    if-nez v5, :cond_5

    .line 503
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setAllowSocialLoginWithoutEmail(Z)V

    .line 509
    :goto_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setEmailAddress(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 511
    iget v3, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mSocialLoginId:I

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 512
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setFirstName(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setLastName(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 515
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignInFragment;->provider:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialProvider(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    goto :goto_2

    .line 506
    :cond_5
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setAllowSocialLoginWithoutEmail(Z)V

    goto :goto_3
.end method

.method persistProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 10
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v8, 0x1

    const-string v5, "persistProfile"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    .line 450
    .local v2, "dataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLogin(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 452
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedSocialNetworkId(I)V

    .line 453
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 454
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    .line 460
    :cond_0
    :goto_0
    const-string v5, "customer"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 461
    .local v4, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 462
    .local v1, "customDimensions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 463
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    const/16 v5, 0x16

    iget-object v6, p0, Lcom/mcdonalds/app/customer/SignInFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const v7, 0x7f0908ab

    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 470
    .local v3, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "EVENT_LOGIN"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance v5, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 472
    invoke-virtual {v5, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCustom(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    .line 473
    invoke-virtual {v5, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    new-instance v6, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/LoginAction;

    .line 474
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/LoginAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setConversionMaster(Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    .line 475
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 476
    .local v0, "analyticsArgs":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v5, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Custom:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v5, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 477
    return-void

    .line 457
    .end local v0    # "analyticsArgs":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v1    # "customDimensions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v3    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    goto :goto_0
.end method
