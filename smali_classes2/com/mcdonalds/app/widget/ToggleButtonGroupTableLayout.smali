.class public Lcom/mcdonalds/app/widget/ToggleButtonGroupTableLayout;
.super Landroid/widget/TableLayout;
.source "ToggleButtonGroupTableLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActiveRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private setChildrenOnClickListener(Landroid/widget/TableRow;)V
    .locals 6
    .param p1, "tr"    # Landroid/widget/TableRow;

    .prologue
    const-string v3, "setChildrenOnClickListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p1}, Landroid/widget/TableRow;->getChildCount()I

    move-result v0

    .line 72
    .local v0, "c":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const-string v0, "addView"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 56
    check-cast p1, Landroid/widget/TableRow;

    .end local p1    # "child":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/ToggleButtonGroupTableLayout;->setChildrenOnClickListener(Landroid/widget/TableRow;)V

    .line 57
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const-string v0, "addView"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    check-cast p1, Landroid/widget/TableRow;

    .end local p1    # "child":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/ToggleButtonGroupTableLayout;->setChildrenOnClickListener(Landroid/widget/TableRow;)V

    .line 67
    return-void
.end method

.method public getCheckedRadioButtonId()I
    .locals 2

    .prologue
    const-string v0, "getCheckedRadioButtonId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ToggleButtonGroupTableLayout;->mActiveRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ToggleButtonGroupTableLayout;->mActiveRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "onClick"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    .line 41
    check-cast v0, Landroid/widget/RadioButton;

    .line 42
    .local v0, "rb":Landroid/widget/RadioButton;
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ToggleButtonGroupTableLayout;->mActiveRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ToggleButtonGroupTableLayout;->mActiveRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 45
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 46
    iput-object v0, p0, Lcom/mcdonalds/app/widget/ToggleButtonGroupTableLayout;->mActiveRadioButton:Landroid/widget/RadioButton;

    .line 47
    return-void
.end method
