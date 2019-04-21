.class Lcom/admaster/square/api/i;
.super Ljava/lang/Object;
.source "ConvMobiInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/admaster/square/api/e;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/admaster/square/api/e;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/square/api/i;->a:Lcom/admaster/square/api/e;

    iput-object p2, p0, Lcom/admaster/square/api/i;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/admaster/square/api/i;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/admaster/square/api/i;->d:Z

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 191
    iget-object v0, p0, Lcom/admaster/square/api/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/admaster/square/api/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    sput-object v0, Lcom/admaster/square/utils/h;->i:Ljava/lang/String;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/admaster/square/api/i;->a:Lcom/admaster/square/api/e;

    iget-object v1, p0, Lcom/admaster/square/api/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/admaster/square/api/i;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/admaster/square/api/i;->a:Lcom/admaster/square/api/e;

    invoke-static {v3}, Lcom/admaster/square/api/e;->b(Lcom/admaster/square/api/e;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/admaster/square/api/i;->d:Z

    invoke-static {v1, v2, v3, v4}, Lcom/admaster/square/api/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/admaster/square/api/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/admaster/square/api/e;->a(Lcom/admaster/square/api/e;Lcom/admaster/square/api/a;)V

    .line 196
    return-void
.end method
