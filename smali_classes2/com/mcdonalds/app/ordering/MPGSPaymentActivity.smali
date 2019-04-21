.class public Lcom/mcdonalds/app/ordering/MPGSPaymentActivity;
.super Lcom/mcdonalds/app/ui/URLActionBarActivity;
.source "MPGSPaymentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v1, 0x7f090075

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/MPGSPaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/MPGSPaymentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 22
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/MPGSPaymentActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 25
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 26
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->onResume()V

    .line 31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 32
    invoke-static {}, Lcom/mcdonalds/app/util/LanguageUtil;->getAppLanguage()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "savedLanguage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/MPGSPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mcdonalds/app/util/LanguageUtil;->changeAppLanguage(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 35
    .end local v0    # "savedLanguage":Ljava/lang/String;
    :cond_0
    return-void
.end method
