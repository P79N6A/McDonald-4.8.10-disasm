.class final Lcom/kochava/base/k;
.super Lcom/kochava/base/i;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kochava/base/h;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/kochava/base/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kochava/base/i;-><init>(Lcom/kochava/base/h;Z)V

    iput p2, p0, Lcom/kochava/base/k;->b:I

    iput-object p3, p0, Lcom/kochava/base/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/kochava/base/k;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/kochava/base/k;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/kochava/base/k;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/kochava/base/k;->g:Ljava/lang/String;

    return-void
.end method

.method private b(Lorg/json/JSONObject;)Z
    .locals 12
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    const-string v0, "processSessio"

    iget v0, p0, Lcom/kochava/base/k;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kochava/base/k;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_minimum"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "session_window"

    invoke-virtual {v1, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x258

    invoke-static {v1, v2}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/kochava/base/k;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "session_resume_time"

    invoke-virtual {v3, v4}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v3

    iget-object v4, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v4, v4, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "session_pause_sent_this_window"

    invoke-virtual {v4, v5}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v5, v5, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v6, "session_pause_ever_sent"

    invoke-virtual {v5, v6}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v5

    iget v6, p0, Lcom/kochava/base/k;->b:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "session_state_active_count"

    invoke-virtual {v0, v4}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    iget-object v4, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v4, v4, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v5, "session_state_active_count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int v0, v3, v1

    if-lt v2, v0, :cond_4

    const/4 v0, 0x4

    const-string v1, "TBE"

    const-string v3, "processSessio"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Resume: Sufficient Time"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_pause"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    const-string v3, "TBE"

    const-string v4, "processSessio"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Resume: Queuing Cached Pause"

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v0}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_pause"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_pause_ever_sent"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_state_active_count"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_resume_time"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_window_uptime"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_pause_sent_this_window"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v6, v6, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v7, "session_window_uptime"

    invoke-virtual {v6, v7}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0}, Lcom/kochava/base/k;->c()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/kochava/base/k;->a()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v6, v6

    iget-object v7, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v7, v7, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v8, "session_window_uptime"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v5, :cond_6

    if-nez v4, :cond_7

    if-ge v6, v0, :cond_6

    add-int v0, v3, v1

    if-lt v2, v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    const-string v1, "TBE"

    const-string v2, "processSessio"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Pause: Sending"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_pause"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_pause_ever_sent"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_pause_sent_this_window"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_state_active_count"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    if-nez v4, :cond_8

    const/4 v0, 0x4

    const-string v1, "TBE"

    const-string v2, "processSessio"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Pause: Updating"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "session_pause"

    invoke-virtual {v0, v1, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x4

    const-string v1, "TBE"

    const-string v2, "processSessio"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Pause: Not Updating"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "run"

    const-string v0, "TBE"

    const-string v3, "run"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v9, v0, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->e()I

    move-result v0

    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_0

    const/4 v0, 0x2

    const-string v3, "TBE"

    const-string v4, "run"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Database Full. Dropping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kochava/base/k;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v0, v3, v4, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "eventname_blacklist"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/kochava/base/k;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kochava/base/k;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/kochava/base/d;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TBE"

    const-string v3, "run"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kochava/base/k;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " blacklisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v8, v0, v3, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/kochava/base/k;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, "event_name"

    iget-object v4, p0, Lcom/kochava/base/k;->c:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_2
    iget-object v3, p0, Lcom/kochava/base/k;->d:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/kochava/base/k;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/kochava/base/d;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v4, "Consent Granted"

    iget-object v5, p0, Lcom/kochava/base/k;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-boolean v4, v4, Lcom/kochava/base/h;->o:Z

    if-eqz v4, :cond_4

    const-string v4, "content_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "content_id"

    iget-object v5, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v5, v5, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    invoke-interface {v5}, Lcom/kochava/base/b;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_3
    iget-object v4, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v4, v4, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    invoke-interface {v4}, Lcom/kochava/base/b;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "date"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "date"

    iget-object v5, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v5, v5, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    invoke-interface {v5}, Lcom/kochava/base/b;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_4
    const-string v4, "event_data"

    invoke-static {v4, v3, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/kochava/base/k;->e:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/kochava/base/k;->f:Ljava/lang/String;

    if-eqz v3, :cond_6

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "purchaseData"

    iget-object v5, p0, Lcom/kochava/base/k;->e:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v4, "dataSignature"

    iget-object v5, p0, Lcom/kochava/base/k;->f:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v4, "receipt"

    invoke-static {v4, v3, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_6
    iget-object v3, p0, Lcom/kochava/base/k;->g:Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v3, "uri"

    iget-object v4, p0, Lcom/kochava/base/k;->g:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget v4, p0, Lcom/kochava/base/k;->b:I

    invoke-virtual {p0, v4, v3, v0}, Lcom/kochava/base/k;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-direct {p0, v3}, Lcom/kochava/base/k;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v4, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v4, v4, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v4, v3}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;)V

    :goto_2
    if-nez v0, :cond_8

    iget v0, p0, Lcom/kochava/base/k;->b:I

    if-ne v0, v8, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "batch_max_quantity"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x19

    invoke-static {v0, v3}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    iget-object v3, p0, Lcom/kochava/base/k;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v3}, Lcom/kochava/base/d;->e()I

    move-result v3

    if-ge v3, v0, :cond_9

    iget v0, p0, Lcom/kochava/base/k;->b:I

    if-ne v0, v8, :cond_d

    :cond_9
    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/kochava/base/k;->a(Z)V

    :cond_a
    const-string v0, "TBE"

    const-string v3, "run"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Complete"

    aput-object v4, v2, v1

    invoke-static {v9, v0, v3, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "event_data"

    iget-object v4, p0, Lcom/kochava/base/k;->d:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_c
    const-string v3, "TBE"

    const-string v4, "run"

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Not sending deferred/dropped event."

    aput-object v6, v5, v1

    invoke-static {v9, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_d
    move v0, v1

    goto :goto_3
.end method
