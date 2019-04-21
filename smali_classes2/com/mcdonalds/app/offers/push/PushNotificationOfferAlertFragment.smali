.class public Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "PushNotificationOfferAlertFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

.field private mOfferId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertFragment;->mOfferId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 51
    :sswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 54
    :sswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "DATA_PASSER_KEY"

    iget-object v2, p0, Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertFragment;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 57
    const-class v1, Lcom/mcdonalds/app/offers/OfferActivity;

    const-string v2, "offer_detail"

    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x7f110266 -> :sswitch_0
        0x7f11036f -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 31
    const-string v1, "promotionid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/offers/push/PushNotificationOfferAlertFragment;->mOfferId:I

    .line 33
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    const v3, 0x7f0400fb

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 38
    .local v2, "rootView":Landroid/view/View;
    const v3, 0x7f110266

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 39
    .local v1, "okButton":Landroid/widget/Button;
    const v3, 0x7f11036f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    .local v0, "goToOfferButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-object v2
.end method
