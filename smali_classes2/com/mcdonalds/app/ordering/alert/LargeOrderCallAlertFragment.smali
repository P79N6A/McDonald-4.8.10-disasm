.class public Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;
.super Lcom/mcdonalds/app/ordering/alert/AlertFragment;
.source "LargeOrderCallAlertFragment.java"


# instance fields
.field private mLargeOrderError:Z

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/AlertFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.alert.LargeOrderCallAlertFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->makeCall()V

    return-void
.end method

.method private makeCall()V
    .locals 3

    .prologue
    const-string v1, "makeCall"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->mPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->startActivity(Landroid/content/Intent;)V

    .line 118
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentResourceId()I
    .locals 2

    .prologue
    const-string v0, "getFragmentResourceId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const v0, 0x7f0400c1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "large_order"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->mLargeOrderError:Z

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->getFragmentResourceId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f110278

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->mNegativeButton:Landroid/widget/Button;

    .line 51
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v3, 0x7f110279

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->mPositiveButton:Landroid/widget/Button;

    .line 53
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    .line 57
    .local v1, "isDelivery":Z
    if-eqz v1, :cond_1

    .line 58
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.confirmationNeededOrders.deliveryCallCenter"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    :goto_0
    iput-object v3, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->mPhoneNumber:Ljava/lang/String;

    .line 61
    const v3, 0x7f110260

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, "instructions":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    const v3, 0x7f0900be

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->mPhoneNumber:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 63
    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 62
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-object v2

    .line 59
    .end local v0    # "instructions":Landroid/widget/TextView;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.confirmationNeededOrders.mcdonaldsCallCenter"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 63
    .restart local v0    # "instructions":Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f0900bc

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->mPhoneNumber:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 64
    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public onNegativeButtonClicked()V
    .locals 2

    .prologue
    const-string v0, "onNegativeButtonClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->mLargeOrderError:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 73
    const-class v0, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    const-string v1, "basket"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const-class v0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryActivity;

    const-string v1, "order_summary"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPositiveButtonClicked()V
    .locals 5

    .prologue
    const-string v2, "onPositiveButtonClicked"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    if-nez v2, :cond_0

    .line 110
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 88
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;->makeCall()V

    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment$1;-><init>(Lcom/mcdonalds/app/ordering/alert/LargeOrderCallAlertFragment;)V

    .line 104
    .local v1, "callPhonePermissionListener":Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;
    const-string v2, "android.permission.CALL_PHONE"

    const/4 v3, 0x2

    const v4, 0x7f090623

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->requestPermission(Ljava/lang/String;IILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    goto :goto_0
.end method
