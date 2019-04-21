.class public abstract Lcom/mcdonalds/app/ui/URLNavigationActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "URLNavigationActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/URLNavigationDrawerFragment$NavigationDrawerCallbacks;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;
    }
.end annotation


# static fields
.field public static final ARG_FRAGMENT:Ljava/lang/String; = "fragment"

.field public static final CONTROLLER_PASSER_KEY:Ljava/lang/String; = "CONTROLLER_PASSER_KEY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_PASSER_KEY:Ljava/lang/String; = "DATA_PASSER_KEY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLE_SECURE_WINDOW:Ljava/lang/String; = "interface.enableSecureWindow"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MODAL:Ljava/lang/String; = "modal"

.field public static final SHOW_ACTIVATION_DIALOG:Ljava/lang/String; = "SHOW_ACTIVATION_DIALOG"

.field public static final URI_SCHEME:Ljava/lang/String; = "mcdmobileapp://"


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private final mPermissionListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ui/URLNavigationActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity;->mPermissionListenerMap:Ljava/util/HashMap;

    return-void
.end method

.method private createStartActivityIntent(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 4
    .param p2, "fragmentName"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "createStartActivityIntent"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    if-eqz p3, :cond_0

    .line 341
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 344
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    const-string v1, "fragment"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    const-string v0, "attachBaseContext"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method public backToParent()V
    .locals 2

    .prologue
    const-string v0, "backToParent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->onBackPressed()V

    .line 418
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/ensighten/model/EnsightenGestureRecognizerFactory;->getFourFingerGestureRecognizer()Lcom/ensighten/model/EnsightenGestureRecognizer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ensighten/model/EnsightenGestureRecognizer;->process(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected abstract getContainerResource()I
.end method

.method protected abstract getContentViewResource()I
.end method

.method protected getDataLayerEvent()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getDataLayerEvent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    const-string v0, "PageViewed"

    return-object v0
.end method

.method protected getDataLayerPage()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v2, "getDataLayerPage"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerPageMapping;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "pageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Page name not set for this page. Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as a default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->reportWarning(Ljava/lang/String;)V

    .line 548
    move-object v1, v0

    .line 551
    :cond_0
    return-object v1
.end method

.method protected getDataLayerPageSection()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getDataLayerPageSection"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getDataLayerPage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    const-string v0, "getDisplayedFragment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getContainerResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "screen"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "getScreenFragment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    new-instance v0, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/ui/FragmentNotFoundFragment;-><init>()V

    return-object v0
.end method

.method public getVisibleDataLayerPage()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getVisibleDataLayerPage"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/mcdonalds/app/ui/URLNavigationFragment;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/URLNavigationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->getDataLayerPage()Ljava/lang/String;

    move-result-object v0

    .line 562
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getDataLayerPage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isPermissionGranted(Ljava/lang/String;)Z
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isPermissionGranted"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    const/4 v0, 0x1

    .line 569
    .local v0, "permissionGranted":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 570
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 573
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 570
    goto :goto_0
.end method

.method protected navigationItemClicked(Lcom/mcdonalds/app/ui/models/DrawerItem;)V
    .locals 3
    .param p1, "item"    # Lcom/mcdonalds/app/ui/models/DrawerItem;

    .prologue
    const-string v0, "navigationItemClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
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

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const-string v1, "onBackPressed"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v2, "/side-menu"

    .line 526
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "On click"

    .line 527
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "Cancel"

    .line 528
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 531
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 533
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const-string v2, "BackButtonPressed"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logButtonClick(Ljava/lang/String;)V

    .line 535
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 536
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const-string v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 139
    instance-of v1, p0, Lcom/mcdonalds/app/MainActivity;

    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcdonalds/app/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10018000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/16 v8, 0x2000

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "URLNavigationActivity"

    invoke-static {v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v4, "URLNavigationActivity#onCreate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "onCreate"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p0, v3, v4}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getContentViewResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setContentView(I)V

    .line 89
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 90
    invoke-static {p0}, Lcom/mcdonalds/sdk/McDonalds;->initialize(Landroid/content/Context;)V

    .line 95
    :goto_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 96
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->isLocaleChanged(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->setPreferredLanguage()V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->shouldNavigateUp()Z

    move-result v2

    .line 103
    .local v2, "showUp":Z
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 107
    .end local v2    # "showUp":Z
    :cond_1
    sget-object v3, Lcom/mcdonalds/app/ui/URLNavigationActivity;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Create: %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/SafeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.enableSecureWindow"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 113
    :cond_2
    const-string v3, "onCreate"

    invoke-static {p0, v3}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v1    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "URLNavigationActivity#onCreate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 92
    :cond_3
    invoke-static {p0}, Lcom/mcdonalds/sdk/services/RonaldService;->setCurrentActivity(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const-string v0, "onCreateDialog"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 161
    sget-object v0, Lcom/mcdonalds/app/ui/URLNavigationActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Destroy: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/SafeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public final onNavigationDrawerItemSelected(Lcom/mcdonalds/app/ui/models/DrawerItem;)V
    .locals 13
    .param p1, "drawerItem"    # Lcom/mcdonalds/app/ui/models/DrawerItem;

    .prologue
    const v12, 0x7f090182

    const v11, 0x7f090156

    const v10, 0x7f09011a

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v6, "onNavigationDrawerItemSelected"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 441
    .local v2, "extras":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 443
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/io/Serializable;>;"
    if-eqz v0, :cond_0

    .line 444
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 445
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 449
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "log.logsToConsole"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 450
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/services/log/MCDLog;->info(Ljava/lang/String;)V

    .line 453
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->navigationItemClicked(Lcom/mcdonalds/app/ui/models/DrawerItem;)V

    .line 454
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 455
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "start_order_delivery"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 458
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 459
    .local v1, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v6

    if-nez v6, :cond_3

    .line 460
    move-object v3, v2

    .line 461
    .local v3, "finalExtras":Landroid/os/Bundle;
    new-instance v5, Lcom/mcdonalds/app/ui/URLNavigationActivity$2;

    invoke-direct {v5, p0, v1, p1, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity$2;-><init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/app/ui/models/DrawerItem;Landroid/os/Bundle;)V

    .line 473
    .local v5, "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    .line 474
    invoke-virtual {v6, v11}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    .line 475
    invoke-virtual {p0, v12}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    .line 476
    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    .line 477
    invoke-virtual {v6, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    .line 478
    invoke-virtual {v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    .line 479
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 521
    .end local v1    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v3    # "finalExtras":Landroid/os/Bundle;
    .end local v5    # "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    :goto_1
    return-void

    .line 481
    .restart local v1    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_3
    invoke-virtual {v1, v8}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 482
    sget-object v6, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v1, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 483
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    const-string v7, "start_order_delivery"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setModuleName(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->openSelfUrl(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 486
    .end local v1    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_4
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "start_order"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 489
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    .line 490
    .restart local v1    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 491
    move-object v3, v2

    .line 492
    .restart local v3    # "finalExtras":Landroid/os/Bundle;
    new-instance v5, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;

    invoke-direct {v5, p0, v1, p1, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity$3;-><init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/app/ui/models/DrawerItem;Landroid/os/Bundle;)V

    .line 504
    .restart local v5    # "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    .line 505
    invoke-virtual {v6, v11}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    .line 506
    invoke-virtual {p0, v12}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    .line 507
    invoke-virtual {p0, v10}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    .line 508
    invoke-virtual {v6, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v6

    .line 509
    invoke-virtual {v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    .line 510
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_1

    .line 512
    .end local v3    # "finalExtras":Landroid/os/Bundle;
    .end local v5    # "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_5
    invoke-virtual {v1, v9}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 513
    sget-object v6, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v1, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 514
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v6

    const-string v7, "start_order"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setModuleName(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->openSelfUrl(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 519
    .end local v1    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_6
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->openSelfUrl(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const-string v1, "onOptionsItemSelected"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 406
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 413
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 409
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->backToParent()V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const-string v1, "onRequestPermissionsResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 650
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity;->mPermissionListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;

    .line 651
    .local v0, "listener":Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;
    if-eqz v0, :cond_0

    .line 652
    array-length v1, p2

    if-lez v1, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    .line 653
    aget-object v1, p2, v4

    aget v2, p3, v4

    invoke-interface {v0, p1, v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;->onRequestPermissionsResult(ILjava/lang/String;I)V

    .line 654
    iget-object v1, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity;->mPermissionListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "onRestart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const-string v3, "onResume"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 119
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Lcom/mcdonalds/app/ui/URLNavigationFragment;

    if-nez v3, :cond_2

    .line 120
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->isEnabled(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getDataLayerPageSection()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "pageSection":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 123
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setPageSection(Ljava/lang/String;)V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getDataLayerPage()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "pageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getDataLayerEvent()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "eventName":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 129
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logPageLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v0    # "eventName":Ljava/lang/String;
    .end local v1    # "pageName":Ljava/lang/String;
    .end local v2    # "pageSection":Ljava/lang/String;
    :cond_2
    const-string v3, "onResume"

    invoke-static {p0, v3}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public openSelfUrl(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "openSelfUrl"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    if-eqz p1, :cond_0

    const-string v1, "mcdmobileapp://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "That\'s not an internal uri"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_1
    const-string v1, "mcdmobileapp://start_order"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 359
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const-string v2, "start_order"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setModuleName(Ljava/lang/String;)V

    .line 365
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 367
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    if-eqz p2, :cond_3

    .line 370
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 374
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 375
    return-void

    .line 360
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v1, "mcdmobileapp://start_order_delivery"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 362
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    const-string v2, "start_order_delivery"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setModuleName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const-string v1, "passIntentExtrasAsArgument"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 385
    :goto_0
    return-object p1

    .line 381
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public requestPermission(Ljava/lang/String;IILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "rationaleTextResource"    # I
    .param p4, "listener"    # Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;

    .prologue
    const/4 v4, 0x0

    const-string v0, "requestPermission"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-interface {p4, p2, p1, v4}, Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;->onRequestPermissionsResult(ILjava/lang/String;I)V

    .line 635
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090627

    .line 586
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 587
    invoke-virtual {v0, p3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ui/URLNavigationActivity$4;

    invoke-direct {v2, p0, p1, p2, p4}, Lcom/mcdonalds/app/ui/URLNavigationActivity$4;-><init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Ljava/lang/String;ILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    .line 588
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 597
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 601
    :cond_1
    new-instance v0, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;

    invoke-direct {v0, p0, p4}, Lcom/mcdonalds/app/ui/URLNavigationActivity$5;-><init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->requestPermission(Ljava/lang/String;ILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    goto :goto_0
.end method

.method public requestPermission(Ljava/lang/String;ILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "listener"    # Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "requestPermission"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    if-eqz p3, :cond_0

    .line 639
    iget-object v0, p0, Lcom/mcdonalds/app/ui/URLNavigationActivity;->mPermissionListenerMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    invoke-static {p0, v0, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 644
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "setTitle"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 430
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 431
    const v1, 0x7f04001e

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 432
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/widget/AutoResizeTextView;

    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 434
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 435
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 437
    :cond_0
    return-void
.end method

.method public final setTitleView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "setTitleView"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 397
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 399
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 400
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 402
    :cond_0
    return-void
.end method

.method protected shouldAutoSetParentIntent()Z
    .locals 2

    .prologue
    const-string v0, "shouldAutoSetParentIntent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldNavigateUp()Z
    .locals 2

    .prologue
    const-string v0, "shouldNavigateUp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "showFragment"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getContainerResource()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 250
    return-void
.end method

.method public showFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    const-string v0, "showFragment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    return-void
.end method

.method public showFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "showFragment"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Cannot show an empty fragment name"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 259
    .local v2, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2, p1, v6}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 265
    invoke-virtual {v2, v8, v7}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 270
    .local v3, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getScreenFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 272
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v1, 0x0

    .line 273
    .local v1, "home":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 274
    invoke-virtual {v0, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 275
    const-string v4, "interface.home"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getContainerResource()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 281
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 282
    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 285
    :cond_4
    const-string v4, "dashboard"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 286
    invoke-virtual {v3, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 291
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 288
    :cond_5
    invoke-virtual {v3, v8}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method public showLabelInsteadOfNavigateUp(ZLjava/lang/String;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const-string v0, "showLabelInsteadOfNavigateUp"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showLabelInsteadOfNavigateUp(ZLjava/lang/String;I)V

    .line 202
    return-void
.end method

.method public showLabelInsteadOfNavigateUp(ZLjava/lang/String;I)V
    .locals 12
    .param p1, "show"    # Z
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "closeLabelId"    # I

    .prologue
    const v11, 0x7f110091

    const v10, 0x7f110090

    const v9, 0x7f04001c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "showLabelInsteadOfNavigateUp"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    aput-object p2, v4, v8

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 206
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 207
    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 209
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 211
    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 212
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 213
    .local v2, "titleView":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 215
    .local v1, "closeView":Landroid/widget/TextView;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 217
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 218
    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    .end local v1    # "closeView":Landroid/widget/TextView;
    .end local v2    # "titleView":Landroid/widget/TextView;
    .end local p3    # "closeLabelId":I
    :cond_0
    :goto_0
    return-void

    .line 221
    .restart local p3    # "closeLabelId":I
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 222
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 224
    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 225
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 227
    .restart local v1    # "closeView":Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    const/4 v3, -0x1

    if-eq p3, v3, :cond_2

    .end local p3    # "closeLabelId":I
    :goto_1
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 229
    new-instance v3, Lcom/mcdonalds/app/ui/URLNavigationActivity$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity$1;-><init>(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 237
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 238
    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    .restart local p3    # "closeLabelId":I
    :cond_2
    const p3, 0x7f090145

    goto :goto_1
.end method

.method public showNavigateUp(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const-string v1, "showNavigateUp"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 194
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    const-string v0, "startActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0, p1, v3, v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 300
    return-void
.end method

.method public startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "startActivity"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 308
    return-void
.end method

.method public startActivity(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p2, "fragmentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "startActivity"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 304
    return-void
.end method

.method public startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p2, "fragmentName"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "startActivity"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->createStartActivityIntent(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;I)V
    .locals 5
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const-string v0, "startActivityForResult"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p0, p1, v4, v4, p2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 318
    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 4
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "startActivityForResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 326
    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 4
    .param p2, "fragmentName"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "startActivityForResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 322
    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .param p2, "fragmentName"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "startActivityForResult"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->createStartActivityIntent(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p4}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    return-void
.end method
