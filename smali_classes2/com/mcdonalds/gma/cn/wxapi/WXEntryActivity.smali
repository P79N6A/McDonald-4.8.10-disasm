.class public Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static AUTHEN_RESP:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private resp:Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "Authen.Resp"

    sput-object v0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->AUTHEN_RESP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/ensighten/model/EnsightenGestureRecognizerFactory;->getFourFingerGestureRecognizer()Lcom/ensighten/model/EnsightenGestureRecognizer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ensighten/model/EnsightenGestureRecognizer;->process(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v1, "WXEntryActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "WXEntryActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f04002f

    invoke-virtual {p0, v1}, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->setContentView(I)V

    .line 38
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v1

    const v2, 0x7f090a8e

    .line 39
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/McDonaldsApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "weChatAppId":Ljava/lang/String;
    invoke-static {p0, v0, v4}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 42
    iget-object v1, p0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 50
    const-string v1, "onCreate"

    invoke-static {p0, v1}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "weChatAppId":Ljava/lang/String;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "WXEntryActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
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
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "onNewIntent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->mWeChatApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 59
    return-void
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

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 3
    .param p1, "baseReq"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    const-string v0, "onReq"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 3
    .param p1, "baseResp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    const-string v0, "onResp"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 79
    instance-of v0, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    if-eqz v0, :cond_0

    .line 81
    check-cast p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    .end local p1    # "baseResp":Lcom/tencent/mm/sdk/modelbase/BaseResp;
    iput-object p1, p0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->resp:Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    .line 83
    iget-object v0, p0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->resp:Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    iget v0, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->finish()V

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->finish()V

    .line 116
    return-void

    .line 87
    :pswitch_1
    sget-object v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mStateToken:Lcom/mcdonalds/sdk/AsyncToken;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->mStateToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/AsyncToken;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->resp:Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    iget-object v1, v1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->resp:Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    iget-object v2, v2, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->resp:Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    iget-object v0, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    sput-object v0, Lcom/mcdonalds/app/social/SocialLoginFragment;->code:Ljava/lang/String;

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p0}, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 106
    :pswitch_3
    invoke-virtual {p0}, Lcom/mcdonalds/gma/cn/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .locals 2

    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

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

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    return-void
.end method