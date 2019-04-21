.class public Lcom/mcdonalds/app/account/EditCardPresenter;
.super Ljava/lang/Object;
.source "EditCardPresenter.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/ValidationListener$Callback;


# static fields
.field private static final ADDRESS_FIELDS:[Ljava/lang/String;


# instance fields
.field private mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

.field private mExtraFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/app/model/FormField;",
            ">;"
        }
    .end annotation
.end field

.field private mOneTimePayment:Z

.field private mPaymentMethod:Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

.field private mSaveCardListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatePaymentListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mValidations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/widget/ValidationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/mcdonalds/app/account/EditCardView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "streetAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "city"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "country"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "zipCode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/app/account/EditCardPresenter;->ADDRESS_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/app/account/EditCardView;Lcom/mcdonalds/sdk/modules/models/PaymentMethod;Z)V
    .locals 8
    .param p1, "view"    # Lcom/mcdonalds/app/account/EditCardView;
    .param p2, "paymentMethod"    # Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .param p3, "oneTimePayment"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v4, Lcom/mcdonalds/app/account/EditCardPresenter$2;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/account/EditCardPresenter$2;-><init>(Lcom/mcdonalds/app/account/EditCardPresenter;)V

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mSaveCardListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 299
    new-instance v4, Lcom/mcdonalds/app/account/EditCardPresenter$3;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/account/EditCardPresenter$3;-><init>(Lcom/mcdonalds/app/account/EditCardPresenter;)V

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mUpdatePaymentListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 73
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mView:Lcom/mcdonalds/app/account/EditCardView;

    .line 74
    iput-object p2, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mPaymentMethod:Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    .line 75
    iput-boolean p3, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mOneTimePayment:Z

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mValidations:Ljava/util/List;

    .line 77
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .line 79
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mExtraFields:Ljava/util/HashMap;

    .line 80
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v5, "interface.paymentRegistration.extraFields"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 81
    .local v0, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    if-nez v0, :cond_1

    .line 91
    :cond_0
    return-void

    .line 85
    :cond_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 86
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/internal/LinkedTreeMap;

    .line 87
    .local v3, "map":Lcom/google/gson/internal/LinkedTreeMap;
    invoke-virtual {v3}, Lcom/google/gson/internal/LinkedTreeMap;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/mcdonalds/app/model/FormField;

    instance-of v4, v2, Lcom/google/gson/Gson;

    if-nez v4, :cond_2

    invoke-virtual {v2, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    check-cast v1, Lcom/mcdonalds/app/model/FormField;

    .line 88
    .local v1, "field":Lcom/mcdonalds/app/model/FormField;
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mExtraFields:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mcdonalds/app/model/FormField;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1    # "field":Lcom/mcdonalds/app/model/FormField;
    :cond_2
    move-object v4, v2

    .line 87
    check-cast v4, Lcom/google/gson/Gson;

    invoke-static {v4, v6, v7}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/EditCardPresenter;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/CreditCard;Ljava/net/URL;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardPresenter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/modules/models/CreditCard;
    .param p3, "x3"    # Ljava/net/URL;
    .param p4, "x4"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardPresenter"

    const-string v2, "access$000"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mcdonalds/app/account/EditCardPresenter;->handlePaymentUrlResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/CreditCard;Ljava/net/URL;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/EditCardPresenter;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardPresenter"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mOneTimePayment:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardPresenter"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mUpdatePaymentListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/EditCardPresenter;)Lcom/mcdonalds/app/account/EditCardView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditCardPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditCardPresenter"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mView:Lcom/mcdonalds/app/account/EditCardView;

    return-object v0
.end method

.method private checkValidations()V
    .locals 4

    .prologue
    const-string v2, "checkValidations"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    const/4 v0, 0x1

    .line 320
    .local v0, "validated":Z
    iget-object v2, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mValidations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/widget/ValidationListener;

    .line 321
    .local v1, "validationListener":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->validate()Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 326
    .end local v1    # "validationListener":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_1
    if-eqz v0, :cond_2

    .line 327
    iget-object v2, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mView:Lcom/mcdonalds/app/account/EditCardView;

    invoke-interface {v2}, Lcom/mcdonalds/app/account/EditCardView;->enableSaveCard()V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mView:Lcom/mcdonalds/app/account/EditCardView;

    invoke-interface {v2}, Lcom/mcdonalds/app/account/EditCardView;->disableSaveCard()V

    goto :goto_0
.end method

