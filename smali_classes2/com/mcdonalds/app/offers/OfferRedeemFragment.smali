.class public Lcom/mcdonalds/app/offers/OfferRedeemFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "OfferRedeemFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mBarCodeData:Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;

.field private mBarCodeImage:Landroid/widget/ImageView;

.field private mBarCodeTextView:Landroid/widget/TextView;

.field private mIsPunchcardOffer:Z

.field private mOfferName:Ljava/lang/String;

.field private final mOnClickDone:Landroid/view/View$OnClickListener;

.field private mPunchcardTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 139
    new-instance v0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/offers/OfferRedeemFragment$1;-><init>(Lcom/mcdonalds/app/offers/OfferRedeemFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mOnClickDone:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/offers/OfferRedeemFragment;)Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferRedeemFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mBarCodeData:Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/offers/OfferRedeemFragment;)Landroid/widget/ImageView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferRedeemFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mBarCodeImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private generateBarCodeImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "generateBarCodeImage"

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mBarCodeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mBarCodeData:Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->getRandomCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;

    invoke-direct {v0, p0, v2}, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;-><init>(Lcom/mcdonalds/app/offers/OfferRedeemFragment;Lcom/mcdonalds/app/offers/OfferRedeemFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/offers/OfferRedeemFragment$GenerateCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private screenBrightness()V
    .locals 3

    .prologue
    const-string v1, "screenBrightness"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 129
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 130
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const v0, 0x7f090887

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mOfferName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar_title"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "titleId":I
    if-lez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 117
    .end local v0    # "title":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mPunchcardTextView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mIsPunchcardOffer:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->generateBarCodeImage()V

    .line 119
    return-void

    .line 117
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ARG_OFFER_BARCODE_DATA"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 69
    .local v2, "data":Landroid/os/Parcelable;
    instance-of v4, v2, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;

    if-eqz v4, :cond_0

    .line 70
    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;

    .end local v2    # "data":Landroid/os/Parcelable;
    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mBarCodeData:Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    .local v1, "arguments":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 75
    const-string v4, "ARG_OFFER_NAME"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mOfferName:Ljava/lang/String;

    .line 76
    const-string v4, "ARG_IS_PUNCHCARD_OFFER"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mIsPunchcardOffer:Z

    .line 79
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v3, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "EVENT_NAME"

    const-string v5, "qrcodeview"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 82
    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 84
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v4, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v2, 0x7f0400ed

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f110347

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mBarCodeTextView:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f1102b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mBarCodeImage:Landroid/widget/ImageView;

    .line 94
    const v2, 0x7f110348

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mPunchcardTextView:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f110349

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 97
    .local v0, "done":Landroid/widget/Button;
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->mOnClickDone:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 124
    invoke-direct {p0}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->screenBrightness()V

    .line 125
    return-void
.end method
