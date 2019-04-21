.class public Lcom/mcdonalds/app/ordering/ProductDetailsItem;
.super Ljava/lang/Object;
.source "ProductDetailsItem.java"


# instance fields
.field private mDisclosureArrow:Landroid/widget/ImageView;

.field private mFoodImageIcon:Landroid/widget/ImageView;

.field private mHatButton:Landroid/widget/ImageButton;

.field private mInfoButton:Landroid/widget/ImageButton;

.field private mMakeItAMealButton:Landroid/widget/Button;

.field private mName:Landroid/widget/TextView;

.field private mNameDetails:Landroid/widget/TextView;

.field private mPriceUplift:Landroid/widget/TextView;

.field private mSelectedButton:Lcom/mcdonalds/app/widget/InertCheckBox;

.field private mSpecialInstructions:Landroid/widget/TextView;

.field private mView:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mView:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    .line 36
    const v0, 0x7f110133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/widget/InertCheckBox;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mSelectedButton:Lcom/mcdonalds/app/widget/InertCheckBox;

    .line 37
    const v0, 0x7f110134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mFoodImageIcon:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f110136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mName:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f110137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mPriceUplift:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f110138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mNameDetails:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f110139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mSpecialInstructions:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f11013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mInfoButton:Landroid/widget/ImageButton;

    .line 44
    const v0, 0x7f11013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mHatButton:Landroid/widget/ImageButton;

    .line 45
    const v0, 0x7f11013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mDisclosureArrow:Landroid/widget/ImageView;

    .line 46
    return-void
.end method

.method private fixLayoutOnInstructions()V
    .locals 4

    .prologue
    const-string v1, "fixLayoutOnInstructions"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 162
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mView:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mView:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mView:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setMinimumHeight(I)V

    .line 164
    return-void
.end method


# virtual methods
.method public getDisclosureArrow()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getDisclosureArrow"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mDisclosureArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getFoodImageIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    const-string v0, "getFoodImageIcon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mFoodImageIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getHatButton()Landroid/widget/ImageButton;
    .locals 2

    .prologue
    const-string v0, "getHatButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mHatButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getInfoButton()Landroid/widget/ImageButton;
    .locals 2

    .prologue
    const-string v0, "getInfoButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mInfoButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getMakeItAMealButton()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getMakeItAMealButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mMakeItAMealButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameDetails()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getNameDetails"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mNameDetails:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPriceUplift()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getPriceUplift"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mPriceUplift:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSelectedButton()Lcom/mcdonalds/app/widget/InertCheckBox;
    .locals 2

    .prologue
    const-string v0, "getSelectedButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mSelectedButton:Lcom/mcdonalds/app/widget/InertCheckBox;

    return-object v0
.end method

.method public getSpecialInstructions()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getSpecialInstructions"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mSpecialInstructions:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Lcom/mcdonalds/app/widget/CheckableRelativeLayout;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mView:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    return-object v0
.end method

.method public setHatButtonHighlighted(Ljava/lang/String;)V
    .locals 3
    .param p1, "customizations"    # Ljava/lang/String;

    .prologue
    const-string v0, "setHatButtonHighlighted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mHatButton:Landroid/widget/ImageButton;

    const v1, 0x7f02015f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public setHatButtonHighlighted(Z)V
    .locals 4
    .param p1, "highlighted"    # Z

    .prologue
    const-string v0, "setHatButtonHighlighted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mHatButton:Landroid/widget/ImageButton;

    const v1, 0x7f02015f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mHatButton:Landroid/widget/ImageButton;

    const v1, 0x7f02015c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setHatButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const-string v0, "setHatButtonOnClickListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mHatButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public setHatButtonVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const-string v0, "setHatButtonVisibility"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mHatButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 90
    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-string v0, "setNameText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setPriceUpliftText(Ljava/lang/String;)V
    .locals 3
    .param p1, "priceUplift"    # Ljava/lang/String;

    .prologue
    const-string v0, "setPriceUpliftText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mPriceUplift:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public setPriceUpliftTextVisible(Z)V
    .locals 4
    .param p1, "setVisible"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "setPriceUpliftTextVisible"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mPriceUplift:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    return-void

    .line 73
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSpecialInstructionsText(Ljava/lang/String;)V
    .locals 3
    .param p1, "specialInstructions"    # Ljava/lang/String;

    .prologue
    const-string v0, "setSpecialInstructionsText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mSpecialInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->fixLayoutOnInstructions()V

    .line 86
    :cond_0
    return-void
.end method

.method public setSubSelection(Z)V
    .locals 4
    .param p1, "isSubSelection"    # Z

    .prologue
    const/4 v3, 0x0

    const-string v0, "setSubSelection"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mDisclosureArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mDisclosureArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setViewChecked(Landroid/view/ViewGroup;I)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "setViewChecked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mView:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->mView:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 54
    return-void
.end method
