.class public abstract Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;
.super Landroid/support/v4/app/Fragment;
.source "URLNavigationDrawerFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$NavigationDrawerCallbacks;
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private logInStateRequiredItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ui/models/DrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$NavigationDrawerCallbacks;

.field private mCurrentSelectedPosition:I

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerListView:Landroid/widget/ListView;

.field private mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private mFragmentContainerView:Landroid/view/View;

.field private mFromSavedInstanceState:Z

.field private mTvChina:Landroid/widget/TextView;

.field private mTvEng:Landroid/widget/TextView;

.field private mWelcomeMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.URLNavigationDrawerFragment"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.URLNavigationDrawerFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvChina:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;Landroid/widget/TextView;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.URLNavigationDrawerFragment"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->setTextLine(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.URLNavigationDrawerFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvEng:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;Landroid/widget/TextView;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.URLNavigationDrawerFragment"

    const-string v2, "access$400"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->setTextNoLine(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.URLNavigationDrawerFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->restart()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)Landroid/support/v4/app/ActionBarDrawerToggle;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.URLNavigationDrawerFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    return-object v0
.end method

.method private restart()V
    .locals 8

    .prologue
    const-string v0, "restart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "prefSavedLogin":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLoginPass()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "prefSavedLoginPass":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedSocialNetworkId()I

    move-result v5

    .line 253
    .local v5, "prefSavedSocialID":I
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getTutorialLastShownVersionName()Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "tutorialLastShownVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v7, 0x7f0907d4

    invoke-virtual {v1, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 257
    .local v2, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$7;-><init>(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->logout(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 296
    return-void
.end method

.method private setTextLine(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "textLine"    # Landroid/widget/TextView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "setTextLine"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 234
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 235
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 236
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    return-void
.end method

.method private setTextNoLine(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "textLine"    # Landroid/widget/TextView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "setTextNoLine"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 243
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 244
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 245
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    return-void
.end method

.method private showDialog(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "showDialog"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$6;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$6;-><init>(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)V

    .line 193
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09043a

    new-instance v2, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$5;-><init>(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;I)V

    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090439

    new-instance v2, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$4;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$4;-><init>(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)V

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09043b

    .line 225
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09043c

    .line 226
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 229
    return-void
.end method

.method private showGlobalContextActionBar()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "showGlobalContextActionBar"

    invoke-static {p0, v1, v0}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 414
    .local v0, "actionBar":Landroid/app/ActionBar;
    :cond_0
    if-eqz v0, :cond_1

    .line 415
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 417
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract getActionBarDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;
.end method

.method protected abstract getConfigurationChina()I
.end method

.method protected abstract getConfigurationENG()I
.end method

.method public getCurrentSelectedPosition()I
    .locals 2

    .prologue
    const-string v0, "getCurrentSelectedPosition"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    iget v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mCurrentSelectedPosition:I

    return v0
.end method

.method protected abstract getDrawerItemLayoutResource()I
.end method

.method public final getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;
    .locals 2

    .prologue
    const-string v0, "getDrawerLayout"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method public abstract getDrawerListAdapter()Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/mcdonalds/app/ui/models/DrawerItem;",
            ">;"
        }
    .end annotation
.end method

.method public final getDrawerListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    const-string v0, "getDrawerListView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected abstract getDrawerListViewResource()I
.end method

.method public getLogInStateRequiredItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ui/models/DrawerItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getLogInStateRequiredItems"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->logInStateRequiredItems:Ljava/util/List;

    return-object v0
.end method

.method protected abstract getMenuResource()I
.end method

.method protected abstract getRootLayoutResource()I
.end method

.method protected abstract getWelcomeMessageResource()I
.end method

.method public isDrawerOpen()Z
    .locals 2

    .prologue
    const-string v0, "isDrawerOpen"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isUserLearnedDrawer()Z
    .locals 3

    .prologue
    const-string v0, "isUserLearnedDrawer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "navigation_drawer_learned"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onActivityCreated"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 387
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->setHasOptionsMenu(Z)V

    .line 389
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "onActivityResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-string v1, "onAttach"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 302
    :try_start_0
    check-cast p1, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$NavigationDrawerCallbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mCallbacks:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$NavigationDrawerCallbacks;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Activity must implement NavigationDrawerCallbacks."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v0, "URLNavigationDrawerFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "URLNavigationDrawerFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "onCreate"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const-string v0, "selected_navigation_drawer_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 133
    iput-boolean v3, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mFromSavedInstanceState:Z

    .line 135
    :cond_0
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "URLNavigationDrawerFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const-string v0, "onCreateOptionsMenu"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getMenuResource()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 403
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->showGlobalContextActionBar()V

    .line 405
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 406
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v3, "URLNavigationDrawerFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "onCreateView"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getRootLayoutResource()I

    move-result v2

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getDrawerListViewResource()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    .line 143
    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    new-instance v3, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$1;-><init>(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getWelcomeMessageResource()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mWelcomeMessage:Landroid/widget/TextView;

    .line 151
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getConfigurationChina()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvChina:Landroid/widget/TextView;

    .line 152
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getConfigurationENG()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvEng:Landroid/widget/TextView;

    .line 153
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "savedLanguage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvChina:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->setTextLine(Landroid/widget/TextView;)V

    .line 157
    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvEng:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->setTextNoLine(Landroid/widget/TextView;)V

    .line 167
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvChina:Landroid/widget/TextView;

    new-instance v3, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$2;-><init>(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvEng:Landroid/widget/TextView;

    new-instance v3, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$3;-><init>(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->logInStateRequiredItems:Ljava/util/List;

    .line 184
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getDrawerListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getDrawerListAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getDrawerListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getCurrentSelectedPosition()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 187
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "rootView":Landroid/view/View;
    .end local v1    # "savedLanguage":Ljava/lang/String;
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "URLNavigationDrawerFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 158
    .restart local v0    # "rootView":Landroid/view/View;
    .restart local v1    # "savedLanguage":Ljava/lang/String;
    :cond_1
    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvEng:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->setTextLine(Landroid/widget/TextView;)V

    .line 160
    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvChina:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->setTextNoLine(Landroid/widget/TextView;)V

    goto :goto_1

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvEng:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->setTextLine(Landroid/widget/TextView;)V

    .line 163
    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mTvChina:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->setTextNoLine(Landroid/widget/TextView;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "onDestroyView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "onDetach"

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 311
    iput-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mCallbacks:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$NavigationDrawerCallbacks;

    .line 312
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 394
    const-string v0, "selected_navigation_drawer_position"

    iget v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mCurrentSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onViewStateRestored"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const-string v0, "onViewStateRestored"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public selectItem(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "selectItem"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getDrawerListAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/models/DrawerItem;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/models/DrawerItem;->isHeading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iput p1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 360
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mCallbacks:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$NavigationDrawerCallbacks;

    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mCallbacks:Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$NavigationDrawerCallbacks;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getDrawerListAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/models/DrawerItem;

    invoke-interface {v1, v0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$NavigationDrawerCallbacks;->onNavigationDrawerItemSelected(Lcom/mcdonalds/app/ui/models/DrawerItem;)V

    goto :goto_0
.end method

.method public setUp(ILandroid/support/v4/widget/DrawerLayout;)V
    .locals 4
    .param p1, "fragmentId"    # I
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    const-string v0, "setUp"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    .line 323
    iput-object p2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 326
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->styleDrawerLayout(Landroid/support/v4/widget/DrawerLayout;)V

    .line 332
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getActionBarDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 341
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$8;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$8;-><init>(Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 347
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 348
    return-void
.end method

.method public final setUserLearnedDrawer(Z)V
    .locals 4
    .param p1, "userLearnedDrawer"    # Z

    .prologue
    const-string v0, "setUserLearnedDrawer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "navigation_drawer_learned"

    invoke-virtual {v0, v1, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Z)V

    .line 481
    return-void
.end method

.method protected setWelcomeMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const-string v0, "setWelcomeMessage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mWelcomeMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    return-void
.end method

.method protected setWelcomeMessageVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const-string v0, "setWelcomeMessageVisibility"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mWelcomeMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    return-void
.end method

.method protected abstract styleDrawerLayout(Landroid/support/v4/widget/DrawerLayout;)V
.end method

.method public toggleDrawerState()V
    .locals 4

    .prologue
    const-string v1, "toggleDrawerState"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 381
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 376
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 377
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 379
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const-string v2, "SideMenu"

    const-string v3, "PageViewed"

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logPageLoad(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
