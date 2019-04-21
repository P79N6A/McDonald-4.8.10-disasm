.class public Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;
.super Lcom/mcdonalds/app/social/SocialLoginFragment;
.source "LiteSignUpFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;
    }
.end annotation


# static fields
.field private static birthdate:Ljava/util/Calendar;

.field private static mBirthdateButton:Landroid/widget/Button;


# instance fields
.field private gendersAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlreadyRegistered:Landroid/view/View;

.field private mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

.field private mChooseMethodContainer:Landroid/view/View;

.field private mEmail:Landroid/widget/EditText;

.field private mEmailConfirmation:Landroid/widget/EditText;

.field private mFinishButton:Landroid/widget/Button;

.field private mFirstName:Landroid/widget/EditText;

.field private mGender:Landroid/widget/Spinner;

.field private final mGenderSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastName:Landroid/widget/EditText;

.field private mMailAsUser:Landroid/view/View;

.field private mManager:Lcom/mcdonalds/app/util/LoginManager;

.field private mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

.field private final mOnCheckboxClicked:Landroid/view/View$OnClickListener;

.field private final mOnClickBirthdate:Landroid/view/View$OnClickListener;

.field private mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

.field private final mOnClickFinish:Landroid/view/View$OnClickListener;

.field private final mOnClickPrivacy:Landroid/view/View$OnClickListener;

.field private final mOnClickResetPassword:Landroid/view/View$OnClickListener;

.field private final mOnClickSignIn:Landroid/view/View$OnClickListener;

.field private final mOnClickTOS:Landroid/view/View$OnClickListener;

.field private final mOnClickTermsAndConditions:Landroid/view/View$OnClickListener;

.field private final mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mPPClicked:Landroid/text/style/ClickableSpan;

.field protected mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordConfirm:Landroid/widget/EditText;

.field private final mPasswordInputFilter:Landroid/text/InputFilter;

.field private mPhoneNumber:Landroid/widget/EditText;

.field private mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mRequiredToggles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSocialLoginId:I

.field mTOCClicked:Landroid/text/style/ClickableSpan;

