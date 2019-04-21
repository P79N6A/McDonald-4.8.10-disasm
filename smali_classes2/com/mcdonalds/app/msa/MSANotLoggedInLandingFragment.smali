.class public Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "MSANotLoggedInLandingFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 32
    return-void
.end method

.method private setupClickText(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/style/ClickableSpan;)V
    .locals 7
    .param p1, "instrText"    # Ljava/lang/String;
    .param p2, "clickText"    # Ljava/lang/String;
    .param p3, "ssb"    # Landroid/text/SpannableStringBuilder;
    .param p4, "cs"    # Landroid/text/style/ClickableSpan;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "setupClickText"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v6

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "index":I
    if-eq v0, v5, :cond_0

    .line 76
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3, p4, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 77
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p3, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 78
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const/16 v3, 0x21

    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v5, 0x7f0400e0

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 45
    .local v3, "rootView":Landroid/view/View;
    const v5, 0x7f11030b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    .local v1, "instr":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "instrText":Ljava/lang/String;
    const v5, 0x7f0900ec

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "clickText":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    .local v4, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v5, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment$1;-><init>(Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;)V

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;->setupClickText(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/style/ClickableSpan;)V

    .line 56
    const v5, 0x7f0900ee

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v5, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment$2;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment$2;-><init>(Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;)V

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;->setupClickText(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/style/ClickableSpan;)V

    .line 64
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 67
    return-object v3
.end method
