.class public Lcom/mcdonalds/app/customer/SignUpFragment;
.super Lcom/mcdonalds/app/social/SocialLoginFragment;
.source "SignUpFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;
    }
.end annotation


# static fields
.field private static birthdate:Ljava/util/Calendar;

.field public static isSocialRegister:Z

.field private static mBirthdateButton:Landroid/widget/Button;


# instance fields
.field birthdateFormatted:Ljava/lang/String;

.field private collection_data_acceptance_checkbox:Landroid/widget/CheckBox;

.field final currentDate:Ljava/util/Calendar;

.field private gendersAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mAlreadyRegistered:Landroid/view/View;

.field private mAutoEnrollOffersByDefault:Z

.field private mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

.field private mChooseMethodContainer:Landroid/view/View;

.field private mEmail:Landroid/widget/EditText;

.field private mEmailConfirmation:Landroid/widget/EditText;

.field private mFinishButton:Landroid/widget/Button;

.field private mFirstName:Landroid/widget/EditText;

.field private mGender:Landroid/widget/Spinner;

.field private final mGenderSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mHideOffersOptInPage:Z

.field private mLastName:Landroid/widget/EditText;

.field private mMailAsUser:Landroid/view/View;

.field private mManager:Lcom/mcdonalds/app/util/LoginManager;

.field private mMiddleName:Landroid/widget/EditText;

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

.field private final mOnCheckboxClicked:Landroid/view/View$OnClickListener;

.field private final mOnClickBirthdate:Landroid/view/View$OnClickListener;

.field private final mOnClickFinish:Landroid/view/View$OnClickListener;

.field private final mOnClickPrivacy:Landroid/view/View$OnClickListener;

.field private final mOnClickResetPassword:Landroid/view/View$OnClickListener;

.field private final mOnClickSignIn:Landroid/view/View$OnClickListener;

.field private final mOnClickTOS:Landroid/view/View$OnClickListener;

.field private final mOnClickTermsAndConditions:Landroid/view/View$OnClickListener;

.field private final mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordConfirm:Landroid/widget/EditText;

.field private mPasswordDescription:Landroid/widget/TextView;

.field private final mPasswordInputFilter:Landroid/text/InputFilter;

.field private mPhoneNumber:Landroid/widget/EditText;

.field private mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mSocialContainer:Landroid/view/View;

.field private mSocialLoginId:I

.field private mUserName:Landroid/widget/EditText;

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

.field private mZipCode:Landroid/widget/EditText;

.field private selectedGender:Ljava/lang/String;

.field private useSocialSignUp:Z

.field private useSocialSignUpWithoutEmail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mcdonalds/app/customer/SignUpFragment;->isSocialRegister:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;-><init>()V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mSocialLoginId:I

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mHideOffersOptInPage:Z

    .line 666
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$5;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnClickFinish:Landroid/view/View$OnClickListener;

    .line 701
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$6;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnClickSignIn:Landroid/view/View$OnClickListener;

    .line 756
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$7;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$7;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnCheckboxClicked:Landroid/view/View$OnClickListener;

    .line 858
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$8;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$8;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnClickPrivacy:Landroid/view/View$OnClickListener;

    .line 881
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$9;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$9;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnClickTermsAndConditions:Landroid/view/View$OnClickListener;

    .line 902
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$10;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$10;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnClickTOS:Landroid/view/View$OnClickListener;

    .line 928
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$11;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$11;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordInputFilter:Landroid/text/InputFilter;

    .line 941
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$12;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$12;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    .line 948
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$13;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$13;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1378
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$17;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$17;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnClickResetPassword:Landroid/view/View$OnClickListener;

    .line 1385
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$18;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$18;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mGenderSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1473
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$19;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$19;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnClickBirthdate:Landroid/view/View$OnClickListener;

    .line 1511
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->currentDate:Ljava/util/Calendar;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->validateData()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->onClickTOS()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/customer/SignUpFragment;Landroid/widget/EditText;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/customer/SignUpFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/customer/SignUpFragment;)Lcom/mcdonalds/app/util/LoginManager;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/Calendar;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v1, "access$1300"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .param p0, "x0"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$1302"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    sput-object p0, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$1500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->updateProfile()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mcdonalds/app/customer/SignUpFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$1600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mHideOffersOptInPage:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/mcdonalds/app/customer/SignUpFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$1700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mAutoEnrollOffersByDefault:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$1800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getOfferCategories()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$1900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->register()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->onClickPrivacy()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$2000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->chooseOfferPreferences()V

    return-void
.end method

