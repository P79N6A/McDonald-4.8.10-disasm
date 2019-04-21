.class public Lcom/mcdonalds/app/account/ChangeBirthdateFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChangeBirthdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;

.field private static birthdate:Ljava/util/Calendar;

.field private static mBirthdateButton:Landroid/widget/Button;

.field private static mSaveButton:Landroid/view/View;

.field private static savedBirthdate:Ljava/lang/String;


# instance fields
.field final currentDate:Ljava/util/Calendar;

.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private final mOnClickBirthdate:Landroid/view/View$OnClickListener;

.field private final mOnClickSave:Landroid/view/View$OnClickListener;

.field private pressedCancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 101
    new-instance v0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;-><init>(Lcom/mcdonalds/app/account/ChangeBirthdateFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mOnClickSave:Landroid/view/View$OnClickListener;

    .line 240
    new-instance v0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$2;-><init>(Lcom/mcdonalds/app/account/ChangeBirthdateFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mOnClickBirthdate:Landroid/view/View$OnClickListener;

    .line 249
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->currentDate:Ljava/util/Calendar;

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->pressedCancel:Z

    .line 53
    return-void
.end method

.method static synthetic access$000()Ljava/util/Calendar;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.account.ChangeBirthdateFragment"

    const-string v1, "access$000"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->birthdate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .param p0, "x0"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeBirthdateFragment"

    const-string v2, "access$002"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    sput-object p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->birthdate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$100()Landroid/widget/Button;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.account.ChangeBirthdateFragment"

    const-string v1, "access$100"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mBirthdateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.account.ChangeBirthdateFragment"

    const-string v1, "access$200"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->savedBirthdate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/ChangeBirthdateFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeBirthdateFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->selectMonthTime1()V

    return-void
.end method

.method static synthetic access$400()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.account.ChangeBirthdateFragment"

    const-string v1, "access$400"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mSaveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mcdonalds/app/account/ChangeBirthdateFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeBirthdateFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeBirthdateFragment"

    const-string v2, "access$502"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->pressedCancel:Z

    return p1
.end method

.method private selectMonthTime1()V
    .locals 8

    .prologue
    const-string v0, "selectMonthTime1"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    new-instance v0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    new-instance v4, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$3;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$3;-><init>(Lcom/mcdonalds/app/account/ChangeBirthdateFragment;)V

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->currentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    .line 293
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->currentDate:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->currentDate:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;-><init>(Lcom/mcdonalds/app/account/ChangeBirthdateFragment;Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$MonPickerDialog1;->show()V

    .line 295
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const v0, 0x7f09085e

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const v0, 0x7f0904ea

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const v1, 0x7f04008f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f110261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mBirthdateButton:Landroid/widget/Button;

    .line 80
    sget-object v1, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mBirthdateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mOnClickBirthdate:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f110262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mSaveButton:Landroid/view/View;

    .line 83
    sget-object v1, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mSaveButton:Landroid/view/View;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mOnClickSave:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 90
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 92
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    .local v0, "currentBirthdate":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 95
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->savedBirthdate:Ljava/lang/String;

    .line 97
    sget-object v2, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->mBirthdateButton:Landroid/widget/Button;

    sget-object v3, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->savedBirthdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    :cond_0
    return-void
.end method
