.class public Lcom/mcdonalds/app/account/EditCardActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "EditCardActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/account/EditCardView;


# instance fields
.field private mCardExpirationMonth:Landroid/widget/EditText;

.field private mCardExpirationYear:Landroid/widget/EditText;

.field private mCardNickName:Landroid/widget/EditText;

.field private mCardNumber:Landroid/widget/EditText;

.field private mCardNumberMask:Lcom/mcdonalds/app/ui/EditTextMask;

.field private mCardNumberValidationListener:Lcom/mcdonalds/app/widget/ValidationListener;

.field mCardNumberWatcher:Landroid/text/TextWatcher;

.field private mCardSecurityCode:Landroid/widget/EditText;

.field private mCardSecurityCodeValidationListener:Lcom/mcdonalds/app/widget/ValidationListener;

.field private mCardTypeChooser:Landroid/widget/Spinner;

.field private mCardholderName:Landroid/widget/EditText;

.field private mCity:Landroid/widget/EditText;

.field private mCountry:Landroid/widget/EditText;

.field private mDoneButton:Landroid/widget/Button;

.field private mErrorDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mLengthWatcher:Landroid/text/TextWatcher;

.field private mOneTimePayment:Z

.field private mPaymentMethod:Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

.field private mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

.field private mState:Landroid/widget/EditText;

.field private mStreetAddress:Landroid/widget/EditText;

.field private mZipCode:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    .line 158
    new-instance v0, Lcom/mcdonalds/app/account/EditCardActivity$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/EditCardActivity$1;-><init>(Lcom/mcdonalds/app/account/EditCardActivity;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mLengthWatcher:Landroid/text/TextWatcher;

    .line 214
    new-instance v0, Lcom/mcdonalds/app/account/EditCardActivity$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/EditCardActivity$2;-><init>(Lcom/mcdonalds/app/account/EditCardActivity;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumberWatcher:Landroid/text/TextWatcher;

    .line 394
    new-instance v0, Lcom/mcdonalds/app/account/EditCardActivity$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/EditCardActivity$3;-><init>(Lcom/mcdonalds/app/account/EditCardActivity;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mErrorDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardActivity"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/account/EditCardPresenter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardActivity"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardActivity"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationMonth:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardActivity"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardSecurityCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardActivity"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNickName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardActivity"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationYear:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/ui/EditTextMask;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardActivity"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumberMask:Lcom/mcdonalds/app/ui/EditTextMask;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/widget/ValidationListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardActivity"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumberValidationListener:Lcom/mcdonalds/app/widget/ValidationListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/widget/ValidationListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardActivity"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardSecurityCodeValidationListener:Lcom/mcdonalds/app/widget/ValidationListener;

    return-object v0
.end method

.method private addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)V
    .locals 4
    .param p1, "validation"    # Lcom/mcdonalds/app/widget/ValidationListener;

    .prologue
    const-string v1, "addValidation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    invoke-virtual {p1}, Lcom/mcdonalds/app/widget/ValidationListener;->getTextField()Landroid/widget/EditText;

    move-result-object v0

    .line 338
    .local v0, "validationEditText":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 339
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 341
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/account/EditCardPresenter;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)V

    .line 343
    return-void
.end method

.method private setupAcceptedCards()V
    .locals 11

    .prologue
    const/4 v10, -0x2

    const/4 v6, 0x0

    const-string v7, "setupAcceptedCards"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    const v7, 0x7f1100cf

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 320
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-virtual {v7}, Lcom/mcdonalds/app/account/EditCardPresenter;->getAcceptedCardsDrawableResourceIds()[I

    move-result-object v1

    .line 322
    .local v1, "drawables":[I
    const/4 v7, 0x1

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v3, v7

    .line 324
    .local v3, "margin":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 325
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v3, v6, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 327
    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_0

    aget v5, v1, v6

    .line 328
    .local v5, "resourceId":I
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 329
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 327
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 333
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "resourceId":I
    :cond_0
    return-void
.end method

.method private setupExtraFields()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const-string v4, "setupExtraFields"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    const v4, 0x7f1100c2

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardTypeChooser:Landroid/widget/Spinner;

    .line 272
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    const-string v5, "cardType"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/account/EditCardPresenter;->isFieldEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 273
    const/high16 v4, 0x7f100000

    const v5, 0x1090009

    .line 274
    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 275
    .local v2, "cardTypesAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardTypeChooser:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 280
    .end local v2    # "cardTypesAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :goto_0
    const v4, 0x7f1100c8

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNickName:Landroid/widget/EditText;

    .line 281
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-virtual {v4}, Lcom/mcdonalds/app/account/EditCardPresenter;->getCardNickNameRegex()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "cardNickNameRegex":Ljava/lang/String;
    new-instance v4, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v5, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNickName:Landroid/widget/EditText;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v1, v6, v7}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Ljava/lang/String;ZZ)V

    invoke-direct {p0, v4}, Lcom/mcdonalds/app/account/EditCardActivity;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)V

    .line 283
    iget-boolean v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mOneTimePayment:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    const-string v5, "cardNickname"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/account/EditCardPresenter;->isFieldEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 284
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNickName:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 287
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-virtual {v4}, Lcom/mcdonalds/app/account/EditCardPresenter;->hasAddressFields()Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    const v4, 0x7f1100c9

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "addressHeader":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .end local v0    # "addressHeader":Landroid/view/View;
    :cond_2
    const v4, 0x7f1100ca

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mStreetAddress:Landroid/widget/EditText;

    .line 293
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    const-string v5, "streetAddress"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/account/EditCardPresenter;->isFieldEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 294
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mStreetAddress:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 296
    :cond_3
    const v4, 0x7f1100cb

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCity:Landroid/widget/EditText;

    .line 297
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    const-string v5, "city"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/account/EditCardPresenter;->isFieldEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 298
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCity:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 300
    :cond_4
    const v4, 0x7f1100cc

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mState:Landroid/widget/EditText;

    .line 301
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    const-string v5, "state"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/account/EditCardPresenter;->isFieldEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 302
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mState:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 304
    :cond_5
    const v4, 0x7f1100cd

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCountry:Landroid/widget/EditText;

    .line 305
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    const-string v5, "country"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/account/EditCardPresenter;->isFieldEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 306
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCountry:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 308
    :cond_6
    const v4, 0x7f1100ce

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mZipCode:Landroid/widget/EditText;

    .line 309
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    const-string v5, "zipCode"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/account/EditCardPresenter;->isFieldEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 310
    new-instance v3, Lcom/mcdonalds/app/ui/EditTextMask;

    invoke-direct {v3}, Lcom/mcdonalds/app/ui/EditTextMask;-><init>()V

    .line 311
    .local v3, "zipCodeMask":Lcom/mcdonalds/app/ui/EditTextMask;
    const-string v4, "### ####"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ui/EditTextMask;->setMask(Ljava/lang/String;)V

    .line 312
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ui/EditTextMask;->setEditText(Landroid/widget/EditText;)V

    .line 316
    .end local v3    # "zipCodeMask":Lcom/mcdonalds/app/ui/EditTextMask;
    :goto_1
    return-void

    .line 277
    .end local v1    # "cardNickNameRegex":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardTypeChooser:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_0

    .line 314
    .restart local v1    # "cardNickNameRegex":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public disableSaveCard()V
    .locals 2

    .prologue
    const-string v0, "disableSaveCard"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 353
    return-void
