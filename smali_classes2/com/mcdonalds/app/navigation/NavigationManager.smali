.class public Lcom/mcdonalds/app/navigation/NavigationManager;
.super Ljava/lang/Object;
.source "NavigationManager.java"


# static fields
.field private static sInstance:Lcom/mcdonalds/app/navigation/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mcdonalds/app/navigation/NavigationManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.navigation.NavigationManager"

    const-string v1, "getInstance"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/mcdonalds/app/navigation/NavigationManager;->sInstance:Lcom/mcdonalds/app/navigation/NavigationManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/mcdonalds/app/navigation/NavigationManager;

    invoke-direct {v0}, Lcom/mcdonalds/app/navigation/NavigationManager;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/navigation/NavigationManager;->sInstance:Lcom/mcdonalds/app/navigation/NavigationManager;

    .line 38
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/navigation/NavigationManager;->sInstance:Lcom/mcdonalds/app/navigation/NavigationManager;

    return-object v0
.end method


# virtual methods
.method public showNutrition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recipeId"    # Ljava/lang/String;
    .param p3, "categoryName"    # Ljava/lang/String;
    .param p4, "analyticsTag"    # Ljava/lang/String;
    .param p5, "navigationActivity"    # Landroid/app/Activity;

    .prologue
    const-string v3, "showNutrition"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-static {p5}, Lcom/mcdonalds/sdk/connectors/utils/Utils;->checkConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "recipe_id"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz p3, :cond_2

    .line 52
    const-string v3, "category_name"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_2
    if-eqz p4, :cond_3

    .line 55
    const-string v3, "ARG_ANALYTICS_TAG"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.nutritionalInfo.tabbedNutritionalInfo"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 60
    const-class v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationActivity;

    .line 65
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    const-class v0, Lcom/mcdonalds/app/nutrition/NutritionInformationActivity;

    .restart local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    goto :goto_1

    .line 70
    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_5
    invoke-static {p5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f090180

    .line 71
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    const v4, 0x7f0905d4

    new-instance v5, Lcom/mcdonalds/app/navigation/NavigationManager$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/navigation/NavigationManager$1;-><init>(Lcom/mcdonalds/app/navigation/NavigationManager;)V

    .line 72
    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showOffer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "offerId"    # Ljava/lang/String;

    .prologue
    const-string v2, "showOffer"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "extra_offer"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/app/offers/OfferActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
