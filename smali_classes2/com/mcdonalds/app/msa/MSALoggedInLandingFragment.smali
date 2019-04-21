.class public Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "MSALoggedInLandingFragment.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSALoggedInLandingFragment"

    const-string v2, "access$000"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->setCurrentTime(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSALoggedInLandingFragment"

    const-string v2, "access$100"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->setupRefresh(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method private setCurrentTime(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 9
    .param p1, "amPmView"    # Landroid/widget/TextView;
    .param p2, "hourView"    # Landroid/widget/TextView;
    .param p3, "minuteView"    # Landroid/widget/TextView;

    .prologue
    const v8, 0x7f090554

    const/16 v7, 0xc

    const-string v4, "setCurrentTime"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 107
    .local v3, "now":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 109
    .local v1, "hourNum":I
    if-ne v1, v7, :cond_2

    .line 110
    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_1
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 119
    .local v2, "minuteNum":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "df":Ljava/text/DecimalFormat;
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v2    # "minuteNum":I
    :cond_2
    if-le v1, v7, :cond_3

    .line 112
    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    add-int/lit8 v1, v1, -0xc

    goto :goto_1

    .line 115
    :cond_3
    const v4, 0x7f090553

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setupRefresh(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 10
    .param p1, "amPmView"    # Landroid/widget/TextView;
    .param p2, "hourView"    # Landroid/widget/TextView;
    .param p3, "minuteView"    # Landroid/widget/TextView;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v1, "setupRefresh"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object p2, v6, v9

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {p0, v1, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 88
    .local v4, "timeInMillisNow":J
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->add(II)V

    .line 89
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 90
    const/16 v1, 0xe

    const/16 v6, 0x64

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 91
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 92
    .local v2, "timeInMillisNext":J
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$2;-><init>(Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    sub-long v8, v2, v4

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const v4, 0x7f0400df

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 43
    .local v3, "rootView":Landroid/view/View;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->mHandler:Landroid/os/Handler;

    .line 46
    const v4, 0x7f110461

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, "hour":Landroid/widget/TextView;
    const v4, 0x7f110463

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    .local v2, "min":Landroid/widget/TextView;
    const v4, 0x7f110464

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, "amPm":Landroid/widget/TextView;
    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->setCurrentTime(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 52
    const v4, 0x7f11030a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$1;-><init>(Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->setupRefresh(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 63
    return-object v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 71
    iput-object v1, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->mHandler:Landroid/os/Handler;

    .line 73
    :cond_0
    return-void
.end method