.end method

.method public enableSaveCard()V
    .locals 2

    .prologue
    const-string v0, "enableSaveCard"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 348
    return-void
.end method

.method public notifyCardSaved()V
    .locals 2

    .prologue
    const-string v0, "notifyCardSaved"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->setResult(I)V

    .line 368
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditCardActivity;->finish()V

    .line 369
    return-void
.end method

.method public notifyCardSavingError(I)V
    .locals 4
    .param p1, "messageResId"    # I

    .prologue
    const-string v0, "notifyCardSavingError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 383
    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    iget-object v2, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mErrorDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 384
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 387
    return-void
.end method

.method public notifyCardSavingError(Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "notifyCardSavingError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    invoke-static {p1}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 392
    return-void
.end method

.method public notifyOneTimePaymentSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonCardInfo"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const-string v1, "notifyOneTimePaymentSuccess"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 374
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "one_time_payment"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    const-string v1, "json_card_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 377
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditCardActivity;->finish()V

    .line 378
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 79
    .local v8, "extras":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 80
    const-string v0, "payment_method"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPaymentMethod:Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    .line 81
    const-string v0, "one_time_payment"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mOneTimePayment:Z

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mOneTimePayment:Z

    if-eqz v0, :cond_1

    .line 84
    const v0, 0x7f0905d9

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    new-instance v0, Lcom/mcdonalds/app/account/EditCardPresenter;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPaymentMethod:Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    iget-boolean v2, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mOneTimePayment:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/mcdonalds/app/account/EditCardPresenter;-><init>(Lcom/mcdonalds/app/account/EditCardView;Lcom/mcdonalds/sdk/modules/models/PaymentMethod;Z)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    .line 91
    const v0, 0x7f1100d0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mDoneButton:Landroid/widget/Button;

    .line 93
    const v0, 0x7f1100c0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardholderName:Landroid/widget/EditText;

    .line 94
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditCardPresenter;->getCardHolderNameRegex()Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "cardholderNameRegex":Ljava/lang/String;
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardholderName:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Ljava/lang/String;ZZ)V

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)V

    .line 96
    const v0, 0x7f1100c3

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumber:Landroid/widget/EditText;

    .line 97
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumber:Landroid/widget/EditText;

    const/4 v2, 0x4

    const/16 v3, 0x13

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IIZZ)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumberValidationListener:Lcom/mcdonalds/app/widget/ValidationListener;

    .line 103
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumberValidationListener:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)V

    .line 105
    const v0, 0x7f1100c4

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationMonth:Landroid/widget/EditText;

    .line 106
    const v0, 0x7f1100c5

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationYear:Landroid/widget/EditText;

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationMonth:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mLengthWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationYear:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mLengthWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationMonth:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationYear:Landroid/widget/EditText;

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;IZZZ)V

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)V

    .line 110
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationYear:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationMonth:Landroid/widget/EditText;

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;IZZZ)V

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)V

    .line 113
    const v0, 0x7f1100c7

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 114
    .local v9, "hintButton":Landroid/widget/TextView;
    new-instance v10, Landroid/text/SpannableString;

    const v0, 0x7f090380

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    .local v10, "hintText":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v0, 0x7f1100c6

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardSecurityCode:Landroid/widget/EditText;

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardSecurityCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mLengthWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardSecurityCode:Landroid/widget/EditText;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IIZZ)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardSecurityCodeValidationListener:Lcom/mcdonalds/app/widget/ValidationListener;

    .line 127
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardSecurityCodeValidationListener:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)V

    .line 129
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumberWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mLengthWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    new-instance v0, Lcom/mcdonalds/app/ui/EditTextMask;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/EditTextMask;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumberMask:Lcom/mcdonalds/app/ui/EditTextMask;

    .line 132
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumberMask:Lcom/mcdonalds/app/ui/EditTextMask;

    const-string v1, "#### #### #### ####"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/EditTextMask;->setMask(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumberMask:Lcom/mcdonalds/app/ui/EditTextMask;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/EditTextMask;->setEditText(Landroid/widget/EditText;)V

    .line 135
    invoke-direct {p0}, Lcom/mcdonalds/app/account/EditCardActivity;->setupExtraFields()V

    .line 136
    invoke-direct {p0}, Lcom/mcdonalds/app/account/EditCardActivity;->setupAcceptedCards()V

    .line 138
    return-void

    .line 86
    .end local v7    # "cardholderNameRegex":Ljava/lang/String;
    .end local v9    # "hintButton":Landroid/widget/TextView;
    .end local v10    # "hintText":Landroid/text/SpannableString;
    :cond_1
    const v0, 0x7f090075

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public saveCard(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "saveCard"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mPresenter:Lcom/mcdonalds/app/account/EditCardPresenter;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardholderName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNumber:Landroid/widget/EditText;

    .line 146
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationMonth:Landroid/widget/EditText;

    .line 147
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardExpirationYear:Landroid/widget/EditText;

    .line 148
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardSecurityCode:Landroid/widget/EditText;

    .line 149
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCardNickName:Landroid/widget/EditText;

    .line 150
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mStreetAddress:Landroid/widget/EditText;

    .line 151
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCity:Landroid/widget/EditText;

    .line 152
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mState:Landroid/widget/EditText;

    .line 153
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mCountry:Landroid/widget/EditText;

    .line 154
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/mcdonalds/app/account/EditCardActivity;->mZipCode:Landroid/widget/EditText;

    .line 155
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 145
    invoke-virtual/range {v0 .. v11}, Lcom/mcdonalds/app/account/EditCardPresenter;->saveCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public showHint(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "showHint"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-class v0, Lcom/mcdonalds/app/account/CardHintActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardActivity;->startActivity(Ljava/lang/Class;)V

    .line 142
    return-void
.end method

.method public startSavingCardIndicator()V
    .locals 2

    .prologue
    const-string v0, "startSavingCardIndicator"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    const v0, 0x7f09040c

    invoke-static {p0, v0}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 358
    return-void
.end method

.method public stopSavingCardIndicator()V
    .locals 2

    .prologue
    const-string v0, "stopSavingCardIndicator"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 363
    return-void
.end method
