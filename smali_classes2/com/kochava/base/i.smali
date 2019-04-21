.class abstract Lcom/kochava/base/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field final a:Lcom/kochava/base/h;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Z

.field private final d:J

.field private final e:Z

.field private final f:J

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kochava/base/i;->b:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/kochava/base/h;Z)V
    .locals 2
    .param p1    # Lcom/kochava/base/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kochava/base/i;->g:I

    iput v0, p0, Lcom/kochava/base/i;->h:I

    iput-boolean v0, p0, Lcom/kochava/base/i;->i:Z

    iput-boolean v0, p0, Lcom/kochava/base/i;->j:Z

    iput-boolean v0, p0, Lcom/kochava/base/i;->k:Z

    iput-object p1, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iput-boolean p2, p0, Lcom/kochava/base/i;->c:Z

    iget-object v0, p1, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    invoke-interface {v0}, Lcom/kochava/base/b;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kochava/base/i;->e:Z

    iget-wide v0, p1, Lcom/kochava/base/h;->s:J

    iput-wide v0, p0, Lcom/kochava/base/i;->d:J

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kochava/base/i;->f:J

    return-void
.end method

.method static a(Lorg/json/JSONObject;)I
    .locals 8
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x6

    const-string v5, "action"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    move v0, v4

    :goto_1
    :pswitch_0
    return v0

    :sswitch_0
    const-string v7, "init"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v7, "initial"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_2
    const-string v7, "session"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v7, "update"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_4
    const-string v7, "get_attribution"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v7, "event"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v7, "identityLink"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_7
    const-string v7, "deeplink"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_8
    const-string v7, "push_token_add"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_9
    const-string v7, "push_token_remove"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "pause"

    const-string v4, "state"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto/16 :goto_1

    :cond_1
    move v0, v3

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x4

    goto/16 :goto_1

    :pswitch_4
    const/4 v0, 0x5

    goto/16 :goto_1

    :pswitch_5
    move v0, v4

    goto/16 :goto_1

    :pswitch_6
    const/4 v0, 0x7

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x8

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x9

    goto/16 :goto_1

    :pswitch_9
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x49e3a971 -> :sswitch_9
        -0x31ffc737 -> :sswitch_3
        -0x735fa28 -> :sswitch_6
        0x316510 -> :sswitch_0
        0x5c6729a -> :sswitch_5
        0x1f9b2d16 -> :sswitch_4
        0x258156e6 -> :sswitch_7
        0x74215744 -> :sswitch_1
        0x7454ce76 -> :sswitch_8
        0x76508296 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/kochava/base/i;->b(Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/kochava/base/d;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kochava/base/i;->b(Lorg/json/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Payload Type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(ILorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "action"

    const-string v1, "init"

    invoke-static {v0, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "action"

    const-string v1, "initial"

    invoke-static {v0, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "action"

    const-string v1, "session"

    invoke-static {v0, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "action"

    const-string v1, "update"

    invoke-static {v0, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "action"

    const-string v1, "get_attribution"

    invoke-static {v0, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "action"

    const-string v1, "event"

    invoke-static {v0, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "action"

    const-string v1, "identityLink"

    invoke-static {v0, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "action"

    const-string v1, "deeplink"

    invoke-static {v0, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_8
    const-string v0, "action"

    const-string v1, "push_token_add"

    invoke-static {v0, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_9
    const-string v0, "action"

    const-string v1, "push_token_remove"

    invoke-static {v0, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static a(Lcom/kochava/base/d;Lorg/json/JSONObject;)V
    .locals 4
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ext_date"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2018-05-01T20:19:09Z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk_build_date"

    invoke-static {v1, v0, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 2
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const-string v0, "identity_link"

    invoke-static {p2, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "identity_link_all"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "identity_link"

    invoke-virtual {p0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    const-string v1, "identity_link"

    invoke-static {v1, v0, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private static a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 10
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "addCustomItem"

    const-string v0, "custom"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p3, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0, v3, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    const-string v5, "TSK"

    const-string v6, "addCustomItem"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Custom item not in whitelist. Ignoring."

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v0, 0x2

    aput-object v3, v7, v0

    invoke-static {v4, v5, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V
    .locals 3
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const-string v0, "app_limit_tracking"

    invoke-static {p2, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "app_limit_trackingupd"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const-string v0, "app_limit_trackingupd"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_limit_tracking"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez p3, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_3
    const-string v1, "app_limit_tracking"

    invoke-static {v1, v0, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Lcom/kochava/base/d;)V
    .locals 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "kochava_app_id_override"

    invoke-virtual {p1, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "kochava_app_id"

    invoke-static {v1, v0, p0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    const-string v0, "kochava_device_id"

    invoke-virtual {p1, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "kochava_device_id"

    invoke-static {v1, v0, p0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "kochava_app_id"

    invoke-virtual {p1, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "kochava_app_id"

    invoke-static {v1, v0, p0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONArray;I)V
    .locals 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "state_active_count"

    invoke-static {p1, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "state_active_count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V
    .locals 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "state_active"

    invoke-static {p1, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "state_active"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private b(I)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "https://control.kochava.com/track/json"

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->c:Lorg/json/JSONObject;

    const-string v1, "url_init"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "https://kvinit-prod.api.kochava.com/track/kvinit"

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->c:Lorg/json/JSONObject;

    const-string v1, "url_push_token_add"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "https://token.api.kochava.com/token/add"

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->c:Lorg/json/JSONObject;

    const-string v1, "url_push_token_remove"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "https://token.api.kochava.com/token/remove"

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->c:Lorg/json/JSONObject;

    const-string v1, "url_get_attribution"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "https://control.kochava.com/track/kvquery"

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->c:Lorg/json/JSONObject;

    const-string v1, "url_initial"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "https://control.kochava.com/track/json"

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->c:Lorg/json/JSONObject;

    const-string v1, "url_update"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "https://control.kochava.com/track/json"

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->c:Lorg/json/JSONObject;

    const-string v1, "url_identity_link"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "https://control.kochava.com/track/json"

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->c:Lorg/json/JSONObject;

    const-string v1, "url_event"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "https://control.kochava.com/track/json"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Lcom/kochava/base/d;Lorg/json/JSONObject;)V
    .locals 2
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "partner_name"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "partner_name"

    invoke-static {v1, v0, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 6
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "addConversion"

    const-string v0, "conversion_type"

    invoke-static {p2, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conversion_data"

    invoke-static {p2, v0}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "referrer"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "installer_package"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "install_referrer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "ok"

    const-string v4, "status"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    const-string v4, "com.android.vending"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/kochava/base/ReferralReceiver;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    const-string v0, "referrer"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "referrer_source"

    invoke-virtual {p0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "conversion_type"

    invoke-static {v2, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v1, "conversion_data"

    invoke-static {v1, v0, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x4

    const-string v4, "TSK"

    const-string v5, "addConversion"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v5, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 11
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nt_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "kochava_app_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "kochava_device_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sdk_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "adid"

    aput-object v0, v5, v2

    const-string v0, "android_id"

    aput-object v0, v5, v10

    const/4 v0, 0x2

    const-string v6, "fire_adid"

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const-string v6, "fb_attribution_id"

    aput-object v6, v5, v0

    const-string v0, "custom"

    aput-object v0, v5, v9

    const/4 v0, 0x5

    const-string v6, "custom_id"

    aput-object v6, v5, v0

    const/4 v0, 0x6

    const-string v6, "conversion_data"

    aput-object v6, v5, v0

    array-length v6, v5

    move v0, v2

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v5, v10, [Ljava/lang/String;

    const-string v0, "usertime"

    aput-object v0, v5, v2

    array-length v6, v5

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ids"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v5, "email"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "install_referrer"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v4, "referrer"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "status"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "install_begin_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/kochava/base/d;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v4, "referrer_click_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    array-length v6, v0

    move v1, v2

    :goto_3
    if-ge v1, v6, :cond_5

    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    int-to-long v8, v7

    add-long/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "TSK"

    const-string v6, "processPayloa"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {v9, v1, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v2, [B

    goto :goto_2

    :cond_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%03d"

    new-array v6, v10, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    rem-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "send_date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Z"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static c(Lcom/kochava/base/d;Lorg/json/JSONObject;)V
    .locals 2
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "identity_link"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "identity_link"

    invoke-virtual {p0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()J
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/i;->c:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/kochava/base/i;->d:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-wide v0, v0, Lcom/kochava/base/h;->s:J

    goto :goto_0
.end method

.method final a(ILjava/lang/Object;)Lorg/json/JSONObject;
    .locals 10
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/kochava/base/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/kochava/base/i;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/kochava/base/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x4

    const-string v2, "TSK"

    const-string v3, "post"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Error: No Network Connection"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TSK"

    const-string v3, "post"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v9, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x4

    const-string v1, "TSK"

    const-string v2, "wakeSelf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    const v1, 0x7fffffff

    invoke-static {p1, v5, v1}, Lcom/kochava/base/d;->a(III)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method final a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 12
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "buildPayload"

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "dp_options"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "dp_override"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "blacklist"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "whitelist"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v0, 0x5

    const-string v1, "TSK"

    const-string v4, "buildPayload"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Main"

    aput-object v9, v7, v8

    invoke-static {v0, v1, v4, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    iget-object v4, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v4, v4, Lcom/kochava/base/h;->b:Ljava/util/List;

    move v7, p1

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/kochava/base/c;->a(Landroid/content/Context;Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;Lorg/json/JSONArray;Lorg/json/JSONArray;ILorg/json/JSONObject;)V

    sget-object v1, Lcom/kochava/base/i;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x5

    :try_start_0
    const-string v2, "TSK"

    const-string v3, "buildPayload"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Extra in lock"

    aput-object v8, v4, v7

    invoke-static {v0, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "backfilled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_1
    invoke-static {p1, p2}, Lcom/kochava/base/i;->a(ILorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-static {p2, v0}, Lcom/kochava/base/i;->a(Lorg/json/JSONObject;Lcom/kochava/base/d;)V

    const-string v0, "sdk_protocol"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v0, "sdk_version"

    iget-object v2, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v2, v2, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "sdk_version"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v0, "nt_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v0, "data"

    invoke-static {v0, p3, p2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v0, "usertime"

    invoke-virtual {p0}, Lcom/kochava/base/i;->c()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2, p3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/kochava/base/i;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "session_window_uptime"

    invoke-virtual {v0, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    :cond_3
    const-string v2, "uptime"

    invoke-virtual {p0}, Lcom/kochava/base/i;->c()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/kochava/base/i;->a()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    long-to-double v8, v8

    const-wide v10, 0x40c3880000000000L    # 10000.0

    div-double/2addr v8, v10

    int-to-double v10, v0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v2, v0, p3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :goto_0
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-boolean v0, v0, Lcom/kochava/base/h;->o:Z

    if-eqz v0, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "required"

    iget-object v3, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    invoke-interface {v3}, Lcom/kochava/base/b;->d()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v2, v2, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    invoke-interface {v2}, Lcom/kochava/base/b;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "time"

    iget-object v3, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    invoke-interface {v3}, Lcom/kochava/base/b;->f()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_4
    const-string v2, "consent"

    invoke-static {v2, v0, p2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_5
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x5

    const-string v1, "TSK"

    const-string v2, "buildPayload"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    :try_start_1
    const-string v0, "uptime"

    invoke-virtual {p0}, Lcom/kochava/base/i;->c()J

    move-result-wide v2

    iget-object v4, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-wide v8, v4, Lcom/kochava/base/h;->p:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0xa

    mul-long/2addr v2, v8

    long-to-double v2, v2

    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2, p3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/kochava/base/i;->b()Z

    move-result v0

    invoke-static {p3, v5, v0}, Lcom/kochava/base/i;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/kochava/base/i;->b()Z

    move-result v0

    invoke-static {p3, v5, v0}, Lcom/kochava/base/i;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-static {v0, p3}, Lcom/kochava/base/i;->c(Lcom/kochava/base/d;Lorg/json/JSONObject;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/kochava/base/i;->b()Z

    move-result v0

    invoke-static {p3, v5, v0}, Lcom/kochava/base/i;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const/4 v2, 0x0

    invoke-static {v0, p3, v5, v2}, Lcom/kochava/base/i;->a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-static {v0, p3, v5}, Lcom/kochava/base/i;->a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-static {v0, p3, v5}, Lcom/kochava/base/i;->b(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-static {v0, p3, v5, v6}, Lcom/kochava/base/i;->a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-static {v0, p2}, Lcom/kochava/base/i;->a(Lcom/kochava/base/d;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-static {v0, p3}, Lcom/kochava/base/i;->b(Lcom/kochava/base/d;Lorg/json/JSONObject;)V

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x1

    invoke-static {p3, v5, v0}, Lcom/kochava/base/i;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "session_state_active_count"

    invoke-virtual {v0, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {p3, v5, v0}, Lcom/kochava/base/i;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;I)V

    const-string v0, "state"

    const-string v2, "pause"

    invoke-static {v0, v2, p3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :pswitch_7
    const/4 v0, 0x1

    invoke-static {p3, v5, v0}, Lcom/kochava/base/i;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    const-string v0, "state"

    const-string v2, "resume"

    invoke-static {v0, v2, p3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const/4 v2, 0x1

    invoke-static {v0, p3, v5, v2}, Lcom/kochava/base/i;->a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final a(Z)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    invoke-interface {v0}, Lcom/kochava/base/b;->k()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    const-string v1, "TSK"

    const-string v2, "wakeControlle"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Controller Busy. Returning."

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/kochava/base/i;->k()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    invoke-virtual {v0}, Lcom/kochava/base/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v1, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->h:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v2, v2, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "kvtracker_wait"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kochava/base/h;->b(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method final a(Lorg/json/JSONObject;Z)Z
    .locals 11
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        value = "null, _ -> true"
    .end annotation

    const/4 v10, -0x1

    const/4 v9, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "checkErrorAnd"

    if-nez p1, :cond_2

    const-string v0, "TSK"

    const-string v3, "checkErrorAnd"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Network Error"

    aput-object v5, v4, v1

    invoke-static {v9, v0, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, v2}, Lcom/kochava/base/i;->b(Z)V

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    const-string v4, "TSK"

    const-string v5, "checkErrorAnd"

    new-array v6, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v3, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "TSK"

    const-string v3, "checkErrorAnd"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Success False"

    aput-object v5, v4, v1

    invoke-static {v9, v0, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    invoke-virtual {p0, v1}, Lcom/kochava/base/i;->b(Z)V

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "retry"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    if-eq v0, v10, :cond_7

    const-string v3, "TSK"

    const-string v4, "checkErrorAnd"

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Retry Time"

    aput-object v6, v5, v1

    invoke-static {v9, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    const v3, 0x7fffffff

    invoke-static {v0, v1, v3}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kochava/base/i;->a(I)V

    :cond_6
    move v1, v2

    goto/16 :goto_0

    :cond_7
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resonance_cascade"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz p2, :cond_8

    invoke-virtual {p0, v1}, Lcom/kochava/base/i;->b(Z)V

    :cond_8
    move v1, v2

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method final b(ILorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/kochava/base/i;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {v1, p2}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v1
.end method

.method final b(Z)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v8, 0x3c

    const/16 v7, 0xa

    const/4 v6, 0x4

    const/4 v5, 0x1

    const-string v0, "TSK"

    const-string v1, "retry"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v6, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/kochava/base/i;->h:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v5, v6}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    iput v0, p0, Lcom/kochava/base/i;->h:I

    iget v0, p0, Lcom/kochava/base/i;->h:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v7}, Lcom/kochava/base/i;->a(I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v8}, Lcom/kochava/base/i;->a(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/kochava/base/i;->a(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xe10

    invoke-virtual {p0, v0}, Lcom/kochava/base/i;->a(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/kochava/base/i;->g:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v5, v6}, Lcom/kochava/base/d;->a(III)I

    move-result v0

    iput v0, p0, Lcom/kochava/base/i;->g:I

    iget v0, p0, Lcom/kochava/base/i;->g:I

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0, v7}, Lcom/kochava/base/i;->a(I)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/kochava/base/i;->a(I)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/kochava/base/i;->a(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v8}, Lcom/kochava/base/i;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method final b()Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/i;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kochava/base/i;->e:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    invoke-interface {v0}, Lcom/kochava/base/b;->l()Z

    move-result v0

    goto :goto_0
.end method

.method final c()J
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/i;->c:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/kochava/base/i;->f:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method final d()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/kochava/base/i;->j()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kochava/base/i;->i:Z

    return-void
.end method

.method final e()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/i;->i:Z

    return v0
.end method

.method final f()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kochava/base/i;->j:Z

    return-void
.end method

.method final g()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/i;->j:Z

    return v0
.end method

.method final h()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kochava/base/i;->k:Z

    return-void
.end method

.method final i()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/i;->k:Z

    return v0
.end method

.method final j()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kochava/base/i;->i:Z

    iput-boolean v0, p0, Lcom/kochava/base/i;->j:Z

    iput v0, p0, Lcom/kochava/base/i;->g:I

    iput v0, p0, Lcom/kochava/base/i;->h:I

    iput-boolean v0, p0, Lcom/kochava/base/i;->k:Z

    return-void
.end method

.method final k()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v1, p0, Lcom/kochava/base/i;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->h:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
