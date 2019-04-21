.class public Lhk/com/aisoft/easyaddrui/ResponseTrigger;
.super Ljava/lang/Object;
.source "ResponseTrigger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static btnGPSPressAction()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 223
    const-string v1, "Action"

    const-string v2, "Start GPS"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sput-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    .line 225
    sput-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

    .line 226
    sput v6, Lhk/com/aisoft/easyaddrui/eaView;->sEATimeoutCnt:I

    .line 228
    sput-boolean v6, Lhk/com/aisoft/easyaddrui/eaView;->sReqBack:Z

    .line 229
    new-instance v0, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;

    sget-wide v2, Lhk/com/aisoft/easyaddrui/eaView;->sGPSX:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    sget-wide v2, Lhk/com/aisoft/easyaddrui/eaView;->sGPSY:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .local v0, "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/String;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget v4, Lhk/com/aisoft/easyaddrui/R$string;->uat_gps_search:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DOMAIN]"

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v2}, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 235
    .end local v0    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    :goto_0
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutGPSRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutGPSRun:Ljava/lang/Runnable;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sEAChkResult:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    return-void

    .line 231
    .restart local v0    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 233
    .restart local v0    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    :cond_1
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/String;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget v4, Lhk/com/aisoft/easyaddrui/R$string;->url_gps_search:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DOMAIN]"

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_2

    invoke-virtual {v0, v1, v2}, Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadGPSSearch;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected static btnSearchPressAction()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 241
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 242
    const-string v1, "Action"

    const-string v2, "Start Search Keyword"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sput-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    .line 244
    sput v6, Lhk/com/aisoft/easyaddrui/eaView;->sEATimeoutCnt:I

    .line 245
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 248
    sput-boolean v6, Lhk/com/aisoft/easyaddrui/eaView;->sReqBack:Z

    .line 249
    new-instance v0, Lhk/com/aisoft/easyaddrui/DownloadQKSearch;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sEACity:Ljava/lang/String;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lhk/com/aisoft/easyaddrui/DownloadQKSearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v0, "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadQKSearch;
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/String;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget v4, Lhk/com/aisoft/easyaddrui/R$string;->uat_addr_search:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DOMAIN]"

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v2}, Lhk/com/aisoft/easyaddrui/DownloadQKSearch;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    .end local v0    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadQKSearch;
    :goto_0
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutSearchRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutSearchRun:Ljava/lang/Runnable;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sEAChkResult:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    :cond_0
    return-void

    .line 251
    .restart local v0    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadQKSearch;
    :cond_1
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadQKSearch;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 253
    .restart local v0    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadQKSearch;
    :cond_2
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/String;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget v4, Lhk/com/aisoft/easyaddrui/R$string;->url_addr_search:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DOMAIN]"

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_3

    invoke-virtual {v0, v1, v2}, Lhk/com/aisoft/easyaddrui/DownloadQKSearch;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadQKSearch;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected static getAddrSelected(Ljava/lang/String;)V
    .locals 8
    .param p0, "sInOut"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 262
    const-string v4, "INBOUND"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    const-string v5, "1"

    iput-object v5, v4, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    .line 264
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->llAddrMisc:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->llAddrWarn:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrFloor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 297
    :goto_0
    return-void

    .line 268
    :cond_0
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    const-string v5, "-4005"

    iput-object v5, v4, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    .line 269
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->llAddrMisc:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->llAddrWarn:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    :try_start_0
    const-string v2, ""

    .line 275
    .local v2, "url":Ljava/lang/String;
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v5, "Y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget v6, Lhk/com/aisoft/easyaddrui/R$string;->uat_get_map:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[DOMAIN]"

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?l="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sCurrLot:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    :goto_1
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 281
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 282
    .local v3, "webSettings":Landroid/webkit/WebSettings;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 286
    .local v0, "currentapiVersion":I
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    .end local v0    # "currentapiVersion":I
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "webSettings":Landroid/webkit/WebSettings;
    :goto_2
    :try_start_1
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 293
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 294
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 278
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget v6, Lhk/com/aisoft/easyaddrui/R$string;->url_get_map:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[DOMAIN]"

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?l="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sCurrLot:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_1

    .line 287
    .end local v2    # "url":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method protected static getGPSResult()V
    .locals 8

    .prologue
    .line 133
    :try_start_0
    sget-boolean v1, Lhk/com/aisoft/easyaddrui/eaView;->sReqBack:Z

    if-eqz v1, :cond_6

    .line 134
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    if-nez v1, :cond_3

    .line 136
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    .line 145
    :cond_0
    :goto_0
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v1, v1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sPage:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v1, v1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    new-instance v2, Lhk/com/aisoft/easyaddrui/ResponseAddrScoreCompare;

    invoke-direct {v2}, Lhk/com/aisoft/easyaddrui/ResponseAddrScoreCompare;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    :cond_1
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v1, v1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 149
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v1, v1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 150
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    new-instance v2, Lhk/com/aisoft/easyaddrui/ResultAdapter;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v4, v4, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lhk/com/aisoft/easyaddrui/ResultAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 153
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->lbLoading:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    const-string v1, "GPS DONE"

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 172
    .local v0, "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    .line 138
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v1, v1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 139
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

    invoke-virtual {v1, v2}, Lhk/com/aisoft/easyaddrui/ResponseQK;->setReponseAddr(Lhk/com/aisoft/easyaddrui/ResponseQK;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-boolean v1, Lhk/com/aisoft/easyaddrui/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 156
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string v1, "GPS NO RECORD"

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 157
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->lbNoGPSFound:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 160
    :cond_5
    const-string v1, "GPS NO RECORD"

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 161
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->lbNoGPSFound:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 164
    :cond_6
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutGPSRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutGPSRun:Ljava/lang/Runnable;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sEAChkResult:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected static getSearchResult()V
    .locals 8

    .prologue
    .line 176
    :try_start_0
    sget-boolean v1, Lhk/com/aisoft/easyaddrui/eaView;->sReqBack:Z

    if-eqz v1, :cond_6

    .line 177
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

    if-eqz v1, :cond_0

    .line 178
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    if-nez v1, :cond_3

    .line 179
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    .line 186
    :cond_0
    :goto_0
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v1, v1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sPage:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v1, v1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    new-instance v2, Lhk/com/aisoft/easyaddrui/ResponseAddrScoreCompare;

    invoke-direct {v2}, Lhk/com/aisoft/easyaddrui/ResponseAddrScoreCompare;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 190
    :cond_1
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v1, v1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 191
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v1, v1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 192
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v1, v1, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    new-instance v2, Lhk/com/aisoft/easyaddrui/ResultAdapter;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v4, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v4, v4, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lhk/com/aisoft/easyaddrui/ResultAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 196
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->lbLoading:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    const-string v1, "SEARCH DONE"

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 220
    .local v0, "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    .line 181
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v1, v1, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 182
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

    invoke-virtual {v1, v2}, Lhk/com/aisoft/easyaddrui/ResponseQK;->setReponseAddr(Lhk/com/aisoft/easyaddrui/ResponseQK;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-boolean v1, Lhk/com/aisoft/easyaddrui/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 200
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string v1, "SEARCH NO RECORD"

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 201
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->lbLoading:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 203
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->lbNoAddrFound:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 206
    :cond_5
    const-string v1, "SEARCH NO RECORD"

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 207
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->lbLoading:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 209
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->lbNoAddrFound:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 212
    :cond_6
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutSearchRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutSearchRun:Ljava/lang/Runnable;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sEAChkResult:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected static getVerifyResult()V
    .locals 11

    .prologue
    .line 19
    :try_start_0
    sget-boolean v6, Lhk/com/aisoft/easyaddrui/eaView;->sReqBack:Z

    if-eqz v6, :cond_d

    .line 20
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/ResponseQK;->sPage:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 21
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    new-instance v7, Lhk/com/aisoft/easyaddrui/ResponseAddrScoreCompare;

    invoke-direct {v7}, Lhk/com/aisoft/easyaddrui/ResponseAddrScoreCompare;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 23
    :cond_0
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    if-eqz v6, :cond_c

    .line 24
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 25
    new-instance v6, Lhk/com/aisoft/easyaddrui/AddressReturn;

    invoke-direct {v6}, Lhk/com/aisoft/easyaddrui/AddressReturn;-><init>()V

    sput-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    .line 26
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    const-string v7, "1"

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    .line 27
    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    new-instance v8, Lhk/com/aisoft/easyaddrui/Address;

    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    invoke-direct {v8, v6}, Lhk/com/aisoft/easyaddrui/Address;-><init>(Lhk/com/aisoft/easyaddrui/ResponseAddr;)V

    iput-object v8, v7, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    .line 29
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->lbKeyword:Landroid/widget/TextView;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v7, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormSelAddr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    const-string v4, "\u6a13"

    .line 32
    .local v4, "tmpFloorLabelC":Ljava/lang/String;
    const-string v5, "FLOOR"

    .line 33
    .local v5, "tmpFloorLabelE":Ljava/lang/String;
    const-string v2, "\u5ba4"

    .line 34
    .local v2, "tmpFlatLabelC":Ljava/lang/String;
    const-string v3, "FLAT"

    .line 36
    .local v3, "tmpFlatLabelE":Ljava/lang/String;
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 37
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 38
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    const/4 v8, 0x0

    sget-object v9, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v9, v9, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 41
    :cond_1
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 42
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 43
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    const/4 v8, 0x0

    sget-object v9, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v9, v9, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    .line 46
    :cond_2
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 47
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 48
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 51
    :cond_3
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_4

    .line 52
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 53
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    .line 57
    :cond_4
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 58
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    .line 60
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 61
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    .line 62
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    .line 67
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v7, "zh-HK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 68
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    const-string v8, "zh-HK"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lhk/com/aisoft/easyaddrui/ResultAdapter;->getDisplayAddrFrmAddrRet(Lhk/com/aisoft/easyaddrui/Address;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v7, "zh-HK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 73
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrNotice:Landroid/widget/TextView;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sNoticeC:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_1
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 78
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrFloor:Landroid/widget/EditText;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_5
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 81
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrFlat:Landroid/widget/EditText;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_6
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 84
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrRemarks:Landroid/widget/EditText;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_7
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 87
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 88
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 90
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->btnSearch:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 91
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->btnClear:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 92
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->llAddrMisc:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sLot:Ljava/lang/String;

    sput-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sCurrLot:Ljava/lang/String;

    .line 94
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sUBI:Ljava/lang/String;

    sput-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sCurrDau:Ljava/lang/String;

    .line 96
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/ResponseQK;->sResponseAddrs:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;

    iget-object v6, v6, Lhk/com/aisoft/easyaddrui/ResponseAddr;->sHub1:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 97
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    const-string v7, "1"

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    .line 98
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->llAddrMisc:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->llAddrWarn:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->webView:Landroid/webkit/WebView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 114
    :goto_2
    const-string v6, "VERIFY DONE"

    sput-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 129
    .end local v2    # "tmpFlatLabelC":Ljava/lang/String;
    .end local v3    # "tmpFlatLabelE":Ljava/lang/String;
    .end local v4    # "tmpFloorLabelC":Ljava/lang/String;
    .end local v5    # "tmpFloorLabelE":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    :cond_8
    :goto_3
    return-void

    .line 70
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "tmpFlatLabelC":Ljava/lang/String;
    .restart local v3    # "tmpFlatLabelE":Ljava/lang/String;
    .restart local v4    # "tmpFloorLabelC":Ljava/lang/String;
    .restart local v5    # "tmpFloorLabelE":Ljava/lang/String;
    :cond_9
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    const-string v8, "en-HK"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lhk/com/aisoft/easyaddrui/ResultAdapter;->getDisplayAddrFrmAddrRet(Lhk/com/aisoft/easyaddrui/Address;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 124
    .end local v2    # "tmpFlatLabelC":Ljava/lang/String;
    .end local v3    # "tmpFlatLabelE":Ljava/lang/String;
    .end local v4    # "tmpFloorLabelC":Ljava/lang/String;
    .end local v5    # "tmpFloorLabelE":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 125
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-boolean v6, Lhk/com/aisoft/easyaddrui/BuildConfig;->DEBUG:Z

    if-eqz v6, :cond_8

    goto :goto_3

    .line 75
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "tmpFlatLabelC":Ljava/lang/String;
    .restart local v3    # "tmpFlatLabelE":Ljava/lang/String;
    .restart local v4    # "tmpFloorLabelC":Ljava/lang/String;
    .restart local v5    # "tmpFloorLabelE":Ljava/lang/String;
    :cond_a
    :try_start_1
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrNotice:Landroid/widget/TextView;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v7, v7, Lhk/com/aisoft/easyaddrui/Address;->sNoticeE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 102
    :cond_b
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    const-string v7, "-4005"

    iput-object v7, v6, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    .line 103
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->llAddrMisc:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->llAddrWarn:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    :try_start_2
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 111
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 117
    .end local v2    # "tmpFlatLabelC":Ljava/lang/String;
    .end local v3    # "tmpFlatLabelE":Ljava/lang/String;
    .end local v4    # "tmpFloorLabelC":Ljava/lang/String;
    .end local v5    # "tmpFloorLabelE":Ljava/lang/String;
    :cond_c
    :try_start_3
    const-string v6, "VERIFY NO RECORD"

    sput-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    goto :goto_3

    .line 121
    :cond_d
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutVerifyRun:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v7, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutVerifyRun:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method
