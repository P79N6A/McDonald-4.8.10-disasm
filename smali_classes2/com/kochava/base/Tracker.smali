.class public final Lcom/kochava/base/Tracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kochava/base/Tracker$ConsentPartner;,
        Lcom/kochava/base/Tracker$IdentityLink;,
        Lcom/kochava/base/Tracker$Event;,
        Lcom/kochava/base/Tracker$Configuration;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_ACHIEVEMENT:I = 0x1

.field public static final EVENT_TYPE_ADD_TO_CART:I = 0x2

.field public static final EVENT_TYPE_ADD_TO_WISH_LIST:I = 0x3

.field public static final EVENT_TYPE_AD_VIEW:I = 0xc

.field public static final EVENT_TYPE_CHECKOUT_START:I = 0x4

.field public static final EVENT_TYPE_CONSENT_GRANTED:I = 0xf

.field public static final EVENT_TYPE_LEVEL_COMPLETE:I = 0x5

.field public static final EVENT_TYPE_PURCHASE:I = 0x6

.field public static final EVENT_TYPE_PUSH_OPENED:I = 0xe

.field public static final EVENT_TYPE_PUSH_RECEIVED:I = 0xd

.field public static final EVENT_TYPE_RATING:I = 0x7

.field public static final EVENT_TYPE_REGISTRATION_COMPLETE:I = 0x8

.field public static final EVENT_TYPE_SEARCH:I = 0x9

.field public static final EVENT_TYPE_TUTORIAL_COMPLETE:I = 0xa

.field public static final EVENT_TYPE_VIEW:I = 0xb

.field public static final LOG_LEVEL_DEBUG:I = 0x4

.field public static final LOG_LEVEL_ERROR:I = 0x1

.field public static final LOG_LEVEL_INFO:I = 0x3

.field public static final LOG_LEVEL_NONE:I = 0x0

.field public static final LOG_LEVEL_TRACE:I = 0x5

.field public static final LOG_LEVEL_WARN:I = 0x2

.field private static final a:Lcom/kochava/base/Tracker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private transient d:I

.field private transient e:Lcom/kochava/base/LogListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private transient f:I

.field private g:Lcom/kochava/base/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kochava/base/Tracker;

    invoke-direct {v0}, Lcom/kochava/base/Tracker;-><init>()V

    sput-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/kochava/base/Tracker;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/kochava/base/Tracker;->c:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/kochava/base/Tracker;->d:I

    iput-object v1, p0, Lcom/kochava/base/Tracker;->e:Lcom/kochava/base/LogListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/kochava/base/Tracker;->f:I

    iput-object v1, p0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    return-void
.end method

