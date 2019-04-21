.class public Lcom/mcdonalds/app/widget/PagerIndicatorGroup;
.super Landroid/widget/RadioGroup;
.source "PagerIndicatorGroup.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object p1, p0, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private getResourceId(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    const-string v0, "getResourceId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page_indicator_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    iget-object v3, p0, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private hideAll()V
    .locals 4

    .prologue
    const-string v2, "hideAll"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 41
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->getResourceId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 42
    .local v1, "radio":Landroid/widget/RadioButton;
    if-eqz v1, :cond_0

    .line 43
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "radio":Landroid/widget/RadioButton;
    :cond_1
    return-void
.end method


# virtual methods
.method public select(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const-string v1, "select"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->getResourceId(I)I

    move-result v0

    .line 35
    .local v0, "pagerId":I
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->check(I)V

    .line 36
    return-void
.end method

.method public setCount(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/4 v5, 0x0

    const-string v2, "setCount"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->hideAll()V

    .line 51
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->setVisibility(I)V

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 54
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->getResourceId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 55
    .local v1, "radio":Landroid/widget/RadioButton;
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "radio":Landroid/widget/RadioButton;
    :cond_1
    return-void
.end method