.method private handlePaymentUrlResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/CreditCard;Ljava/net/URL;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "creditCard"    # Lcom/mcdonalds/sdk/modules/models/CreditCard;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x0

    const-string v1, "handlePaymentUrlResponse"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    const-string v1, "paymentRegistration"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/paymentRegistration/PaymentRegistrationModule;

    .line 272
    .local v0, "module":Lcom/mcdonalds/sdk/modules/paymentRegistration/PaymentRegistrationModule;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 273
    iget-object v2, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mPaymentMethod:Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mOneTimePayment:Z

    iget-object v6, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mSaveCardListener:Lcom/mcdonalds/sdk/AsyncListener;

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mcdonalds/sdk/modules/paymentRegistration/PaymentRegistrationModule;->saveCard(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/PaymentMethod;Ljava/lang/String;ZLcom/mcdonalds/sdk/modules/models/CreditCard;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mSaveCardListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v4, v4, p4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method


# virtual methods
.method public addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)V
    .locals 3
    .param p1, "validationListener"    # Lcom/mcdonalds/app/widget/ValidationListener;

    .prologue
    const-string v0, "addValidation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mValidations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p1, p0}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 186
    invoke-direct {p0}, Lcom/mcdonalds/app/account/EditCardPresenter;->checkValidations()V

    .line 187
    return-void
.end method