.method static synthetic access$2100(Lcom/mcdonalds/app/customer/SignUpFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$2100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->openLegalUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mcdonalds/app/customer/SignUpFragment;)Lcom/mcdonalds/app/customer/ChooseMethodView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$2200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mcdonalds/app/customer/SignUpFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$2300"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->hideAllOtherViews(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$2400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mSocialContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/mcdonalds/app/customer/SignUpFragment;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$2502"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOfferCategories:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/mcdonalds/app/customer/SignUpFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$2600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->validateRegisterNavigateHome(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$2700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->enrollOffersByDefault()V

    return-void
.end method

.method static synthetic access$2802(Lcom/mcdonalds/app/customer/SignUpFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$2802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->selectedGender:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/widget/ArrayAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$2900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->gendersAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$3000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->selectMonthTime()V

    return-void
.end method

.method static synthetic access$3100(Lcom/mcdonalds/app/customer/SignUpFragment;III)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$3100"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/SignUpFragment;->setBirthDay(III)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mcdonalds/app/customer/SignUpFragment;)J
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$3200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3300()Landroid/widget/Button;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v1, "access$3300"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/mcdonalds/app/customer/SignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFinishButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mValidations:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/customer/SignUpFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->useSocialSignUpWithoutEmail:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->updateProfileWithoutEmail()V

    return-void
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/customer/SignUpFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-boolean v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->useSocialSignUp:Z

    return v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/customer/SignUpFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/SignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    return-object v0
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

    .line 606
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    .line 613
    .local v0, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v1

    return-object v1
.end method

.method private addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;
    .locals 4
    .param p1, "validation"    # Lcom/mcdonalds/app/widget/ValidationListener;

    .prologue
    const-string v1, "addValidation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    invoke-virtual {p1}, Lcom/mcdonalds/app/widget/ValidationListener;->getTextField()Landroid/widget/EditText;

    move-result-object v0

    .line 619
    .local v0, "validationEditText":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 620
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 621
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->onDoneKeyPressed(Lcom/mcdonalds/app/widget/ValidationListener;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 622
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    invoke-virtual {p1, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 624
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 626
    return-object p1
.end method

.method private checkForOffersModule()V
    .locals 2

    .prologue
    const-string v0, "checkForOffersModule"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    if-nez v0, :cond_0

    .line 452
    const-string v0, "offers"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 454
    :cond_0
    return-void
.end method

.method private chooseOfferPreferences()V
    .locals 2

    .prologue
    const-string v0, "chooseOfferPreferences"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1224
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 1225
    const-class v0, Lcom/mcdonalds/app/customer/push/OffersRequestActivity;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->startActivityForResult(Ljava/lang/Class;I)V

    .line 1226
    return-void
.end method

.method private configure(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v1, "configure"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mValidations:Landroid/util/SparseArray;

    .line 460
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    invoke-direct {p0, v1, v7}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 462
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v2, "lastname"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 464
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mLastName:Landroid/widget/EditText;

    invoke-direct {p0, v1, v8}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 465
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 471
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v2, "middlename"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mMiddleName:Landroid/widget/EditText;

    invoke-direct {p0, v1, v8}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 474
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mMiddleName:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v2, "zipcode"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v2, "zipcode"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->fieldIsMandatory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mZipCode:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 483
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mZipCode:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->setupPostalCode(Landroid/widget/EditText;)V

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v2, "gender"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mGender:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 490
    :cond_3
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v2, "birthDate"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    sget-object v1, Lcom/mcdonalds/app/customer/SignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 494
    :cond_4
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v2, "selectPhoneOrEmailAsUsername"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 495
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethodContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :goto_1
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v2, "username"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->isUseEmailAsUserName()Z

    move-result v1

    if-nez v1, :cond_8

    .line 501
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 502
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mUserName:Landroid/widget/EditText;

    invoke-direct {p0, v1, v7}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 507
    :goto_2
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->setPhoneValidation(Landroid/view/View;)V

    .line 508
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->setMailValidation(Landroid/view/View;)V

    .line 510
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v2, "confirmEmailAddress"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 511
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmailConfirmation:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 512
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->setConfirmEmailValidation(Landroid/view/View;)V

    .line 515
    :cond_5
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;IZZZ)V

    .line 516
    .local v0, "passwordValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 518
    new-instance v6, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPassword:Landroid/widget/EditText;

    move v9, v3

    move v10, v3

    move v11, v3

    move v12, v3

    invoke-direct/range {v6 .. v12}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;IZZZ)V

    .line 519
    .local v6, "confirmPasswordValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    invoke-virtual {v6, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 520
    invoke-direct {p0, v6}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 525
    new-array v13, v3, [Landroid/text/InputFilter;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordInputFilter:Landroid/text/InputFilter;

    aput-object v1, v13, v5

    .line 526
    .local v13, "passwordFilters":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 527
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v1, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 528
    return-void

    .line 468
    .end local v0    # "passwordValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    .end local v6    # "confirmPasswordValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    .end local v13    # "passwordFilters":[Landroid/text/InputFilter;
    :cond_6
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    const v2, 0x7f090762

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 497
    :cond_7
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethodContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 504
    :cond_8
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethodContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private configureToggles(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const-string v5, "configureToggles"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v10

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getMandatoryToggles()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 344
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getRegisterSettings()Lcom/mcdonalds/app/model/Register;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/model/Register;->getToggles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/model/RegisterToggle;

    .line 345
    .local v3, "registerToggle":Lcom/mcdonalds/app/model/RegisterToggle;
    const-string v6, "terms_and_conditions"

    invoke-virtual {v3}, Lcom/mcdonalds/app/model/RegisterToggle;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "three_links_toc"

    .line 346
    invoke-virtual {v3}, Lcom/mcdonalds/app/model/RegisterToggle;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "age_verification"

    .line 347
    invoke-virtual {v3}, Lcom/mcdonalds/app/model/RegisterToggle;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "email_opt_in"

    .line 348
    invoke-virtual {v3}, Lcom/mcdonalds/app/model/RegisterToggle;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnCheckboxClicked:Landroid/view/View$OnClickListener;

    invoke-static {v6, v3, v7}, Lcom/mcdonalds/app/customer/SignUpFragment;->createCheckBox(Landroid/content/Context;Lcom/mcdonalds/app/model/RegisterToggle;Landroid/view/View$OnClickListener;)Landroid/widget/CheckBox;

    goto :goto_0

    .line 355
    .end local v3    # "registerToggle":Lcom/mcdonalds/app/model/RegisterToggle;
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getVisibleFields()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 356
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/api/client/repackaged/com/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_checkbox"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 359
    .local v2, "id":I
    if-eqz v2, :cond_2

    .line 360
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 361
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 363
    iget-object v6, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v6, v1}, Lcom/mcdonalds/app/util/LoginManager;->getDefaultState(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 364
    iget-object v6, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnCheckboxClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 369
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "id":I
    .end local v4    # "text":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static createCheckBox(Landroid/content/Context;Lcom/mcdonalds/app/model/RegisterToggle;Landroid/view/View$OnClickListener;)Landroid/widget/CheckBox;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registerToggle"    # Lcom/mcdonalds/app/model/RegisterToggle;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v3, "createCheckBox"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 374
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/RegisterToggle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 375
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/RegisterToggle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {p1}, Lcom/mcdonalds/app/model/RegisterToggle;->getDefaultState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 377
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    return-object v0
.end method

.method private enrollOffersByDefault()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v4, "enrollOffersByDefault"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1319
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSubscribedToOffers(Z)V

    .line 1320
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setReceivePromotions(Ljava/lang/Boolean;)V

    .line 1322
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOfferCategories:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 1323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    .local v3, "preferredOfferCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOfferCategories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OfferCategory;

    .line 1325
    .local v1, "offerCategory":Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->getId()Ljava/lang/Integer;

    move-result-object v0

    .line 1327
    .local v0, "categoryNum":Ljava/lang/Integer;
    new-instance v2, Lcom/mcdonalds/app/account/OfferData;

    invoke-direct {v2}, Lcom/mcdonalds/app/account/OfferData;-><init>()V

    .line 1328
    .local v2, "offerData":Lcom/mcdonalds/app/account/OfferData;
    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/account/OfferData;->setId(Ljava/lang/Integer;)V

    .line 1329
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/account/OfferData;->setDescription(Ljava/lang/String;)V

    .line 1330
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mcdonalds/app/account/OfferData;->setState(Ljava/lang/Boolean;)V

    .line 1332
    invoke-virtual {v2}, Lcom/mcdonalds/app/account/OfferData;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1334
    .end local v0    # "categoryNum":Ljava/lang/Integer;
    .end local v1    # "offerCategory":Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    .end local v2    # "offerData":Lcom/mcdonalds/app/account/OfferData;
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPreferredOfferCategories(Ljava/util/List;)V

    .line 1336
    .end local v3    # "preferredOfferCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method private getMaxDate()J
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const-string v4, "getMaxDate"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1563
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.termsAndConditions.minimumRequiredAge"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1564
    .local v3, "minimumAgeString":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1566
    .local v2, "minimumAge":I
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 1567
    .local v1, "minAgeCalendar":Ljava/util/Calendar;
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->currentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v0, v4, v2

    .line 1569
    .local v0, "maxYear":I
    sget-object v4, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    if-nez v4, :cond_0

    .line 1571
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v0, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 1580
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4

    .line 1576
    :cond_0
    sget-object v4, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sget-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v0, v4, v5}, Ljava/util/Calendar;->set(III)V

    goto :goto_0
.end method

.method private getOfferCategories()V
    .locals 2

    .prologue
    const-string v0, "getOfferCategories"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1306
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    new-instance v1, Lcom/mcdonalds/app/customer/SignUpFragment$16;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$16;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->getOfferCategories(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1315
    return-void
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

    .line 851
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 855
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private hideAllOtherViews(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "hideAllOtherViews"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 272
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->acces_token:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialUserID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->openid:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->nickName:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->useSocialSignUpWithoutEmail:Z

    .line 277
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->useSocialSignUp:Z

    .line 278
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAccountLoginRegistered(Z)V

    .line 282
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mMiddleName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmailConfirmation:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mGender:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethodContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mValidations:Landroid/util/SparseArray;

    .line 298
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 300
    :cond_1
    return-void
.end method

.method private initProfile()V
    .locals 2

    .prologue
    const-string v0, "initProfile"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 664
    :cond_0
    return-void
.end method

.method private isUseEmailAsUserName()Z
    .locals 2

    .prologue
    const-string v0, "isUseEmailAsUserName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.useEmailAsUsername"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onClickPrivacy()V
    .locals 3

    .prologue
    const-string v1, "onClickPrivacy"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Privacy Policy"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v1, "privacy"

    invoke-static {v1}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "link":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 728
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->openLegalUrl(Ljava/lang/String;)V

    .line 732
    :goto_0
    return-void

    .line 730
    :cond_0
    const-string v1, "No Privacy Policy URL Defined"

    invoke-static {v1}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onClickTOS()V
    .locals 3

    .prologue
    const-string v1, "onClickTOS"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Terms & Conditions"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v1, "registerTOC"

    invoke-static {v1}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "link":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->openLegalUrl(Ljava/lang/String;)V

    .line 720
    :goto_0
    return-void

    .line 718
    :cond_0
    const-string v1, "No Terms and Condition URL Defined"

    invoke-static {v1}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
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

    .line 631
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment$4;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;Lcom/mcdonalds/app/widget/ValidationListener;)V

    return-object v0
.end method

.method private openLegalUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    const-string v1, "openLegalUrl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 748
    .local v0, "attributes":Landroid/os/Bundle;
    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v1, "analytics_title"

    const v2, 0x7f09089e

    .line 751
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-class v1, Lcom/mcdonalds/app/web/WebActivity;

    invoke-virtual {p0, v1, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 754
    return-void
.end method

.method private populateOfferCategories(Z)V
    .locals 5
    .param p1, "acceptOffers"    # Z

    .prologue
    const/4 v4, 0x0

    const-string v1, "populateOfferCategories"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1242
    const-string v2, "/register/offer-opt"

    if-eqz p1, :cond_0

    const-string v1, "Opt-In"

    :goto_0
    invoke-static {v2, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v2, "registration_offers_opt"

    if-eqz p1, :cond_1

    const-string v1, "IN"

    :goto_1
    invoke-static {v2, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0901f8

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 1247
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    if-eqz v1, :cond_3

    .line 1249
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.offers.hideOfferCategoryPreferenceSelection"

    .line 1250
    invoke-virtual {v1, v2, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v0

    .line 1252
    .local v0, "hideOfferCategories":Z
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 1254
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    new-instance v2, Lcom/mcdonalds/app/customer/SignUpFragment$15;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$15;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->getOfferCategories(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 1274
    .end local v0    # "hideOfferCategories":Z
    :goto_2
    return-void

    .line 1242
    :cond_0
    const-string v1, "Opt-Out"

    goto :goto_0

    .line 1243
    :cond_1
    const-string v1, "OUT"

    goto :goto_1

    .line 1267
    .restart local v0    # "hideOfferCategories":Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->validateRegisterNavigateHome(Z)V

    goto :goto_2

    .line 1271
    .end local v0    # "hideOfferCategories":Z
    :cond_3
    const-string v1, "offers"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    iput-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 1272
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->populateOfferCategories(Z)V

    goto :goto_2
.end method

.method private register()V
    .locals 2

    .prologue
    const-string v0, "register"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 1217
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->isActivityAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0901f8

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 1219
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->register(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 1221
    :cond_0
    return-void
.end method

.method private selectMonthTime()V
    .locals 8

    .prologue
    const-string v0, "selectMonthTime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1515
    new-instance v0, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;

    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    new-instance v4, Lcom/mcdonalds/app/customer/SignUpFragment$20;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$20;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->currentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    .line 1520
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->currentDate:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->currentDate:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;->show()V

    .line 1521
    return-void
.end method

.method private setBirthDay(III)V
    .locals 9
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const-string v5, "setBirthDay"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1587
    sget-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    if-nez v5, :cond_0

    .line 1588
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    sput-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    .line 1589
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->currentDate:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1590
    .local v4, "year1":I
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->currentDate:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1591
    .local v3, "month":I
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->currentDate:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1598
    .local v2, "day":I
    :goto_0
    sget-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    invoke-virtual {v5, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 1600
    add-int/lit8 p2, p2, 0x1

    .line 1602
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1603
    sget-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const-string v7, "MM-yyyy"

    invoke-virtual {p0, v6, v7}, Lcom/mcdonalds/app/customer/SignUpFragment;->clanderTodatetime(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1604
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdateFormatted:Ljava/lang/String;

    .line 1605
    const/4 v0, 0x0

    .line 1606
    .local v0, "date":Ljava/util/Date;
    const/4 v5, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 1609
    .local v1, "dateFormat":Ljava/text/DateFormat;
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdateFormatted:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1612
    :goto_1
    if-eqz v0, :cond_1

    .line 1613
    sget-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f090112

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdateFormatted:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1617
    :goto_2
    return-void

    .line 1593
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "day":I
    .end local v3    # "month":I
    .end local v4    # "year1":I
    :cond_0
    sget-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1594
    .restart local v4    # "year1":I
    sget-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1595
    .restart local v3    # "month":I
    sget-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .restart local v2    # "day":I
    goto/16 :goto_0

    .line 1615
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "dateFormat":Ljava/text/DateFormat;
    :cond_1
    sget-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f090112

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdateFormatted:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1610
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private setConfirmEmailValidation(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "setConfirmEmailValidation"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmailConfirmation:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;IZ)V

    .line 569
    .local v0, "confirmEmailValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 570
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

    .line 594
    const v4, 0x7f1102df

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 595
    .local v1, "mailErrorDisplay":Landroid/widget/TextView;
    const v4, 0x7f09030b

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "mailErrorMessage":Ljava/lang/String;
    const v4, 0x7f090317

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "mailEmptyMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {p0, v4, v6}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v3

    .line 599
    .local v3, "mailValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorDisplay(Landroid/widget/TextView;)V

    .line 600
    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorMessage(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/widget/ValidationListener;->setEmptyMessage(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private setPhoneValidation(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const-string v4, "setPhoneValidation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v5, "phoneNumber"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 576
    const v4, 0x7f1102da

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 577
    .local v1, "phoneErrorDisplay":Landroid/widget/TextView;
    const v4, 0x7f09030c

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "phoneErrorMessage":Ljava/lang/String;
    const v4, 0x7f090337

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "phoneEmptyMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v3

    .line 581
    .local v3, "phoneValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorDisplay(Landroid/widget/TextView;)V

    .line 582
    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorMessage(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/widget/ValidationListener;->setEmptyMessage(Ljava/lang/String;)V

    .line 585
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 590
    .end local v0    # "phoneEmptyMessage":Ljava/lang/String;
    .end local v1    # "phoneErrorDisplay":Landroid/widget/TextView;
    .end local v2    # "phoneErrorMessage":Ljava/lang/String;
    .end local v3    # "phoneValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mMailAsUser:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setupPostalCode(Landroid/widget/EditText;)V
    .locals 11
    .param p0, "postalCode"    # Landroid/widget/EditText;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.customer.SignUpFragment"

    const-string v7, "setupPostalCode"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p0, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    const-string v0, "interface.register.postalCodeAlphaNumeric"

    .line 1006
    .local v0, "POSTALCODE_ALPHANUMERIC":Ljava/lang/String;
    const-string v1, "interface.register.postalCodeMaxSize"

    .line 1008
    .local v1, "POSTALCODE_MAXLENGTH":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.register.postalCodeAlphaNumeric"

    .line 1009
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    .line 1010
    .local v3, "postalCodeAlphaNumeric":Z
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.register.postalCodeMaxSize"

    .line 1011
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v4

    .line 1012
    .local v4, "postalCodeMaxLength":I
    if-nez v4, :cond_0

    .line 1013
    const/16 v4, 0x8

    .line 1016
    :cond_0
    new-array v2, v10, [Landroid/text/InputFilter;

    .line 1017
    .local v2, "filters":[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v2, v9

    .line 1019
    if-eqz v3, :cond_1

    const/16 v5, 0x70

    :goto_0
    invoke-virtual {p0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1022
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1023
    return-void

    .line 1019
    :cond_1
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private updateProfile()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const-string v2, "updateProfile"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->initProfile()V

    .line 802
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 803
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 804
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 805
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mLastName:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 806
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mMiddleName:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMiddleName(Ljava/lang/String;)V

    .line 807
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mZipCode:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setZipCode(Ljava/lang/String;)V

    .line 808
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPassword:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 809
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-virtual {v3}, Lcom/mcdonalds/app/customer/ChooseMethodView;->getSelection()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPreferredNotification(Ljava/lang/Integer;)V

    .line 810
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v3, "phoneNumber"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v3, "selectPhoneOrEmailAsUsername"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 812
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 813
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-virtual {v3}, Lcom/mcdonalds/app/customer/ChooseMethodView;->getSelection()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLoginPreference(I)V

    .line 815
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/ChooseMethodView;->getSelection()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 816
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 828
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v3, "gender"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->selectedGender:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setGender(Ljava/lang/String;)V

    .line 832
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v3, "birthDate"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 833
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    sget-object v3, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 844
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "requireActivation"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_1
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailActivated(Z)V

    .line 846
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 847
    return-void

    .line 818
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->isUseEmailAsUserName()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 822
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    goto :goto_0

    .line 824
    :cond_4
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mUserName:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "userName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    goto :goto_0

    .line 844
    .end local v0    # "userName":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateProfileWithoutEmail()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const-string v0, "updateProfileWithoutEmail"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->initProfile()V

    .line 769
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 775
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mLastName:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mMiddleName:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMiddleName(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mZipCode:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setZipCode(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLoginPreference(I)V

    .line 783
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->openid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 786
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLoginWithoutEmail(Z)V

    .line 787
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->openid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->acces_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 790
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPreferredNotification(Ljava/lang/Integer;)V

    .line 793
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 795
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private validateData()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const-string v7, "validateData"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1342
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1344
    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1345
    .local v3, "key":I
    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/app/widget/ValidationListener;

    .line 1347
    .local v6, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v6}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1376
    .end local v3    # "key":I
    .end local v6    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_0
    :goto_1
    return-void

    .line 1342
    .restart local v3    # "key":I
    .restart local v6    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1352
    .end local v3    # "key":I
    .end local v6    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_2
    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v7}, Lcom/mcdonalds/app/util/LoginManager;->getMandatoryToggles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1354
    .local v5, "toggle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_checkbox"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1355
    .local v2, "id":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1357
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-nez v0, :cond_4

    .line 1358
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 1361
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_4
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 1366
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "id":I
    .end local v5    # "toggle":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v8, "phoneNumber"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v8, "selectPhoneOrEmailAsUsername"

    .line 1367
    invoke-virtual {v7, v8}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    .line 1368
    invoke-virtual {v7}, Lcom/mcdonalds/app/customer/ChooseMethodView;->getSelection()I

    move-result v7

    if-nez v7, :cond_6

    .line 1369
    iget-boolean v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->useSocialSignUpWithoutEmail:Z

    if-eqz v7, :cond_0

    .line 1370
    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFinishButton:Landroid/widget/Button;

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1375
    :cond_6
    iget-object v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFinishButton:Landroid/widget/Button;

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private validateRegisterNavigateHome(Z)V
    .locals 10
    .param p1, "acceptOffers"    # Z

    .prologue
    const/4 v9, 0x1

    const-string v5, "validateRegisterNavigateHome"

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    .line 1280
    .local v4, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v4, :cond_1

    .line 1281
    invoke-virtual {v4, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSubscribedToOffers(Z)V

    .line 1282
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setReceivePromotions(Ljava/lang/Boolean;)V

    .line 1284
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOfferCategories:Ljava/util/List;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1286
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    .local v3, "preferredOfferCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOfferCategories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OfferCategory;

    .line 1288
    .local v1, "offerCategory":Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->getId()Ljava/lang/Integer;

    move-result-object v0

    .line 1290
    .local v0, "categoryNum":Ljava/lang/Integer;
    new-instance v2, Lcom/mcdonalds/app/account/OfferData;

    invoke-direct {v2}, Lcom/mcdonalds/app/account/OfferData;-><init>()V

    .line 1291
    .local v2, "offerData":Lcom/mcdonalds/app/account/OfferData;
    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/account/OfferData;->setId(Ljava/lang/Integer;)V

    .line 1292
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/account/OfferData;->setDescription(Ljava/lang/String;)V

    .line 1293
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/account/OfferData;->setState(Ljava/lang/Boolean;)V

    .line 1295
    invoke-virtual {v2}, Lcom/mcdonalds/app/account/OfferData;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1298
    .end local v0    # "categoryNum":Ljava/lang/Integer;
    .end local v1    # "offerCategory":Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    .end local v2    # "offerData":Lcom/mcdonalds/app/account/OfferData;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPreferredOfferCategories(Ljava/util/List;)V

    .line 1302
    .end local v3    # "preferredOfferCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/util/LoginManager;->register(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 1303
    return-void
.end method


# virtual methods
.method public clanderTodatetime(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "style"    # Ljava/lang/String;

    .prologue
    const-string v1, "clanderTodatetime"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1620
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1621
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    const v0, 0x7f09089d

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutResourceId()I
    .locals 2

    .prologue
    const-string v0, "getLayoutResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    const v0, 0x7f04010f

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 1230
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1231
    if-ne p1, v0, :cond_0

    .line 1232
    if-ne p2, v0, :cond_1

    .line 1233
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->populateOfferCategories(Z)V

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->populateOfferCategories(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    .line 156
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->loadRegisterConfig()V

    .line 157
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.register.hideOffersOptinPage"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mHideOffersOptInPage:Z

    .line 158
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.signin.autoEnrollOffersByDefault"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mAutoEnrollOffersByDefault:Z

    .line 160
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->checkForOffersModule()V

    .line 162
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Register Form"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setFormName(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x1090009

    const/4 v7, 0x0

    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .line 176
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    .line 177
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "SignUpFragment super.onCreateView is null"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 180
    :cond_0
    const v5, 0x7f1102d3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    .line 181
    const v5, 0x7f1102d4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mLastName:Landroid/widget/EditText;

    .line 182
    const v5, 0x7f1103bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mMiddleName:Landroid/widget/EditText;

    .line 183
    const v5, 0x7f1102dd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmail:Landroid/widget/EditText;

    .line 184
    const v5, 0x7f1102de

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmailConfirmation:Landroid/widget/EditText;

    .line 185
    const v5, 0x7f1103bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mUserName:Landroid/widget/EditText;

    .line 186
    const v5, 0x7f1102d7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mZipCode:Landroid/widget/EditText;

    .line 187
    const v5, 0x7f1102d9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    .line 188
    const v5, 0x7f1102d5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mGender:Landroid/widget/Spinner;

    .line 190
    const v5, 0x7f1102e2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPassword:Landroid/widget/EditText;

    .line 191
    const v5, 0x7f1102e3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    .line 192
    const v5, 0x7f110272

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordDescription:Landroid/widget/TextView;

    .line 194
    const v5, 0x7f1102d6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    sput-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    .line 195
    sget-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnClickBirthdate:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v5, 0x7f1102cd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mSocialContainer:Landroid/view/View;

    .line 198
    const v5, 0x7f1102dc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethodContainer:Landroid/view/View;

    .line 199
    const v5, 0x7f1103be

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mMailAsUser:Landroid/view/View;

    .line 200
    const v5, 0x7f1102e0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mAlreadyRegistered:Landroid/view/View;

    .line 202
    const v5, 0x7f110268

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/customer/ChooseMethodView;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    .line 203
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.useMobileNumberRegisterOnly"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/customer/ChooseMethodView;->setSelection(I)V

    .line 205
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-virtual {v5, v7}, Lcom/mcdonalds/app/customer/ChooseMethodView;->setEnabled(Z)V

    .line 207
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    new-instance v6, Lcom/mcdonalds/app/customer/SignUpFragment$1;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/customer/SignUpFragment$1;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;)V

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/customer/ChooseMethodView;->setSelectionListener(Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;)V

    .line 216
    const v5, 0x7f1102e5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFinishButton:Landroid/widget/Button;

    .line 217
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFinishButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFinishButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnClickFinish:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v5, 0x7f1103c2

    .line 222
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->collection_data_acceptance_checkbox:Landroid/widget/CheckBox;

    .line 224
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->collection_data_acceptance_checkbox:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 233
    const v5, 0x7f1102e6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 234
    .local v3, "signIn":Landroid/widget/Button;
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnClickSignIn:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v5, 0x7f1102e1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 237
    .local v2, "resetPassword":Landroid/view/View;
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mOnClickResetPassword:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f100004

    invoke-static {v5, v6, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->gendersAdapter:Landroid/widget/ArrayAdapter;

    .line 241
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->gendersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 242
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mGender:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->gendersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 243
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mGender:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mGenderSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 244
    const-string v5, ""

    iput-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->selectedGender:Ljava/lang/String;

    .line 246
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v5, Lcom/mcdonalds/app/customer/SignUpFragment;->birthdate:Ljava/util/Calendar;

    .line 248
    invoke-direct {p0, v4}, Lcom/mcdonalds/app/customer/SignUpFragment;->configure(Landroid/view/View;)V

    .line 250
    invoke-direct {p0, v4}, Lcom/mcdonalds/app/customer/SignUpFragment;->configureToggles(Landroid/view/View;)V

    .line 252
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "textValidation.password_description"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "pwdDescription":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 254
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordDescription:Landroid/widget/TextView;

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->localizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getMarket()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "marketId":Ljava/lang/String;
    const-string v5, "CN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 258
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordDescription:Landroid/widget/TextView;

    const v6, 0x7f09060f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 261
    :cond_3
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.disableInteraction"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 262
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-static {v5}, Lcom/mcdonalds/app/util/UIUtils;->disableInteraction(Landroid/widget/TextView;)V

    .line 263
    iget-object v5, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    invoke-static {v5}, Lcom/mcdonalds/app/util/UIUtils;->disableInteraction(Landroid/widget/TextView;)V

    .line 266
    :cond_4
    return-object v4
.end method

.method public onSocialNetworkAuthenticationComplete(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
    .locals 10
    .param p1, "results"    # Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    const-string v3, "onSocialNetworkAuthenticationComplete"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v8

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->isAllowSocialLoginWithoutEmail()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 1060
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090815

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f0905d4

    .line 1061
    invoke-virtual {v3, v4, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 1062
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 1063
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->isAllowSocialLoginWithoutEmail()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1067
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "modules.customer.connector"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLocalizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "customerConnector":Ljava/lang/String;
    const-string v3, "MWCustomerSecurity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1070
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 1071
    .local v2, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setEmailAddress(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setFirstName(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setLastName(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 1076
    iget v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mSocialLoginId:I

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 1077
    invoke-virtual {v2, v7}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 1079
    iget-boolean v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mHideOffersOptInPage:Z

    if-nez v3, :cond_2

    .line 1080
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->chooseOfferPreferences()V

    .line 1083
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0901ff

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 1084
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/mcdonalds/app/util/LoginManager;->login(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    goto :goto_0

    .line 1086
    .end local v2    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3, v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 1087
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 1088
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 1089
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 1090
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 1091
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 1092
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 1093
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialProvider(Ljava/lang/String;)V

    .line 1095
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.register.defaultPreferredNotification"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1096
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.register.defaultPreferredNotification"

    .line 1097
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v4

    .line 1096
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPreferredNotification(Ljava/lang/Integer;)V

    .line 1104
    :cond_4
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->nickName:Ljava/lang/String;

    .line 1105
    iput-boolean v8, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->useSocialSignUpWithoutEmail:Z

    .line 1106
    iput-boolean v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->useSocialSignUp:Z

    .line 1109
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->nickName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1111
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1112
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mMiddleName:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1113
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1114
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mEmailConfirmation:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1115
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1116
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mGender:Landroid/widget/Spinner;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1119
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mChooseMethodContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1121
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1122
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPasswordDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1125
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mValidations:Landroid/util/SparseArray;

    .line 1126
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/mcdonalds/app/customer/SignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 1127
    iget-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mSocialContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1129
    .end local v0    # "customerConnector":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->isAllowSocialLoginWithoutEmail()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1132
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->acces_token:Ljava/lang/String;

    .line 1133
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->openid:Ljava/lang/String;

    .line 1134
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getFirstName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->nickName:Ljava/lang/String;

    .line 1135
    iput-boolean v7, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->useSocialSignUpWithoutEmail:Z

    .line 1137
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 1139
    .restart local v2    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v2, v7}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setAllowSocialLoginWithoutEmail(Z)V

    .line 1141
    invoke-virtual {v2, v7}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 1142
    iget v3, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mSocialLoginId:I

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 1143
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setFirstName(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 1148
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1149
    .local v1, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v3, Lcom/mcdonalds/app/customer/SignUpFragment$14;

    invoke-direct {v3, p0, v2, v1}, Lcom/mcdonalds/app/customer/SignUpFragment$14;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto/16 :goto_0
.end method

.method public onSocialNetworkAvailable()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v0, "onSocialNetworkAvailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.register.hideSocialLogin"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    sget-boolean v0, Lcom/mcdonalds/app/customer/SignUpFragment;->isSocialRegister:Z

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/SignUpFragment;->hideAllOtherViews(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 1031
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mSocialContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    sput-boolean v2, Lcom/mcdonalds/app/customer/SignUpFragment;->isSocialRegister:Z

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mSocialContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1035
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mSocialContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mSocialContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V
    .locals 4
    .param p1, "socialNetwork"    # Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onSocialNetworkSelected"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/SignUpFragment;->initProfile()V

    .line 1046
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getSocialNetworkID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 1047
    iget-object v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 1049
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getType()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/customer/SignUpFragment;->mSocialLoginId:I

    .line 1052
    invoke-super {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V

    .line 1053
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 977
    invoke-super {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onStart()V

    .line 980
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    .line 981
    return-void
.end method
