.class public Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;
.super Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;
.source "NutritionInformationToolkitUIFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private iv_ingredients_information:Landroid/widget/ImageView;

.field mNutrientComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;-><init>()V

    .line 264
    new-instance v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment$1;-><init>(Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mNutrientComparator:Ljava/util/Comparator;

    return-void
.end method

.method private openLink(Ljava/lang/String;)V
    .locals 4
    .param p1, "mLink"    # Ljava/lang/String;

    .prologue
    const-string v1, "openLink"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, "mArgs":Landroid/os/Bundle;
    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-class v1, Lcom/mcdonalds/app/web/WebActivity;

    const-string v2, "web"

    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 292
    return-void
.end method


# virtual methods
.method protected fillRecipeLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "ingredients"    # Ljava/lang/String;
    .param p3, "allergen"    # Ljava/lang/String;
    .param p4, "additionAllergen"    # Ljava/lang/String;

    .prologue
    const-string v8, "fillRecipeLayout"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    const/4 v10, 0x3

    aput-object p4, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 91
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040166

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 93
    .local v3, "componentDetailView":Landroid/view/View;
    const v8, 0x7f11042b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 94
    .local v4, "componentNameView":Landroid/widget/TextView;
    const v8, 0x7f11042c

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, "componentDescriptionView":Landroid/widget/TextView;
    const v8, 0x7f1104b4

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, "componentAllergenView":Landroid/widget/TextView;
    const v8, 0x7f1104b5

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    .local v0, "componentAdditionalAllergenView":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 99
    const v8, 0x7f11042b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 100
    const v8, 0x7f110121

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 101
    const v8, 0x7f1104b3

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 108
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 118
    const v8, 0x7f09074f

    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "format":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .end local v5    # "format":Ljava/lang/String;
    :goto_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 125
    const v8, 0x7f09074d

    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 126
    .restart local v5    # "format":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p4, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .end local v5    # "format":Ljava/lang/String;
    :goto_3
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 132
    .local v7, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mRecipeComponentsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    return-void

    .line 104
    .end local v7    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    const v8, 0x7f110121

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 114
    const v8, 0x7f1104b3

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 121
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 128
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

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

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 282
    invoke-super {p0, p1}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->onClick(Landroid/view/View;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 276
    :sswitch_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.legalCopy.legalDisclaimer"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    .local v0, "urlDisclaimer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->openLink(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f11032f -> :sswitch_0
        0x7f110336 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f110339

    const v4, 0x7f020063

    const v3, 0x7f020062

    const/4 v2, 0x0

    .line 37
    const v1, 0x7f0400e9

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f11032d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    const v1, 0x7f11032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->ll_nutrition_information_header_new_ui:Landroid/widget/LinearLayout;

    .line 42
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->ll_nutrition_information_header_new_ui:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v1, 0x7f110335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->ll_ingredients_information_header_new_ui:Landroid/widget/LinearLayout;

    .line 45
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->ll_ingredients_information_header_new_ui:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iput-boolean v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->isNutritionCollapsed:Z

    .line 48
    iput-boolean v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->isInfridientsCollapsed:Z

    .line 50
    const v1, 0x7f110338

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->ingredients_header_arrow_new_ui:Landroid/widget/ImageView;

    .line 51
    iget-boolean v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->isInfridientsCollapsed:Z

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->ingredients_header_arrow_new_ui:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    :goto_0
    const v1, 0x7f110331

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->nutrition_information_header_arrow_new_ui:Landroid/widget/ImageView;

    .line 58
    iget-boolean v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->isNutritionCollapsed:Z

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->nutrition_information_header_arrow_new_ui:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    :goto_1
    const v1, 0x7f110336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->iv_ingredients_information:Landroid/widget/ImageView;

    .line 65
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->iv_ingredients_information:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f11032f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->iv_ingredients_information:Landroid/widget/ImageView;

    .line 67
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->iv_ingredients_information:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f110332

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->nutrition_information_layout_new_ui_Layout:Landroid/widget/LinearLayout;

    .line 70
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->components_list_layout_new_ui_Layout:Landroid/widget/LinearLayout;

    .line 72
    const v1, 0x7f110334

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mNutritionDetailsHighlightLayout:Landroid/widget/LinearLayout;

    .line 73
    const v1, 0x7f110333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mNutritionDetailsLayout:Landroid/widget/LinearLayout;

    .line 74
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mRecipeComponentsLayout:Landroid/widget/LinearLayout;

    .line 75
    const v1, 0x7f11033a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mImportantNotesLayout:Landroid/widget/LinearLayout;

    .line 77
    const v1, 0x7f110063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mItemImage:Landroid/widget/ImageView;

    .line 78
    const v1, 0x7f11032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mDescription:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_0
    return-object v0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->ingredients_header_arrow_new_ui:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->nutrition_information_header_arrow_new_ui:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method protected populateNutritionDetails()V
    .locals 25

    .prologue
    const-string v20, "populateNutritionDetails"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    if-nez v20, :cond_0

    .line 262
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Ljava/text/DecimalFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v4

    .line 143
    .local v4, "format":Ljava/text/NumberFormat;
    sget-object v20, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 144
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 145
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    const-string v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 148
    .local v9, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mDescription:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getDescription()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mDescription:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getDescription()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getStandardNutrients()Ljava/util/List;

    move-result-object v17

    .line 154
    .local v17, "standardNutrients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    if-eqz v17, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mNutrientComparator:Ljava/util/Comparator;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 159
    .local v11, "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    const/4 v12, 0x0

    .line 160
    .local v12, "nutritionDetailHighlightItem":Landroid/view/View;
    const v21, 0x7f040158

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 162
    const v21, 0x7f110489

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 163
    .local v7, "highlightValue":Landroid/widget/TextView;
    const v21, 0x7f11048a

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 164
    .local v6, "highlightPercentageView":Landroid/widget/TextView;
    const v21, 0x7f11048b

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 166
    .local v5, "highlightName":Landroid/widget/TextView;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_2

    const-string v18, ""

    .line 170
    .local v18, "unit":Ljava/lang/String;
    :goto_2
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getAdultDailyValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_3

    const-string v3, ""

    .line 174
    .local v3, "dailyValue":Ljava/lang/String;
    :goto_3
    const-string v21, "%s%s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v18, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 177
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :goto_4
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 186
    .local v10, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mNutritionDetailsHighlightLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 168
    .end local v3    # "dailyValue":Ljava/lang/String;
    .end local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "unit":Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 170
    .restart local v18    # "unit":Ljava/lang/String;
    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getAdultDailyValue()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 179
    .restart local v3    # "dailyValue":Ljava/lang/String;
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 180
    .local v19, "value":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 190
    .end local v3    # "dailyValue":Ljava/lang/String;
    .end local v5    # "highlightName":Landroid/widget/TextView;
    .end local v6    # "highlightPercentageView":Landroid/widget/TextView;
    .end local v7    # "highlightValue":Landroid/widget/TextView;
    .end local v11    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .end local v12    # "nutritionDetailHighlightItem":Landroid/view/View;
    .end local v18    # "unit":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHighlightedNutrients()Ljava/util/List;

    move-result-object v8

    .line 191
    .local v8, "highlightedNutrients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    if-eqz v8, :cond_d

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mNutrientComparator:Ljava/util/Comparator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 195
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 196
    .restart local v11    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    const/4 v13, 0x0

    .line 197
    .local v13, "nutritionDetailItem":Landroid/view/View;
    const v21, 0x7f04015e

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 198
    const v21, 0x7f110497

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 199
    .local v14, "nutritionalInfoNameView":Landroid/widget/TextView;
    const v21, 0x7f110498

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 201
    .local v15, "nutritionalInfoValueView":Landroid/widget/TextView;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_8

    .line 202
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_7

    .line 203
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    :goto_6
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getAdultDailyValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_c

    const-string v3, ""

    .line 232
    .restart local v3    # "dailyValue":Ljava/lang/String;
    :goto_7
    const v21, 0x7f110499

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 234
    .local v16, "nutritional_information_dailyValueView":Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 235
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 236
    .restart local v19    # "value":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .end local v19    # "value":Ljava/lang/String;
    :cond_6
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 240
    .restart local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mNutritionDetailsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 206
    .end local v3    # "dailyValue":Ljava/lang/String;
    .end local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "nutritional_information_dailyValueView":Landroid/widget/TextView;
    :cond_7
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 210
    :cond_8
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_9

    .line 211
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 214
    :cond_9
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Total Fat"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 215
    const-string v21, "Fat"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_8
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_b

    .line 220
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 217
    :cond_a
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 223
    :cond_b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 228
    :cond_c
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getAdultDailyValue()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 244
    .end local v11    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .end local v13    # "nutritionDetailItem":Landroid/view/View;
    .end local v14    # "nutritionalInfoNameView":Landroid/widget/TextView;
    .end local v15    # "nutritionalInfoValueView":Landroid/widget/TextView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHeroImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v20

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHeroImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mItemImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v21, v0

    .line 248
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHeroImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v20

    sget-object v21, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 249
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mItemImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    .line 250
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_0

    .line 252
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getImageUrl()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mItemImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v21, v0

    .line 256
    invoke-virtual/range {v21 .. v21}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getImageUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v20

    sget-object v21, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 257
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mItemImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    .line 258
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_0

    .line 260
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;->mItemImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
