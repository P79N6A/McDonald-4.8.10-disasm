.class public Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ResetPasswordConfirmationFragment.java"


# instance fields
.field private final mOnClickDone:Landroid/view/View$OnClickListener;

.field private mValidationMethod:I

.field private mValidationMethodValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment$2;-><init>(Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->mOnClickDone:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ResetPasswordConfirmationFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget v0, p0, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->mValidationMethod:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 38
    const-string v1, "validation_method"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->mValidationMethod:I

    .line 39
    const-string v1, "validation_method_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->mValidationMethodValue:Ljava/lang/String;

    .line 41
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 47
    const v5, 0x7f040109

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 49
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f110349

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "done":Landroid/view/View;
    iget-object v5, p0, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->mOnClickDone:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance v3, Landroid/text/SpannableString;

    const v5, 0x7f09077b

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    .local v3, "resendText":Landroid/text/SpannableString;
    new-instance v2, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment$1;-><init>(Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;)V

    .line 67
    .local v2, "resendLink":Landroid/text/style/ClickableSpan;
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x100

    invoke-virtual {v3, v2, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 69
    const v5, 0x7f1103b2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "instructions":Landroid/widget/TextView;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    const v6, 0x7f09077a

    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/account/ResetPasswordConfirmationFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string v7, " "

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 79
    return-object v4
.end method