.method public getAcceptedCardsDrawableResourceIds()[I
    .locals 6

    .prologue
    const-string v4, "getAcceptedCardsDrawableResourceIds"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v5, "interface.paymentRegistration.acceptedCards"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 162
    .local v0, "acceptedCardNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [I

    .line 163
    .local v1, "acceptedCardsDrawableResourceIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 164
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, "cardName":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 163
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :sswitch_0
    const-string v5, "visa"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "mastercard"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "american-express"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "jcb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    .line 167
    :pswitch_0
    const v4, 0x7f02025c

    aput v4, v1, v3

    goto :goto_2

    .line 170
    :pswitch_1
    const v4, 0x7f0201cf

    aput v4, v1, v3

    goto :goto_2

    .line 173
    :pswitch_2
    const v4, 0x7f020054

    aput v4, v1, v3

    goto :goto_2

    .line 176
    :pswitch_3
    const v4, 0x7f0201c5

    aput v4, v1, v3

    goto :goto_2

    .line 180
    .end local v2    # "cardName":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 165
    :sswitch_data_0
    .sparse-switch
        -0x79845b8e -> :sswitch_1
        0x19a49 -> :sswitch_3
        0x373c41 -> :sswitch_0
        0x3a3b6c3 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCardHolderNameRegex()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getCardHolderNameRegex"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v1, "textValidation.cardholderNameRegex"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCardNameForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cardType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const-string v1, "getCardNameForType"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v1, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 146
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 156
    const-string v0, ""

    :goto_1
    return-object v0

    .line 146
    :pswitch_1
    const-string v2, "001"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :pswitch_2
    const-string v0, "003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_3
    const-string v0, "002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const-string v0, "007"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 148
    :pswitch_5
    const-string v0, "visa"

    goto :goto_1

    .line 150
    :pswitch_6
    const-string v0, "american-express"

    goto :goto_1

    .line 152
    :pswitch_7
    const-string v0, "mastercard"

    goto :goto_1

    .line 154
    :pswitch_8
    const-string v0, "jcb"

    goto :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0xba31
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getCardNickNameRegex()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getCardNickNameRegex"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v1, "textValidation.cardNickNameRegex"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCardType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cardNumberString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "getCardType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 113
    const-string v1, "^4.*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const-string v0, "001"

    goto :goto_0

    .line 115
    :cond_2
    const-string v1, "^3[47].*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    const-string v0, "003"

    goto :goto_0

    .line 117
    :cond_3
    const-string v1, "^(2131|1800|35).*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    const-string v0, "007"

    goto :goto_0

    .line 119
    :cond_4
    const-string v1, "^(5[1-5]|222[1-9]|22[3-9]|2[3-6]|27[01]|2720).*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v0, "002"

    goto :goto_0
.end method

.method public getCardTypeDrawableResourceId(Ljava/lang/String;)I
    .locals 6
    .param p1, "cardNumberString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const-string v4, "getCardTypeDrawableResourceId"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 127
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/account/EditCardPresenter;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "cardType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 141
    :goto_0
    return v1

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 133
    :pswitch_1
    const v1, 0x7f02025c

    goto :goto_0

    .line 131
    :pswitch_2
    const-string v3, "001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :pswitch_3
    const-string v2, "003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :pswitch_4
    const-string v2, "002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :pswitch_5
    const-string v2, "007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    .line 135
    :pswitch_6
    const v1, 0x7f020054

    goto :goto_0

    .line 137
    :pswitch_7
    const v1, 0x7f0201cf

    goto :goto_0

    .line 139
    :pswitch_8
    const v1, 0x7f0201c5

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0xba31
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public hasAddressFields()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-string v2, "hasAddressFields"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    sget-object v3, Lcom/mcdonalds/app/account/EditCardPresenter;->ADDRESS_FIELDS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 99
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardPresenter;->isFieldEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    const/4 v1, 0x1

    .line 103
    .end local v0    # "field":Ljava/lang/String;
    :cond_0
    return v1

    .line 98
    .restart local v0    # "field":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isFieldEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const-string v0, "isFieldEnabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mExtraFields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onFieldValidationStateChanged(Z)V
    .locals 4
    .param p1, "isValidated"    # Z

    .prologue
    const-string v0, "onFieldValidationStateChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-direct {p0}, Lcom/mcdonalds/app/account/EditCardPresenter;->checkValidations()V

    .line 316
    return-void
.end method

.method public saveCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "cardholderName"    # Ljava/lang/String;
    .param p2, "cardNumber"    # Ljava/lang/String;
    .param p3, "expirationMonth"    # Ljava/lang/String;
    .param p4, "expirationYear"    # Ljava/lang/String;
    .param p5, "cvv"    # Ljava/lang/String;
    .param p6, "nickName"    # Ljava/lang/String;
    .param p7, "streetAddress"    # Ljava/lang/String;
    .param p8, "city"    # Ljava/lang/String;
    .param p9, "state"    # Ljava/lang/String;
    .param p10, "country"    # Ljava/lang/String;
    .param p11, "zipCode"    # Ljava/lang/String;

    .prologue
    const-string v11, "saveCard"

    const/16 v12, 0xb

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    const/4 v13, 0x4

    aput-object p5, v12, v13

    const/4 v13, 0x5

    aput-object p6, v12, v13

    const/4 v13, 0x6

    aput-object p7, v12, v13

    const/4 v13, 0x7

    aput-object p8, v12, v13

    const/16 v13, 0x8

    aput-object p9, v12, v13

    const/16 v13, 0x9

    aput-object p10, v12, v13

    const/16 v13, 0xa

    aput-object p11, v12, v13

    invoke-static {p0, v11, v12}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    new-instance v3, Lcom/mcdonalds/sdk/modules/models/CreditCard;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/modules/models/CreditCard;-><init>()V

    .line 211
    .local v3, "creditCard":Lcom/mcdonalds/sdk/modules/models/CreditCard;
    const-string v11, " "

    const/4 v12, 0x2

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, "splittedName":[Ljava/lang/String;
    array-length v11, v10

    if-lez v11, :cond_0

    .line 213
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v3, v11}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setForename(Ljava/lang/String;)V

    .line 214
    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    .line 215
    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-virtual {v3, v11}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setSurname(Ljava/lang/String;)V

    .line 218
    :cond_0
    const-string v11, " "

    const-string v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setCardNumber(Ljava/lang/String;)V

    .line 220
    const-string v11, "%s-20%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p3, v12, v13

    const/4 v13, 0x1

    aput-object p4, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "expirationDate":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setCardExpiryDate(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setCardSecurityCode(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditCardPresenter;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "cardType":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setCardType(Ljava/lang/String;)V

    .line 226
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 227
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setNickname(Ljava/lang/String;)V

    .line 239
    :goto_0
    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setAddressStreet(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setAddressCity(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setAddressState(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setAddressCountry(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setAddressPostalCode(Ljava/lang/String;)V

    .line 245
    const-string v11, "customer"

    invoke-static {v11}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 246
    .local v4, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v4, :cond_1

    .line 247
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v9

    .line 248
    .local v9, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v9, :cond_1

    .line 249
    iget-object v11, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mView:Lcom/mcdonalds/app/account/EditCardView;

    invoke-interface {v11}, Lcom/mcdonalds/app/account/EditCardView;->startSavingCardIndicator()V

    .line 250
    iget-object v11, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mPaymentMethod:Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getID()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-boolean v12, p0, Lcom/mcdonalds/app/account/EditCardPresenter;->mOneTimePayment:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    new-instance v13, Lcom/mcdonalds/app/account/EditCardPresenter$1;

    invoke-direct {v13, p0, v9, v3}, Lcom/mcdonalds/app/account/EditCardPresenter$1;-><init>(Lcom/mcdonalds/app/account/EditCardPresenter;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/CreditCard;)V

    invoke-virtual {v4, v11, v12, v13}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getPaymentTypeRegistrationURL(ILjava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 268
    .end local v9    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_1
    return-void

    .line 229
    .end local v4    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/account/EditCardPresenter;->getCardNameForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "cardName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v7, v11, -0x4

    .line 231
    .local v7, "lastFourDigitsIndex":I
    if-lez v7, :cond_3

    .line 232
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "lastFourDigits":Ljava/lang/String;
    const-string v11, "%s-%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, "nickname":Ljava/lang/String;
    invoke-virtual {v3, v8}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setNickname(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v6    # "lastFourDigits":Ljava/lang/String;
    .end local v8    # "nickname":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->setNickname(Ljava/lang/String;)V

    goto :goto_0
.end method