.method static varargs a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v3, 0x0

    sget-object v6, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v6

    if-eqz p0, :cond_1

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget v1, v1, Lcom/kochava/base/Tracker;->d:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget v1, v1, Lcom/kochava/base/Tracker;->d:I

    if-ge v1, p0, :cond_2

    :cond_0
    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget v1, v1, Lcom/kochava/base/Tracker;->f:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget v1, v1, Lcom/kochava/base/Tracker;->f:I

    if-ge v1, p0, :cond_2

    :cond_1
    monitor-exit v6

    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KO/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TR/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xd

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, p2, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_f

    move v5, v3

    :goto_1
    array-length v1, p3

    if-ge v5, v1, :cond_f

    aget-object v1, p3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :try_start_1
    aget-object v1, p3, v5

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    aget-object v1, p3, v5

    invoke-static {v1}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    aget-object v2, p3, v5

    invoke-static {v2}, Lcom/kochava/base/d;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v1, :cond_14

    const/4 v4, 0x2

    instance-of v9, v1, Lorg/json/JSONObject;

    if-nez v9, :cond_7

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    const/4 v4, 0x2

    instance-of v1, v2, Lorg/json/JSONArray;

    if-nez v1, :cond_8

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_4
    if-nez v1, :cond_6

    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_5
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_3

    const-string v1, "\n"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_7
    :try_start_3
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1, v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    move-object v0, v2

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    invoke-static {v1, v4}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    aget-object v1, p3, v5

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_b

    aget-object v1, p3, v5

    check-cast v1, Lorg/json/JSONObject;

    const/4 v2, 0x2

    instance-of v4, v1, Lorg/json/JSONObject;

    if-nez v4, :cond_a

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_a
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_b
    aget-object v1, p3, v5

    instance-of v1, v1, Lorg/json/JSONArray;

    if-eqz v1, :cond_d

    aget-object v1, p3, v5

    check-cast v1, Lorg/json/JSONArray;

    const/4 v2, 0x2

    instance-of v4, v1, Lorg/json/JSONArray;

    if-nez v4, :cond_c

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_c
    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_d
    aget-object v1, p3, v5

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_e
    aget-object v1, p3, v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to build message.\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_10

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v1, v3

    :goto_6
    if-ge v1, v4, :cond_13

    aget-object v3, v2, v1

    sget-object v5, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget v5, v5, Lcom/kochava/base/Tracker;->f:I

    if-lez v5, :cond_11

    sget-object v5, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget v5, v5, Lcom/kochava/base/Tracker;->f:I

    if-gt p0, v5, :cond_11

    sget-object v5, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v5, v5, Lcom/kochava/base/Tracker;->e:Lcom/kochava/base/LogListener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_11

    :try_start_5
    sget-object v5, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v5, v5, Lcom/kochava/base/Tracker;->e:Lcom/kochava/base/LogListener;

    invoke-interface {v5, p0, v7, v3}, Lcom/kochava/base/LogListener;->onLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_11
    :goto_7
    :try_start_6
    sget-object v5, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget v5, v5, Lcom/kochava/base/Tracker;->d:I

    if-lez v5, :cond_12

    sget-object v5, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget v5, v5, Lcom/kochava/base/Tracker;->d:I

    if-gt p0, v5, :cond_12

    packed-switch p0, :pswitch_data_0

    :cond_12
    :goto_8
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :pswitch_1
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_2
    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_3
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_4
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_5
    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_13
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v5

    goto :goto_7

    :cond_14
    move-object v1, v4

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static addPushToken(Ljava/lang/String;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "addPushToken"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "addPushToken"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/kochava/base/a;->a(Ljava/lang/String;Z)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "addPushToken"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearConsentShouldPrompt()V
    .locals 7

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "clearConsentS"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "clearConsentShouldPrompt"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0}, Lcom/kochava/base/a;->i()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "clearConsentS"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static configure(Lcom/kochava/base/Tracker$Configuration;)V
    .locals 15
    .param p0    # Lcom/kochava/base/Tracker$Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v14, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-object v12, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v12

    :try_start_0
    const-string v1, "configure"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    const-string v1, "TRA"

    const-string v2, "configure"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Below API 14 is unsupported. Cannot Configure."

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    const-string v1, "TRA"

    const-string v2, "configure"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Already Configured"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    if-nez p0, :cond_2

    const/4 v0, 0x1

    :try_start_3
    const-string v1, "TRA"

    const-string v2, "configure"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Null Configuration"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_5
    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->a(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/kochava/base/d;->a(Ljava/lang/Object;I)I

    move-result v3

    iput v3, v1, Lcom/kochava/base/Tracker;->d:I

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->b(Lcom/kochava/base/Tracker$Configuration;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->b(Lcom/kochava/base/Tracker$Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    const-string v1, "TRA"

    const-string v2, "configure"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Null Context"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_7
    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->b(Lcom/kochava/base/Tracker$Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "koov"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v4, "log_level"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget v5, v5, Lcom/kochava/base/Tracker;->d:I

    invoke-static {v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;I)I

    move-result v4

    sget-object v5, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget v5, v5, Lcom/kochava/base/Tracker;->d:I

    if-eq v4, v5, :cond_5

    sget-object v5, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iput v4, v5, Lcom/kochava/base/Tracker;->d:I

    const/4 v5, 0x4

    const-string v6, "TRA"

    const-string v7, "configure"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Override LogLevel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "url_init"

    const-string v5, "url_init"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v9, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;I)V

    const-string v4, "url_push_token_add"

    const-string v5, "url_push_token_add"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v9, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;I)V

    const-string v4, "url_push_token_remove"

    const-string v5, "url_push_token_remove"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v9, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;I)V

    const-string v4, "url_get_attribution"

    const-string v5, "url_get_attribution"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v9, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;I)V

    const-string v4, "url_initial"

    const-string v5, "url_initial"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v9, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;I)V

    const-string v4, "url_update"

    const-string v5, "url_update"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v9, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;I)V

    const-string v4, "url_identity_link"

    const-string v5, "url_identity_link"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v9, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;I)V

    const-string v4, "url_event"

    const-string v5, "url_event"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v4, v3, v9, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;I)V

    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    const-string v4, "TRA"

    const-string v5, "configure"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Override URLs"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v9, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->c(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->c(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_7
    move v3, v2

    :goto_1
    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->d(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->d(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v0, v2

    :cond_9
    if-eqz v3, :cond_a

    if-nez v0, :cond_b

    :cond_a
    if-nez v3, :cond_d

    if-nez v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    const-string v1, "TRA"

    const-string v2, "configure"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Either (but not both) App Guid or Partner Name required"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :cond_c
    move v3, v0

    goto :goto_1

    :cond_d
    :try_start_9
    sget-object v13, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    new-instance v0, Lcom/kochava/base/a;

    invoke-static {}, Lcom/kochava/base/Tracker;->getVersion()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v3, v3, Lcom/kochava/base/Tracker;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->c(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->d(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->e(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/AttributionListener;

    move-result-object v6

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->f(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/AttributionUpdateListener;

    move-result-object v7

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->g(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/ConsentStatusChangeListener;

    move-result-object v8

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->h(Lcom/kochava/base/Tracker$Configuration;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->i(Lcom/kochava/base/Tracker$Configuration;)Z

    move-result v11

    invoke-direct/range {v0 .. v11}, Lcom/kochava/base/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kochava/base/AttributionListener;Lcom/kochava/base/AttributionUpdateListener;Lcom/kochava/base/ConsentStatusChangeListener;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    iput-object v0, v13, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->j(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->j(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kochava/base/a;->a(Z)V

    :cond_e
    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->k(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/Tracker$IdentityLink;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-static {p0}, Lcom/kochava/base/Tracker$Configuration;->k(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/Tracker$IdentityLink;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kochava/base/a;->a(Lcom/kochava/base/Tracker$IdentityLink;)V

    :cond_f
    const/4 v0, 0x3

    const-string v1, "TRA"

    const-string v2, "configure"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Complete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/kochava/base/Tracker;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget v0, v0, Lcom/kochava/base/Tracker;->d:I

    if-le v0, v14, :cond_10

    const/4 v0, 0x2

    const-string v1, "TRA"

    const-string v2, "configure"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Log Level set higher than recommended for publishing"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_10
    :goto_2
    :try_start_a
    monitor-exit v12

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const-string v2, "TRA"

    const-string v3, "configure"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Unknown"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2
.end method

.method public static ext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iput-object p0, v0, Lcom/kochava/base/Tracker;->b:Ljava/lang/String;

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iput-object p1, v0, Lcom/kochava/base/Tracker;->c:Ljava/lang/String;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getAttribution()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    const-string v2, "attribution"

    invoke-virtual {v0, v2}, Lcom/kochava/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "getAttributio"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getConsentDescription()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0}, Lcom/kochava/base/a;->c()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "getConsentDes"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getConsentPartners()[Lcom/kochava/base/Tracker$ConsentPartner;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0}, Lcom/kochava/base/a;->j()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/kochava/base/Tracker$ConsentPartner;

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    new-instance v4, Lcom/kochava/base/Tracker$ConsentPartner;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/kochava/base/Tracker$ConsentPartner;-><init>(Lorg/json/JSONObject;)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x2

    const-string v1, "TRA"

    const-string v3, "getConsentPar"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/kochava/base/Tracker$ConsentPartner;

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getConsentPartnersJson()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0}, Lcom/kochava/base/a;->j()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "getConsentPar"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "[]"

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getConsentResponseTime()J
    .locals 7

    sget-object v2, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0}, Lcom/kochava/base/a;->f()J

    move-result-wide v0

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x2

    const-string v1, "TRA"

    const-string v3, "getConsentRes"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    const-string v2, "kochava_device_id"

    invoke-virtual {v0, v2}, Lcom/kochava/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "getDeviceId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstallReferrer()Lcom/kochava/base/InstallReferrer;
    .locals 7
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    const-string v2, "install_referrer"

    invoke-virtual {v0, v2}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v2, v2, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    const-string v3, "referrer"

    invoke-virtual {v2, v3}, Lcom/kochava/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/kochava/base/c$a;->a(Lorg/json/JSONObject;ZLjava/lang/String;)Lcom/kochava/base/InstallReferrer;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "getInstallRef"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/kochava/base/c$a;->a(Lorg/json/JSONObject;ZLjava/lang/String;)Lcom/kochava/base/InstallReferrer;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    const-string v0, "AndroidTracker 3.4.0"

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidTracker 3.4.0 ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v2, v2, Lcom/kochava/base/Tracker;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "AndroidTracker 3.4.0"

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isConfigured()Z
    .locals 2
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isConsentGranted()Z
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v2, v2, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0}, Lcom/kochava/base/a;->e()Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x2

    const-string v3, "TRA"

    const-string v4, "isConsentGran"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Invalid Configuration or Parameter"

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isConsentGrantedOrNotRequired()Z
    .locals 1

    invoke-static {}, Lcom/kochava/base/Tracker;->isConsentRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kochava/base/Tracker;->isConsentGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConsentRequired()Z
    .locals 8

    const/4 v0, 0x1

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v2, v2, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0}, Lcom/kochava/base/a;->d()Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x2

    const-string v3, "TRA"

    const-string v4, "isConsentRequ"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Invalid Configuration or Parameter"

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isConsentShouldPrompt()Z
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v2, v2, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0}, Lcom/kochava/base/a;->h()Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x2

    const-string v3, "TRA"

    const-string v4, "isConsentShou"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Invalid Configuration or Parameter"

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isSessionActive()Z
    .locals 8
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v2, v2, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0}, Lcom/kochava/base/a;->l()Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x2

    const-string v3, "TRA"

    const-string v4, "isSessionActi"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Invalid Configuration or Parameter"

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isSleep()Z
    .locals 8
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v3, v3, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v3, v3, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v3}, Lcom/kochava/base/a;->b()I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    monitor-exit v2

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    const-string v3, "TRA"

    const-string v4, "isSleep"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Invalid Configuration or Parameter"

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removePushToken(Ljava/lang/String;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "removePushTok"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removePushToken"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/kochava/base/a;->a(Ljava/lang/String;Z)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "removePushTok"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sendEvent(Lcom/kochava/base/Tracker$Event;)V
    .locals 10
    .param p0    # Lcom/kochava/base/Tracker$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    sget-object v7, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v7

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "TRA"

    const-string v2, "sendEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "sendEvent(Event)"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/kochava/base/Tracker$Event;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kochava/base/Tracker$Event;->c:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    new-instance v4, Ljava/util/Date;

    iget-wide v8, p0, Lcom/kochava/base/Tracker$Event;->c:J

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v4}, Lcom/kochava/base/Tracker$Event;->setStartDate(Ljava/util/Date;)Lcom/kochava/base/Tracker$Event;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/kochava/base/Tracker$Event;->setEndDate(Ljava/util/Date;)Lcom/kochava/base/Tracker$Event;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kochava/base/Tracker$Event;->setDuration(D)Lcom/kochava/base/Tracker$Event;

    :cond_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/kochava/base/d;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kochava/base/Tracker$Event;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/kochava/base/Tracker$Event;->f:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/kochava/base/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v7

    return-void

    :cond_1
    const/4 v0, 0x2

    const-string v1, "TRA"

    const-string v2, "sendEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Invalid Configuration or Parameter"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v7, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v7

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "TRA"

    const-string v2, "sendEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "sendEvent(String,String)"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kochava/base/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v7

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "TRA"

    const-string v2, "sendEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Invalid Configuration or Parameter"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sendEventDeepLink(Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    sget-object v7, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v7

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "TRA"

    const-string v2, "sendEventDeep"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "sendEventDeepLink"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/kochava/base/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v7

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "TRA"

    const-string v2, "sendEventDeep"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Invalid Configuration or Parameter"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setAppLimitAdTracking(Z)V
    .locals 7
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "setAppLimitAd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setAppLimitAdTracking"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0, p0}, Lcom/kochava/base/a;->a(Z)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "setAppLimitAd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setConsentGranted(Z)V
    .locals 7

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "setConsentGra"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setConsentGranted"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0, p0}, Lcom/kochava/base/a;->b(Z)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "setConsentGra"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setDeepLinkListener(Landroid/net/Uri;ILcom/kochava/base/DeepLinkListener;)V
    .locals 7
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/Size;
        .end annotation
    .end param
    .param p2    # Lcom/kochava/base/DeepLinkListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "setDeepLinkLi"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setDeepLinkListener"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/kochava/base/a;->a(Landroid/net/Uri;ILcom/kochava/base/DeepLinkListener;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "setDeepLinkLi"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setDeepLinkListener(Landroid/net/Uri;Lcom/kochava/base/DeepLinkListener;)V
    .locals 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/kochava/base/DeepLinkListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xfa0

    invoke-static {p0, v0, p1}, Lcom/kochava/base/Tracker;->setDeepLinkListener(Landroid/net/Uri;ILcom/kochava/base/DeepLinkListener;)V

    return-void
.end method

.method public static setIdentityLink(Lcom/kochava/base/Tracker$IdentityLink;)V
    .locals 7
    .param p0    # Lcom/kochava/base/Tracker$IdentityLink;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "setIdentityLi"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setIdentityLink"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/Tracker$IdentityLink;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0, p0}, Lcom/kochava/base/a;->a(Lcom/kochava/base/Tracker$IdentityLink;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v2, "TRA"

    const-string v3, "setIdentityLi"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setLogListener(Lcom/kochava/base/LogListener;I)V
    .locals 2
    .param p0    # Lcom/kochava/base/LogListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iput-object p0, v0, Lcom/kochava/base/Tracker;->e:Lcom/kochava/base/LogListener;

    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iput p1, v0, Lcom/kochava/base/Tracker;->f:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setSleep(Z)V
    .locals 9
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v2

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "TRA"

    const-string v5, "setSleep"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "setSleep"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v3, v3, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v3, v3, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz p0, :cond_0

    :goto_0
    invoke-virtual {v3, v0}, Lcom/kochava/base/a;->a(I)V

    :goto_1
    monitor-exit v2

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const-string v1, "TRA"

    const-string v3, "setSleep"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static unConfigure()V
    .locals 7
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    const-string v0, "unConfigure"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    :try_start_1
    const-string v2, "TRA"

    const-string v3, "unConfigure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "UnConfigure Tracker"

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    const/4 v2, 0x3

    iput v2, v0, Lcom/kochava/base/Tracker;->d:I

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/kochava/base/Tracker;->b:Ljava/lang/String;

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/kochava/base/Tracker;->c:Ljava/lang/String;

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/kochava/base/Tracker;->e:Lcom/kochava/base/LogListener;

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    const/4 v2, 0x0

    iput v2, v0, Lcom/kochava/base/Tracker;->f:I

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;

    invoke-virtual {v0}, Lcom/kochava/base/a;->a()V

    :cond_0
    sget-object v0, Lcom/kochava/base/Tracker;->a:Lcom/kochava/base/Tracker;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/kochava/base/Tracker;->g:Lcom/kochava/base/a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    const-string v3, "TRA"

    const-string v4, "unConfigure"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