.field private mToggleChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;-><init>()V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mSocialLoginId:I

    .line 234
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    .line 353
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mToggleChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 500
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$5;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickFinish:Landroid/view/View$OnClickListener;

    .line 513
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$6;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickSignIn:Landroid/view/View$OnClickListener;

    .line 521
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$7;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$7;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickTOS:Landroid/view/View$OnClickListener;

    .line 548
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$8;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$8;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnCheckboxClicked:Landroid/view/View$OnClickListener;

    .line 617
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$9;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$9;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickPrivacy:Landroid/view/View$OnClickListener;

    .line 647
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$10;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$10;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickTermsAndConditions:Landroid/view/View$OnClickListener;

    .line 668
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$11;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$11;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPasswordInputFilter:Landroid/text/InputFilter;

    .line 681
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$12;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$12;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    .line 690
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$13;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$13;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 875
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$14;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$14;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickResetPassword:Landroid/view/View$OnClickListener;

    .line 882
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$15;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$15;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mGenderSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 982
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$16;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$16;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickBirthdate:Landroid/view/View$OnClickListener;

    .line 1045
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$19;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$19;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mTOCClicked:Landroid/text/style/ClickableSpan;

    .line 1052
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$20;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$20;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPPClicked:Landroid/text/style/ClickableSpan;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->validateData()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/Calendar;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v1, "access$1000"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->birthdate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .param p0, "x0"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$1002"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    sput-object p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->birthdate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/widget/Button;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v1, "access$1100"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$1300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->clickedTermsAndConditions()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->clickedPrivacyPolicy()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->updateProfile()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->register()V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mFinishButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mValidations:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)Lcom/mcdonalds/app/customer/ChooseMethodView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$802"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->selectedGender:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)Landroid/widget/ArrayAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->gendersAdapter:Landroid/widget/ArrayAdapter;

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

    .line 448
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    .line 455
    .local v0, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

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

    .line 459
    invoke-virtual {p1}, Lcom/mcdonalds/app/widget/ValidationListener;->getTextField()Landroid/widget/EditText;

    move-result-object v0

    .line 461
    .local v0, "validationEditText":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 462
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 463
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->onDoneKeyPressed(Lcom/mcdonalds/app/widget/ValidationListener;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 464
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    invoke-virtual {p1, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 466
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    return-object p1
.end method

.method private checkForOffersModule()V
    .locals 2

    .prologue
    const-string v0, "checkForOffersModule"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    if-nez v0, :cond_0

    .line 262
    const-string v0, "offers"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 264
    :cond_0
    return-void
.end method

.method private clickedPrivacyPolicy()V
    .locals 4

    .prologue
    const-string v2, "clickedPrivacyPolicy"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Privacy Policy"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v2, "privacy"

    invoke-static {v2}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, "privacyURL":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1065
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1066
    .local v0, "attributes":Landroid/os/Bundle;
    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v2, "analytics_title"

    const v3, 0x7f09089e

    .line 1069
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1067
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-class v2, Lcom/mcdonalds/app/web/WebActivity;

    invoke-virtual {p0, v2, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1075
    .end local v0    # "attributes":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1073
    :cond_0
    const-string v2, "No Privacy Policy URL Defined"

    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clickedTermsAndConditions()V
    .locals 5

    .prologue
    const-string v2, "clickedTermsAndConditions"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Terms & Conditions"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v2, "registerTOC"

    invoke-static {v2}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "link":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 996
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 997
    .local v0, "attributes":Landroid/os/Bundle;
    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v2, "analytics_title"

    const v3, 0x7f09089f

    .line 1000
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 998
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const-class v3, Lcom/mcdonalds/app/web/WebActivity;

    const-string v4, "web"

    invoke-virtual {v2, v3, v4, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1011
    .end local v0    # "attributes":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1009
    :cond_0
    const-string v2, "No Privacy Policy URL Defined"

    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private configure(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v2, "configure"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mValidations:Landroid/util/SparseArray;

    .line 270
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mFirstName:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 272
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v3, "lastname"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 274
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mLastName:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 275
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mLastName:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 281
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v3, "zipcode"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v3, "zipcode"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->fieldIsMandatory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mZipCode:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mZipCode:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 286
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mZipCode:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->setupPostalCode(Landroid/widget/EditText;)V

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v3, "gender"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mGender:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v3, "birthDate"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 294
    sget-object v2, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    const-string v3, "birthDate"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->fieldIsMandatory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 296
    const v2, 0x7f0904a4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f09049e

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 297
    .local v8, "birthdateLabel":Ljava/lang/String;
    sget-object v2, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    .end local v8    # "birthdateLabel":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->configureToggles(Landroid/view/View;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->setPhoneValidation(Landroid/view/View;)V

    .line 305
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v3, "confirmEmailAddress"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 306
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mEmailConfirmation:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 307
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->setMailConfirmValidation(Landroid/view/View;)V

    .line 313
    :goto_1
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;IZZZ)V

    .line 314
    .local v0, "passwordValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 315
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 317
    new-instance v1, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPassword:Landroid/widget/EditText;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;IZZZ)V

    .line 318
    .local v1, "confirmPasswordValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 320
    const/4 v2, 0x1

    new-array v9, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPasswordInputFilter:Landroid/text/InputFilter;

    aput-object v3, v9, v2

    .line 321
    .local v9, "passwordFilters":[Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 322
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 323
    return-void

    .line 278
    .end local v0    # "passwordValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    .end local v1    # "confirmPasswordValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    .end local v9    # "passwordFilters":[Landroid/text/InputFilter;
    :cond_4
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mFirstName:Landroid/widget/EditText;

    const v3, 0x7f090762

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 310
    :cond_5
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->setMailValidation(Landroid/view/View;)V

    goto :goto_1
.end method

.method private configurePolicyUpdatesString(Landroid/widget/TextView;)V
    .locals 12
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v7, "configurePolicyUpdatesString"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.termsAndConditions.minimumRequiredAge"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1019
    .local v0, "minAge":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v1, ""

    .line 1021
    .local v1, "minDrivingAge":Ljava/lang/String;
    :goto_0
    const v7, 0x7f0904b8

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1023
    .local v4, "template":Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableString;

    const v7, 0x7f090486

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1024
    .local v5, "terms":Landroid/text/SpannableString;
    new-instance v6, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$17;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$17;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    .line 1030
    .local v6, "termsClick":Landroid/text/style/ClickableSpan;
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v5, v6, v9, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1032
    new-instance v2, Landroid/text/SpannableString;

    const v7, 0x7f09047f

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1033
    .local v2, "privacyPolicy":Landroid/text/SpannableString;
    new-instance v3, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$18;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$18;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    .line 1039
    .local v3, "privacyPolicyClick":Landroid/text/style/ClickableSpan;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v2, v3, v9, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1041
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v5, v7, v9

    aput-object v2, v7, v10

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-static {v4, v7}, Lcom/mcdonalds/app/util/StringUtils;->formatWithSpans(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1043
    return-void

    .end local v1    # "minDrivingAge":Ljava/lang/String;
    .end local v2    # "privacyPolicy":Landroid/text/SpannableString;
    .end local v3    # "privacyPolicyClick":Landroid/text/style/ClickableSpan;
    .end local v4    # "template":Ljava/lang/String;
    .end local v5    # "terms":Landroid/text/SpannableString;
    .end local v6    # "termsClick":Landroid/text/style/ClickableSpan;
    :cond_0
    move-object v1, v0

    .line 1019
    goto :goto_0
.end method

.method private configureToggles(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const-string v4, "configureToggles"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v9

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v5, "terms_and_conditions"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    const v4, 0x7f1102c6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 332
    const v4, 0x7f1102c7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 333
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v5, "terms_and_conditions"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/util/LoginManager;->getDefaultState(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 334
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnCheckboxClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const v4, 0x7f1102c8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->configurePolicyUpdatesString(Landroid/widget/TextView;)V

    .line 339
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v4}, Lcom/mcdonalds/app/util/LoginManager;->getVisibleFields()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 340
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/api/client/repackaged/com/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_checkbox"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 343
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 345
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 346
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v5, v1}, Lcom/mcdonalds/app/util/LoginManager;->getDefaultState(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 347
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mToggleChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 351
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "id":I
    .end local v3    # "text":Ljava/lang/String;
    :cond_2
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

    .line 610
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 614
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private initProfile()V
    .locals 2

    .prologue
    const-string v0, "initProfile"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 498
    :cond_0
    return-void
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

    .line 473
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$4;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;Lcom/mcdonalds/app/widget/ValidationListener;)V

    return-object v0
.end method

.method private register()V
    .locals 2

    .prologue
    const-string v0, "register"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 832
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090496

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->register(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 834
    return-void
.end method

.method private setMailConfirmValidation(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v2, "setMailConfirmValidation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    const v2, 0x7f1102df

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 431
    .local v9, "mailErrorDisplay":Landroid/widget/TextView;
    const v2, 0x7f09030b

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 432
    .local v10, "mailErrorMessage":Ljava/lang/String;
    const v2, 0x7f090317

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 434
    .local v8, "mailEmptyMessage":Ljava/lang/String;
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mEmail:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mEmailConfirmation:Landroid/widget/EditText;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;IZZZ)V

    .line 435
    .local v0, "emailValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    new-instance v1, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mEmailConfirmation:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mEmail:Landroid/widget/EditText;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;IZZZ)V

    .line 437
    .local v1, "confirmEmailValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 438
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 441
    invoke-virtual {v0, v9}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorDisplay(Landroid/widget/TextView;)V

    .line 442
    invoke-virtual {v0, v10}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorMessage(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, v8}, Lcom/mcdonalds/app/widget/ValidationListener;->setEmptyMessage(Ljava/lang/String;)V

    .line 444
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

    .line 418
    const v4, 0x7f1102df

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 419
    .local v1, "mailErrorDisplay":Landroid/widget/TextView;
    const v4, 0x7f09030b

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "mailErrorMessage":Ljava/lang/String;
    const v4, 0x7f090317

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "mailEmptyMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {p0, v4, v6}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v3

    .line 423
    .local v3, "mailValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorDisplay(Landroid/widget/TextView;)V

    .line 424
    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorMessage(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/widget/ValidationListener;->setEmptyMessage(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method private setPhoneValidation(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const-string v5, "setPhoneValidation"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v6, "phoneNumber"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    const v5, 0x7f1102da

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 397
    .local v2, "phoneErrorDisplay":Landroid/widget/TextView;
    const v5, 0x7f09030c

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "phoneErrorMessage":Ljava/lang/String;
    const v5, 0x7f090337

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "phoneEmptyMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v4

    .line 401
    .local v4, "phoneValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v4, v2}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorDisplay(Landroid/widget/TextView;)V

    .line 402
    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/widget/ValidationListener;->setErrorMessage(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v4, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->setEmptyMessage(Ljava/lang/String;)V

    .line 405
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 406
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "register.chooseEmailOrPhoneAsUsername"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 407
    .local v0, "chooseEmailOrPassword":Z
    if-eqz v0, :cond_0

    .line 408
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mChooseMethodContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 414
    .end local v0    # "chooseEmailOrPassword":Z
    .end local v1    # "phoneEmptyMessage":Ljava/lang/String;
    .end local v2    # "phoneErrorDisplay":Landroid/widget/TextView;
    .end local v3    # "phoneErrorMessage":Ljava/lang/String;
    .end local v4    # "phoneValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mMailAsUser:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setupPostalCode(Landroid/widget/EditText;)V
    .locals 11
    .param p0, "postalCode"    # Landroid/widget/EditText;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.gmalite.customer.LiteSignUpFragment"

    const-string v7, "setupPostalCode"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p0, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    const-string v0, "interface.register.postalCodeAlphaNumeric"

    .line 748
    .local v0, "POSTALCODE_ALPHANUMERIC":Ljava/lang/String;
    const-string v1, "interface.register.postalCodeMaxLength"

    .line 750
    .local v1, "POSTALCODE_MAXLENGTH":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.register.postalCodeAlphaNumeric"

    .line 751
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    .line 752
    .local v3, "postalCodeAlphaNumeric":Z
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.register.postalCodeMaxLength"

    .line 753
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v4

    .line 754
    .local v4, "postalCodeMaxLength":I
    if-nez v4, :cond_0

    .line 755
    const/16 v4, 0x8

    .line 758
    :cond_0
    new-array v2, v10, [Landroid/text/InputFilter;

    .line 759
    .local v2, "filters":[Landroid/text/InputFilter;
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v2, v9

    .line 761
    if-eqz v3, :cond_1

    const/16 v5, 0x70

    :goto_0
    invoke-virtual {p0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 764
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 765
    return-void

    .line 761
    :cond_1
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private updateProfile()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const-string v9, "updateProfile"

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->initProfile()V

    .line 559
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v10, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {p0, v10}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 560
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mFirstName:Landroid/widget/EditText;

    invoke-direct {p0, v9}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "firstName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 562
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v9, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 563
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mLastName:Landroid/widget/EditText;

    invoke-direct {p0, v9}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "lastName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 565
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v9, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 566
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v10, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mZipCode:Landroid/widget/EditText;

    invoke-direct {p0, v10}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setZipCode(Ljava/lang/String;)V

    .line 567
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v10, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPassword:Landroid/widget/EditText;

    invoke-direct {p0, v10}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 569
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v10, "phoneNumber"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 571
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "interface.register.phoneNumberShowCountryCode"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    .line 572
    .local v6, "shouldShowPhoneCountryCode":Z
    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    instance-of v9, v9, Lcom/mcdonalds/app/widget/EditTextPhone;

    if-eqz v9, :cond_2

    .line 573
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v10, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 578
    :goto_0
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v10, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-virtual {v10}, Lcom/mcdonalds/app/customer/ChooseMethodView;->getSelection()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLoginPreference(I)V

    .line 579
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v10, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {p0, v10}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 585
    .end local v6    # "shouldShowPhoneCountryCode":Z
    :goto_1
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->selectedGender:Ljava/lang/String;

    const v10, 0x7f0904a4

    new-array v11, v12, [Ljava/lang/Object;

    const v12, 0x7f0904a2

    invoke-virtual {p0, v12}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {p0, v10, v11}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 586
    .local v3, "genderOptional":Z
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v10, "gender"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez v3, :cond_0

    .line 587
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v10, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->selectedGender:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setGender(Ljava/lang/String;)V

    .line 590
    :cond_0
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v10, "birthDate"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 591
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    sget-object v10, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->birthdate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 594
    :cond_1
    const-string v9, "UTC"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 595
    .local v8, "timeZone":Ljava/util/TimeZone;
    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 596
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss Z"

    .line 597
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 598
    .local v7, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 600
    const-string v9, "yyyy-MM-dd HH:mm:ss Z"

    const-string v10, "UTC"

    invoke-static {v9, v10}, Lcom/mcdonalds/app/util/UIUtils;->getCurrentTimestampUsingFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "currentTimestamp":Ljava/lang/String;
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v9, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setmTermsAndConditionVersion(Ljava/lang/String;)V

    .line 603
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v9, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setmPrivacyPolicyVersion(Ljava/lang/String;)V

    .line 605
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v10, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 606
    return-void

    .line 575
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "currentTimestamp":Ljava/lang/String;
    .end local v3    # "genderOptional":Z
    .end local v7    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v8    # "timeZone":Ljava/util/TimeZone;
    .restart local v6    # "shouldShowPhoneCountryCode":Z
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "interface.register.phoneNumberCountryCode"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 576
    .local v5, "phoneNumberCountryCode":Ljava/lang/String;
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    invoke-direct {p0, v11}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    .end local v5    # "phoneNumberCountryCode":Ljava/lang/String;
    .end local v6    # "shouldShowPhoneCountryCode":Z
    :cond_3
    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v10, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mEmail:Landroid/widget/EditText;

    invoke-direct {p0, v10}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getTrimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private validateData()V
    .locals 13

    .prologue
    const-string v8, "validateData"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 847
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 848
    .local v4, "key":I
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/app/widget/ValidationListener;

    .line 850
    .local v7, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v7}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v8

    if-nez v8, :cond_1

    .line 873
    .end local v4    # "key":I
    .end local v7    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_0
    :goto_1
    return-void

    .line 845
    .restart local v4    # "key":I
    .restart local v7    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 856
    .end local v4    # "key":I
    .end local v7    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v9, "register.chooseEmailOrPhoneAsUsername"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 857
    .local v1, "chooseEmailOrPassword":Z
    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v9, "phoneNumber"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-virtual {v8}, Lcom/mcdonalds/app/customer/ChooseMethodView;->getSelection()I

    move-result v8

    if-eqz v8, :cond_0

    .line 861
    :cond_3
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v8}, Lcom/mcdonalds/app/util/LoginManager;->getMandatoryToggles()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 863
    .local v6, "toggle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_checkbox"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 864
    .local v3, "id":I
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 866
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-nez v9, :cond_4

    .line 867
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mFinishButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 872
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v3    # "id":I
    .end local v6    # "toggle":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mFinishButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const v0, 0x7f09089d

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutResourceId()I
    .locals 2

    .prologue
    const-string v0, "getLayoutResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    const v0, 0x7f0400cf

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 134
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->loadRegisterConfig()V

    .line 137
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->checkForOffersModule()V

    .line 139
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super/range {p0 .. p3}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v7

    .line 152
    .local v7, "view":Landroid/view/View;
    const-string v8, "NAV_TEST"

    const-string v9, "Launched Lite Sign Up Fragment!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-nez v7, :cond_0

    .line 155
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "SignUpFragment super.onCreateView is null"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 161
    :cond_0
    const v8, 0x7f1102d3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mFirstName:Landroid/widget/EditText;

    .line 162
    const v8, 0x7f1102d4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mLastName:Landroid/widget/EditText;

    .line 163
    const v8, 0x7f1102dd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mEmail:Landroid/widget/EditText;

    .line 164
    const v8, 0x7f1102de

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mEmailConfirmation:Landroid/widget/EditText;

    .line 165
    const v8, 0x7f1102d7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mZipCode:Landroid/widget/EditText;

    .line 167
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v9, "interface.register.phoneNumberShowCountryCode"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    .line 168
    .local v5, "showCountryCode":Z
    if-eqz v5, :cond_3

    .line 169
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v9, "interface.register.phoneNumberCountryCode"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v0, ""

    .line 171
    :cond_1
    const v8, 0x7f1102d8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/app/widget/EditTextPhone;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    .line 172
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    check-cast v8, Lcom/mcdonalds/app/widget/EditTextPhone;

    invoke-virtual {v8, v0}, Lcom/mcdonalds/app/widget/EditTextPhone;->setCountryCode(Ljava/lang/String;)V

    .line 177
    .end local v0    # "countryCode":Ljava/lang/String;
    :goto_0
    const v8, 0x7f1102d5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mGender:Landroid/widget/Spinner;

    .line 179
    const v8, 0x7f1102e2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPassword:Landroid/widget/EditText;

    .line 180
    const v8, 0x7f1102e3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPasswordConfirm:Landroid/widget/EditText;

    .line 182
    const v8, 0x7f1102d6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    sput-object v8, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    .line 183
    sget-object v8, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mBirthdateButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickBirthdate:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v8, 0x7f1102dc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mChooseMethodContainer:Landroid/view/View;

    .line 186
    const v8, 0x7f1103be

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mMailAsUser:Landroid/view/View;

    .line 187
    const v8, 0x7f1102e0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mAlreadyRegistered:Landroid/view/View;

    .line 189
    const v8, 0x7f110268

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/app/customer/ChooseMethodView;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    .line 190
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mChooseMethod:Lcom/mcdonalds/app/customer/ChooseMethodView;

    new-instance v9, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$1;

    invoke-direct {v9, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V

    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/customer/ChooseMethodView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v8, 0x7f1102e5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mFinishButton:Landroid/widget/Button;

    .line 198
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mFinishButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mFinishButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickFinish:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v8, 0x7f1102e6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 202
    .local v6, "signIn":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickSignIn:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v8, 0x7f1102e1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 205
    .local v4, "resetPassword":Landroid/view/View;
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickResetPassword:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v8}, Lcom/mcdonalds/app/util/LoginManager;->getOptionFields()Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "gender"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 208
    .local v2, "genderList":[Ljava/lang/String;
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    const-string v9, "gender"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/app/util/LoginManager;->fieldIsMandatory(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 209
    const v8, 0x7f0904a4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const v11, 0x7f0904a2

    invoke-virtual {p0, v11}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "genderOptional":Ljava/lang/String;
    const/4 v8, 0x0

    aput-object v3, v2, v8

    .line 212
    .end local v3    # "genderOptional":Ljava/lang/String;
    :cond_2
    new-instance v9, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f040137

    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mManager:Lcom/mcdonalds/app/util/LoginManager;

    invoke-virtual {v8}, Lcom/mcdonalds/app/util/LoginManager;->getOptionFields()Ljava/util/HashMap;

    move-result-object v8

    const-string v12, "gender"

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    invoke-direct {v9, v10, v11, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->gendersAdapter:Landroid/widget/ArrayAdapter;

    .line 215
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->gendersAdapter:Landroid/widget/ArrayAdapter;

    const v9, 0x1090009

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 217
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mGender:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->gendersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 218
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mGender:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mGenderSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 219
    const-string v8, ""

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->selectedGender:Ljava/lang/String;

    .line 221
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mRequiredToggles:Ljava/util/HashMap;

    .line 223
    const v8, 0x7f1102be

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 224
    .local v1, "customerSupportLink":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-direct {p0, v7}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->configure(Landroid/view/View;)V

    .line 228
    return-object v7

    .line 174
    .end local v1    # "customerSupportLink":Landroid/widget/TextView;
    .end local v2    # "genderList":[Ljava/lang/String;
    .end local v4    # "resetPassword":Landroid/view/View;
    .end local v6    # "signIn":Landroid/widget/TextView;
    :cond_3
    const v8, 0x7f1102d9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mPhoneNumber:Landroid/widget/EditText;

    goto/16 :goto_0
.end method

.method public onSocialNetworkAuthenticationComplete(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
    .locals 6
    .param p1, "results"    # Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    .prologue
    const/4 v5, 0x1

    const-string v2, "onSocialNetworkAuthenticationComplete"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 795
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090815

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f0905d4

    const/4 v4, 0x0

    .line 796
    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 797
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 798
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 828
    :goto_0
    return-void

    .line 802
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.customer.connector"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLocalizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "customerConnector":Ljava/lang/String;
    const-string v2, "MWCustomerSecurity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 805
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 806
    .local v1, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setEmailAddress(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setFirstName(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setLastName(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 811
    iget v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mSocialLoginId:I

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 812
    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 815
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0901ff

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 816
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/mcdonalds/app/util/LoginManager;->login(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    goto :goto_0

    .line 819
    .end local v1    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 820
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 821
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 822
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 823
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 824
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 826
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->register()V

    goto/16 :goto_0
.end method

.method public onSocialNetworkAvailable()V
    .locals 2

    .prologue
    const-string v0, "onSocialNetworkAvailable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    return-void
.end method

.method public onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V
    .locals 5
    .param p1, "socialNetwork"    # Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v0, "onSocialNetworkSelected"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->initProfile()V

    .line 777
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getSocialNetworkID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 778
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 780
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 781
    iput v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mSocialLoginId:I

    .line 787
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V

    .line 788
    return-void

    .line 782
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 783
    iput v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->mSocialLoginId:I

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 719
    invoke-super {p0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->onStart()V

    .line 722
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    .line 723
    return-void
.end method
