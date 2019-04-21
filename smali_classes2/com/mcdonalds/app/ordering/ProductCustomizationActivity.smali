.class public Lcom/mcdonalds/app/ordering/ProductCustomizationActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "ProductCustomizationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 7
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "attachBaseContext"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 40
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/McDonaldsApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 41
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/mcdonalds/app/util/LanguageUtil;->getAppLanguage()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "language":Ljava/lang/String;
    new-instance v2, Ljava/util/Locale;

    const-string v3, "HK"

    invoke-direct {v2, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 44
    new-instance v3, Landroid/os/LocaleList;

    new-array v4, v6, [Ljava/util/Locale;

    aput-object v2, v4, v5

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 49
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v1, 0x7f0907b5

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/ProductCustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/ProductCustomizationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 30
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/ProductCustomizationActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/customization/ProductCustomizationFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/ProductCustomizationActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 34
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 35
    return-void
.end method
