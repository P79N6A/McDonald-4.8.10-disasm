.class public Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;
.super Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;
.source "NutritionInformationOldUIFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected fillRecipeLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "ingredients"    # Ljava/lang/String;
    .param p3, "allergen"    # Ljava/lang/String;
    .param p4, "additionalAllergen"    # Ljava/lang/String;

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

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 52
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040166

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 54
    .local v3, "componentDetailView":Landroid/view/View;
    const v8, 0x7f11042b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 55
    .local v4, "componentNameView":Landroid/widget/TextView;
    const v8, 0x7f11042c

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    .local v2, "componentDescriptionView":Landroid/widget/TextView;
    const v8, 0x7f1104b4

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, "componentAllergenView":Landroid/widget/TextView;
    const v8, 0x7f1104b5

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, "componentAdditionalAllergenView":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 60
    const v8, 0x7f11042b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const v8, 0x7f110121

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 62
    const v8, 0x7f1104b3

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 69
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 79
    const v8, 0x7f09074f

    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "format":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .end local v5    # "format":Ljava/lang/String;
    :goto_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 86
    const v8, 0x7f09074d

    invoke-virtual {p0, v8}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    .restart local v5    # "format":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p4, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .end local v5    # "format":Ljava/lang/String;
    :goto_3
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 93
    .local v7, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mRecipeComponentsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void

    .line 65
    .end local v7    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    const v8, 0x7f110121

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const v8, 0x7f1104b3

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 82
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 89
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 30
    const v1, 0x7f0400e8

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f110324

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    const v1, 0x7f110327

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mNutritionDetailsHighlightLayout:Landroid/widget/LinearLayout;

    .line 34
    const v1, 0x7f110328

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mNutritionDetailsLayout:Landroid/widget/LinearLayout;

    .line 35
    const v1, 0x7f11032a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mRecipeComponentsLayout:Landroid/widget/LinearLayout;

    .line 36
    const v1, 0x7f11032b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mImportantNotesLayout:Landroid/widget/LinearLayout;

    .line 38
    const v1, 0x7f110063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mItemImage:Landroid/widget/ImageView;

    .line 39
    const v1, 0x7f11032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mDescription:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_0
    return-object v0
.end method

.method protected populateNutritionDetails()V
    .locals 22

    .prologue
    const-string v17, "populateNutritionDetails"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    if-nez v17, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {}, Ljava/text/DecimalFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v4

    .line 105
    .local v4, "format":Ljava/text/NumberFormat;
    sget-object v17, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 106
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 107
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 111
    .local v8, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHighlightedNutrients()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHighlightedNutrients()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 114
    .local v10, "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    const v18, 0x7f040157

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 115
    .local v11, "nutritionDetailHighlightItem":Landroid/view/View;
    const v18, 0x7f110489

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 116
    .local v7, "highlightValue":Landroid/widget/TextView;
    const v18, 0x7f11048a

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 117
    .local v6, "highlightPercentageView":Landroid/widget/TextView;
    const v18, 0x7f11048b

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 119
    .local v5, "highlightName":Landroid/widget/TextView;
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_2

    const-string v15, ""

    .line 123
    .local v15, "unit":Ljava/lang/String;
    :goto_2
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getAdultDailyValue()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_3

    const-string v3, ""

    .line 127
    .local v3, "dailyValue":Ljava/lang/String;
    :goto_3
    const-string v18, "%s%s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v15, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 130
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_4
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v9, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 139
    .local v9, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mNutritionDetailsHighlightLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 121
    .end local v3    # "dailyValue":Ljava/lang/String;
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "unit":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 123
    .restart local v15    # "unit":Ljava/lang/String;
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getAdultDailyValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 132
    .restart local v3    # "dailyValue":Ljava/lang/String;
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 133
    .local v16, "value":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 143
    .end local v3    # "dailyValue":Ljava/lang/String;
    .end local v5    # "highlightName":Landroid/widget/TextView;
    .end local v6    # "highlightPercentageView":Landroid/widget/TextView;
    .end local v7    # "highlightValue":Landroid/widget/TextView;
    .end local v10    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .end local v11    # "nutritionDetailHighlightItem":Landroid/view/View;
    .end local v15    # "unit":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getStandardNutrients()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_c

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getStandardNutrients()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 146
    .restart local v10    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    const v18, 0x7f04015d

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 147
    .local v12, "nutritionDetailItem":Landroid/view/View;
    const v18, 0x7f110497

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 148
    .local v13, "nutritionalInfoNameView":Landroid/widget/TextView;
    const v18, 0x7f110498

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 150
    .local v14, "nutritionalInfoValueView":Landroid/widget/TextView;
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_8

    .line 151
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_7

    .line 152
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :goto_6
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getAdultDailyValue()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_b

    const-string v3, ""

    .line 177
    .restart local v3    # "dailyValue":Ljava/lang/String;
    :goto_7
    invoke-virtual {v14}, Landroid/widget/TextView;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 178
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 180
    .restart local v16    # "value":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .end local v16    # "value":Ljava/lang/String;
    :cond_6
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v9, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 184
    .restart local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mNutritionDetailsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 155
    .end local v3    # "dailyValue":Ljava/lang/String;
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 159
    :cond_8
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_9

    .line 160
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 163
    :cond_9
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_a

    .line 165
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 168
    :cond_a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 173
    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getAdultDailyValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 188
    .end local v10    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .end local v12    # "nutritionDetailItem":Landroid/view/View;
    .end local v13    # "nutritionalInfoNameView":Landroid/widget/TextView;
    .end local v14    # "nutritionalInfoValueView":Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHeroImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHeroImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mItemImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v18, v0

    .line 192
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHeroImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v17

    sget-object v18, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 193
    invoke-virtual/range {v17 .. v18}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mItemImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .line 194
    invoke-virtual/range {v17 .. v18}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_0

    .line 196
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getImageUrl()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mItemImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-object/from16 v18, v0

    .line 200
    invoke-virtual/range {v18 .. v18}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getImageUrl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v17

    sget-object v18, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 201
    invoke-virtual/range {v17 .. v18}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mItemImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    .line 202
    invoke-virtual/range {v17 .. v18}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_0

    .line 205
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;->mItemImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
