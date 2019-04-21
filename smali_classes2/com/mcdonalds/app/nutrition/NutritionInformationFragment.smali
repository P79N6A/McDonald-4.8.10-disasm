.class public Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "NutritionInformationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected components_list_layout_new_ui_Layout:Landroid/widget/LinearLayout;

.field protected ingredients_header_arrow_new_ui:Landroid/widget/ImageView;

.field protected isInfridientsCollapsed:Z

.field protected isNutritionCollapsed:Z

.field protected ll_ingredients_information_header_new_ui:Landroid/widget/LinearLayout;

.field protected ll_nutrition_information_header_new_ui:Landroid/widget/LinearLayout;

.field protected mAnalyticsTitle:Ljava/lang/String;

.field protected mCategoryName:Ljava/lang/String;

.field protected mDescription:Landroid/widget/TextView;

.field protected mImportantNotesLayout:Landroid/widget/LinearLayout;

.field protected mItemImage:Landroid/widget/ImageView;

.field protected mNutritionDetailsHighlightLayout:Landroid/widget/LinearLayout;

.field protected mNutritionDetailsLayout:Landroid/widget/LinearLayout;

.field private mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

.field protected mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

.field protected mRecipeComponentsLayout:Landroid/widget/LinearLayout;

.field protected mRecipeId:Ljava/lang/String;

.field protected mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

.field protected nutrition_information_header_arrow_new_ui:Landroid/widget/ImageView;

.field protected nutrition_information_layout_new_ui_Layout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method protected fillImportantNoteLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "ingredients"    # Ljava/lang/String;
    .param p3, "allergen"    # Ljava/lang/String;

    .prologue
    const-string v7, "fillImportantNoteLayout"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 201
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040166

    iget-object v8, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mImportantNotesLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 203
    .local v2, "componentDetailView":Landroid/view/View;
    const v7, 0x7f11042b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 204
    .local v3, "componentNameView":Landroid/widget/TextView;
    const v7, 0x7f11042c

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 205
    .local v1, "componentDescriptionView":Landroid/widget/TextView;
    const v7, 0x7f1104b4

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    .local v0, "componentAllergenView":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 208
    const v7, 0x7f11042b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 209
    const v7, 0x7f110121

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 210
    const v7, 0x7f1104b3

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 216
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 224
    const v7, 0x7f09074f

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "format":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .end local v4    # "format":Ljava/lang/String;
    :goto_2
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 231
    .local v6, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mImportantNotesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    return-void

    .line 212
    .end local v6    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    const v7, 0x7f110121

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 220
    const v7, 0x7f1104b3

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 227
    :cond_2
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected fillRecipeLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "ingredients"    # Ljava/lang/String;
    .param p3, "allergen"    # Ljava/lang/String;
    .param p4, "additionalAllergen"    # Ljava/lang/String;

    .prologue
    const-string v0, "fillRecipeLayout"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mAnalyticsTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090881

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataLayerEvent()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getDataLayerEvent"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-object v1
.end method

.method protected getDataLayerPageSection()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getDataLayerPageSection"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return-object v1
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "getTitle"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getTitleFromProductInfo()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "title":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 89
    const v1, 0x7f0907aa

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    return-object v0
.end method

.method protected getTitleFromProductInfo()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "getTitleFromProductInfo"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getMarketingName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getMarketingName()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f020063

    const v5, 0x7f020062

    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onClick"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 276
    :goto_0
    return-void

    .line 253
    :sswitch_0
    iget-boolean v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->isNutritionCollapsed:Z

    if-nez v2, :cond_0

    :goto_1
    iput-boolean v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->isNutritionCollapsed:Z

    .line 254
    iget-boolean v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->isNutritionCollapsed:Z

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->nutrition_information_header_arrow_new_ui:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->nutrition_information_layout_new_ui_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 253
    goto :goto_1

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->nutrition_information_header_arrow_new_ui:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->nutrition_information_layout_new_ui_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 263
    :sswitch_1
    iget-boolean v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->isInfridientsCollapsed:Z

    if-nez v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->isInfridientsCollapsed:Z

    .line 264
    iget-boolean v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->isInfridientsCollapsed:Z

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->ingredients_header_arrow_new_ui:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->components_list_layout_new_ui_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mImportantNotesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 263
    goto :goto_2

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->ingredients_header_arrow_new_ui:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->components_list_layout_new_ui_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mImportantNotesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x7f11032e -> :sswitch_0
        0x7f110335 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "recipe_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mRecipeId:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mCategoryName:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_ANALYTICS_TAG"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 131
    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    .line 132
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->refresh()V

    .line 133
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 81
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 82
    return-void
.end method

.method protected populateNutritionDetails()V
    .locals 2

    .prologue
    const-string v0, "populateNutritionDetails"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method protected populateRecipeComponents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "recipeComponentsString"    # Ljava/lang/String;
    .param p2, "allergens"    # Ljava/lang/String;
    .param p3, "additionalAllergen"    # Ljava/lang/String;

    .prologue
    const-string v0, "populateRecipeComponents"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->fillRecipeLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected populateRecipeComponents(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/RecipeComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "recipeComponents":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/RecipeComponent;>;"
    const-string v1, "populateRecipeComponents"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 243
    :cond_0
    return-void

    .line 240
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;

    .line 241
    .local v0, "recipeComponent":Lcom/mcdonalds/sdk/modules/models/RecipeComponent;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getIngredientStatement()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductAllergen()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductAdditionalAllergen()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->fillRecipeLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected refresh()V
    .locals 3

    .prologue
    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mRecipeId:Ljava/lang/String;

    new-instance v2, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;-><init>(Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getRecipeForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 183
    return-void
.end method
