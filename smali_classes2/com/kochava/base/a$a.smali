.class Lcom/kochava/base/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final d:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kochava/base/a$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kochava/base/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kochava/base/a$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/kochava/base/a$a;->d:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/kochava/base/a$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(Lcom/kochava/base/h;)V
    .locals 7
    .param p1    # Lcom/kochava/base/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "sdk_version"

    iget-object v2, p0, Lcom/kochava/base/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "kochava_app_id"

    iget-object v2, p0, Lcom/kochava/base/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/kochava/base/a$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "partner_name"

    iget-object v2, p0, Lcom/kochava/base/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/kochava/base/a$a;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "custom"

    iget-object v2, p0, Lcom/kochava/base/a$a;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/kochava/base/a$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "ext_date"

    iget-object v2, p0, Lcom/kochava/base/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    iget-object v0, p1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "kochava_device_id"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "3.4.0"

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "kochava_device_id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "kochava_app_id"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "partner_name"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "ext_date"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
