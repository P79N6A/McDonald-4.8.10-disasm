.class public Lcom/mcdonalds/app/ordering/summary/RatingBox;
.super Landroid/widget/FrameLayout;
.source "RatingBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mComment:Landroid/widget/EditText;

.field private mCommentHolder:Landroid/widget/LinearLayout;

.field private mIsRatingSubmitted:Z

.field private mRating:I

.field private mSendRatingButton:Landroid/widget/Button;

.field private mSkipButton:Landroid/widget/Button;

.field private mStars:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mRating:I

    .line 47
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->inflate(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mRating:I

    .line 52
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->inflate(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/summary/RatingBox;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/RatingBox;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.RatingBox"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->skip()V

    return-void
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x7f1103f0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v1, "inflate"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0, v1, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const v1, 0x7f04016f

    invoke-static {p1, v1, p0}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    const v1, 0x7f1104d0

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mCommentHolder:Landroid/widget/LinearLayout;

    .line 60
    const v1, 0x7f1104d1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mComment:Landroid/widget/EditText;

    .line 62
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mStars:[Landroid/widget/ImageView;

    .line 63
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mStars:[Landroid/widget/ImageView;

    const v1, 0x7f1104cb

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v2

    .line 64
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mStars:[Landroid/widget/ImageView;

    const v1, 0x7f1104cc

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v4

    .line 65
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mStars:[Landroid/widget/ImageView;

    const/4 v4, 0x2

    const v1, 0x7f1104cd

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v4

    .line 66
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mStars:[Landroid/widget/ImageView;

    const/4 v4, 0x3

    const v1, 0x7f1104ce

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v4

    .line 67
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mStars:[Landroid/widget/ImageView;

    const/4 v4, 0x4

    const v1, 0x7f1104cf

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v3, v4

    .line 69
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mStars:[Landroid/widget/ImageView;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 70
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "img":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/mcdonalds/app/ordering/summary/RatingBox$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/summary/RatingBox$1;-><init>(Lcom/mcdonalds/app/ordering/summary/RatingBox;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mSkipButton:Landroid/widget/Button;

    .line 81
    const v1, 0x7f1104d2

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mSendRatingButton:Landroid/widget/Button;

    .line 82
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mSendRatingButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mSendRatingButton:Landroid/widget/Button;

    new-instance v2, Lcom/mcdonalds/app/ordering/summary/RatingBox$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/summary/RatingBox$2;-><init>(Lcom/mcdonalds/app/ordering/summary/RatingBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v1, "refresh"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mStars:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mStars:[Landroid/widget/ImageView;

    aget-object v2, v1, v0

    iget v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mRating:I

    if-ge v0, v1, :cond_0

    const v1, 0x7f0201b8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    const v1, 0x7f0201b7

    goto :goto_1

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mStars:[Landroid/widget/ImageView;

    array-length v1, v1

    if-lt v1, v3, :cond_2

    .line 108
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mSendRatingButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    :cond_2
    return-void
.end method

.method private skip()V
    .locals 3

    .prologue
    const-string v1, "skip"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 118
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    const-class v1, Lcom/mcdonalds/app/MainActivity;

    const-string v2, "dashboard"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 120
    .end local v0    # "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getComment()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getComment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mComment:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->getText(Landroid/widget/EditText;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRating()I
    .locals 2

    .prologue
    const-string v0, "getRating"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget v0, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mRating:I

    return v0
.end method

.method protected getSendRatingButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getSendRatingButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mSendRatingButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected getSkipButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getSkipButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mSkipButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected hideCommentFields(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "hideFields"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    const-string v0, "hideCommentFields"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mCommentHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mCommentHolder:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mIsRatingSubmitted:Z

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mRating:I

    .line 96
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->refresh()V

    .line 99
    :cond_0
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 172
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method protected sendRating()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v3, "sendRating"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-boolean v3, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mIsRatingSubmitted:Z

    if-nez v3, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090423

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 135
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 137
    .local v2, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v1, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "EVENT_NAME"

    const-string v4, "evaluate"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 140
    .local v0, "customs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0xa

    iget v4, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mRating:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    const-string v3, "/order-summary"

    const-string v4, "Rating"

    invoke-static {v3, v4, v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Ljava/util/Map;)V

    .line 143
    iget v3, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mRating:I

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/RatingBox;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->sendRating(ILjava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 145
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mSendRatingButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mComment:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 148
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mcdonalds/app/ordering/summary/RatingBox;->mIsRatingSubmitted:Z

    .line 150
    .end local v0    # "customs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_0
    return-void
.end method
