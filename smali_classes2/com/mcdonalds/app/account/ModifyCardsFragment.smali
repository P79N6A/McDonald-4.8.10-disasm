.class public Lcom/mcdonalds/app/account/ModifyCardsFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ModifyCardsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

.field private changesMade:Z

.field private in_edit_mode:Z

.field private mAddCardClickListener:Landroid/view/View$OnClickListener;

.field private mCardList:Landroid/widget/ListView;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mFooterView:Landroid/view/View;

.field private mMaxCardAlertTextView:Landroid/widget/TextView;

.field private mMenuEditButton:Landroid/widget/TextView;

.field private mPaymentCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    .line 59
    iput-boolean v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->changesMade:Z

    .line 60
    iput-boolean v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->in_edit_mode:Z

    .line 120
    new-instance v0, Lcom/mcdonalds/app/account/ModifyCardsFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment$2;-><init>(Lcom/mcdonalds/app/account/ModifyCardsFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mAddCardClickListener:Landroid/view/View$OnClickListener;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/ModifyCardsFragment;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->launchAddPaymentScreen(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/account/ModifyCardsFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->updateTitleTextView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/account/ModifyCardsFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->checkMaxCardsLimit()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMenuEditButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->in_edit_mode:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/account/ModifyCardsFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

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

    .line 45
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->in_edit_mode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->adapter:Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->changesMade:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/app/account/ModifyCardsFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->changesMade:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/account/ModifyCardsFragment;ZI)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$800"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->saveCustomerProfileChanges(ZI)V

    return-void
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/account/ModifyCardsFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ModifyCardsFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->setupMaxCardAlertViewText()V

    return-void
.end method

.method private checkMaxCardsLimit()V
    .locals 4

    .prologue
    const-string v2, "checkMaxCardsLimit"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    const-string v2, "maxPaymentCards"

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "maxStr":Ljava/lang/String;
    const/4 v0, -0x1

    .line 462
    .local v0, "max":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 467
    :goto_0
    if-ltz v0, :cond_0

    .line 468
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 469
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mFooterView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mFooterView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 478
    :cond_0
    :goto_1
    return-void

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mFooterView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mFooterView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 463
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private launchAddPaymentScreen(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    const-string v6, "launchAddPaymentScreen"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    .line 148
    .local v3, "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v7

    sget-object v8, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Credit:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getID()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 151
    .local v2, "paymentId":I
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "supportedPaymentMethods.creditCard.useNativeInterface"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v5

    .line 153
    .local v5, "useNativeInterface":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, "args":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "supportedPaymentMethods.creditCard.isMPGS"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    const-string v6, "EXTRA_PAYMENT_ID"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-class v1, Lcom/mcdonalds/app/ordering/MPGSPaymentActivity;

    .line 160
    .local v1, "classToLaunch":Ljava/lang/Class;
    const v4, 0xa734

    .line 170
    .local v4, "requestCode":I
    :goto_0
    invoke-virtual {p0, v1, v0, v4}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 174
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "classToLaunch":Ljava/lang/Class;
    .end local v2    # "paymentId":I
    .end local v3    # "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .end local v4    # "requestCode":I
    .end local v5    # "useNativeInterface":Z
    :cond_1
    return-void

    .line 161
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "paymentId":I
    .restart local v3    # "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .restart local v5    # "useNativeInterface":Z
    :cond_2
    if-eqz v5, :cond_3

    .line 162
    const-string v6, "payment_method"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 163
    const-class v1, Lcom/mcdonalds/app/account/EditCardActivity;

    .line 164
    .restart local v1    # "classToLaunch":Ljava/lang/Class;
    const v4, 0xa737

    .restart local v4    # "requestCode":I
    goto :goto_0

    .line 166
    .end local v1    # "classToLaunch":Ljava/lang/Class;
    .end local v4    # "requestCode":I
    :cond_3
    const-string v6, "EXTRA_PAYMENT_ID"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-class v1, Lcom/mcdonalds/app/ordering/PaymentProviderActivity;

    .line 168
    .restart local v1    # "classToLaunch":Ljava/lang/Class;
    const v4, 0xa733

    .restart local v4    # "requestCode":I
    goto :goto_0
.end method

.method private refreshCustomerProfile()V
    .locals 3

    .prologue
    const-string v1, "refreshCustomerProfile"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-nez v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v0

    .line 279
    .local v0, "updatedCardList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 282
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->adapter:Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->notifyDataSetChanged()V

    .line 286
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMenuEditButton:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 287
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMenuEditButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 291
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "supportedPaymentMethods.creditCard.checkMaxPaymentCards"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->checkMaxCardsLimit()V

    goto :goto_0

    .line 287
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private saveCustomerProfileChanges(ZI)V
    .locals 4
    .param p1, "exit"    # Z
    .param p2, "index"    # I

    .prologue
    const-string v0, "saveCustomerProfileChanges"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const-string v1, "Saving changes"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    new-instance v2, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;-><init>(Lcom/mcdonalds/app/account/ModifyCardsFragment;I)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updatePayments(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private setupMaxCardAlertViewText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v1, "setupMaxCardAlertViewText"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getMaxAllowedCards()I

    move-result v0

    .line 111
    .local v0, "maxAllowedCards":I
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMaxCardAlertTextView:Landroid/widget/TextView;

    const v2, 0x7f090a1b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMaxCardAlertTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    .end local v0    # "maxAllowedCards":I
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v0    # "maxAllowedCards":I
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMaxCardAlertTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTitleTextView()V
    .locals 3

    .prologue
    const-string v0, "updateTitleTextView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isOneClickPaymentFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f090a4e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mFooterView:Landroid/view/View;

    const v1, 0x7f110513

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    :goto_1
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f090a50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mFooterView:Landroid/view/View;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mAddCardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const v0, 0x7f090865

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 180
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 181
    .local v0, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCardItems()Ljava/util/List;

    move-result-object v2

    .line 183
    .local v2, "tempCards":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    if-eqz v2, :cond_3

    .line 184
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 185
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 187
    .local v1, "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    iget-object v5, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v1    # "paymentCard":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f04018d

    iget-object v6, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCardList:Landroid/widget/ListView;

    invoke-virtual {v3, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mFooterView:Landroid/view/View;

    .line 196
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mFooterView:Landroid/view/View;

    const v5, 0x7f110512

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mTitleTextView:Landroid/widget/TextView;

    .line 197
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->updateTitleTextView()V

    .line 199
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCardList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 201
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->adapter:Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->notifyDataSetChanged()V

    .line 203
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMenuEditButton:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 204
    iget-object v5, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMenuEditButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setActivated(Z)V

    .line 208
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "supportedPaymentMethods.creditCard.checkMaxPaymentCards"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->checkMaxCardsLimit()V

    .line 212
    :cond_2
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->setupMaxCardAlertViewText()V

    .line 214
    :cond_3
    return-void

    :cond_4
    move v3, v4

    .line 204
    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 256
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 258
    const v0, 0xa733

    if-eq p1, v0, :cond_0

    const v0, 0xa737

    if-eq p1, v0, :cond_0

    const v0, 0xa734

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 264
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->refreshCustomerProfile()V

    .line 267
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->setHasOptionsMenu(Z)V

    .line 83
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "onCreateOptionsMenu"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    invoke-static {p0, v1, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 220
    const v1, 0x7f12000a

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 223
    const v1, 0x7f110549

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 224
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMenuEditButton:Landroid/widget/TextView;

    .line 225
    iget-object v4, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMenuEditButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 226
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMenuEditButton:Landroid/widget/TextView;

    new-instance v2, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;-><init>(Lcom/mcdonalds/app/account/ModifyCardsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    return-void

    :cond_0
    move v1, v3

    .line 225
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v1, 0x7f0400da

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f1102f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCardList:Landroid/widget/ListView;

    .line 95
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCardList:Landroid/widget/ListView;

    new-instance v2, Lcom/mcdonalds/app/account/ModifyCardsFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/account/ModifyCardsFragment$1;-><init>(Lcom/mcdonalds/app/account/ModifyCardsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    const v1, 0x7f1102f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mMaxCardAlertTextView:Landroid/widget/TextView;

    .line 103
    new-instance v1, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mPaymentCards:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;-><init>(Lcom/mcdonalds/app/account/ModifyCardsFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->adapter:Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    .line 104
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->mCardList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment;->adapter:Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    return-object v0
.end method
