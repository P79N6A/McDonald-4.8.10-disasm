.class public final Lcom/ensighten/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field a:Landroid/content/Context;

.field public b:Lorg/json/JSONObject;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lorg/json/JSONArray;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ensighten/o;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:Z

.field public p:Landroid/app/Dialog;

.field public q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field public s:Z

.field public t:Z

.field u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ensighten/q;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/ensighten/e;->c:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/ensighten/e;->d:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/e;->f:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/e;->g:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ensighten/e;->h:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/e;->i:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/e;->j:Ljava/util/Map;

    .line 93
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ensighten/e;->k:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/ensighten/e;->l:I

    .line 103
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/ensighten/e;->m:J

    .line 108
    iput-boolean v2, p0, Lcom/ensighten/e;->n:Z

    .line 113
    iput-boolean v2, p0, Lcom/ensighten/e;->o:Z

    .line 123
    const-string v0, "This application tracks data to improve your experience, you can choose to disable tracking below. Disable tracking?"

    iput-object v0, p0, Lcom/ensighten/e;->q:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/ensighten/e;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/ensighten/Utils;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/e;->r:Ljava/lang/String;

    .line 133
    iput-boolean v2, p0, Lcom/ensighten/e;->s:Z

    .line 138
    iput-boolean v2, p0, Lcom/ensighten/e;->t:Z

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/e;->u:Ljava/util/HashMap;

    .line 148
    iput-boolean v2, p0, Lcom/ensighten/e;->v:Z

    .line 153
    iput-boolean v2, p0, Lcom/ensighten/e;->w:Z

    .line 158
    iput-boolean v2, p0, Lcom/ensighten/e;->x:Z

    .line 163
    iput-boolean v2, p0, Lcom/ensighten/e;->y:Z

    .line 168
    iput-boolean v2, p0, Lcom/ensighten/e;->z:Z

    .line 173
    iput v3, p0, Lcom/ensighten/e;->A:I

    .line 178
    iput v3, p0, Lcom/ensighten/e;->B:I

    .line 181
    iput-object p1, p0, Lcom/ensighten/e;->a:Landroid/content/Context;

    .line 182
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/ensighten/e;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
