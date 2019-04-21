.class public Lcom/mcdonalds/app/nutrition/NutritionInformationActivity;
.super Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;
.source "NutritionInformationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;-><init>()V

    return-void
.end method

.method private getFragmentToDisplay()Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    const-string v1, "getFragmentToDisplay"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.nutritionalInfo.useDigitalToolkitUI"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 41
    .local v0, "isNewPDP":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;

    invoke-direct {v1}, Lcom/mcdonalds/app/nutrition/NutritionInformationToolkitUIFragment;-><init>()V

    .line 45
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;

    invoke-direct {v1}, Lcom/mcdonalds/app/nutrition/NutritionInformationOldUIFragment;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method protected getContainerResource()I
    .locals 2

    .prologue
    const-string v0, "getContainerResource"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    const v0, 0x7f1100bd

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 33
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationActivity;->getContainerResource()I

    move-result v1

    invoke-direct {p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationActivity;->getFragmentToDisplay()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 35
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    return-void
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    const/4 v0, 0x1

    return v0
.end method
