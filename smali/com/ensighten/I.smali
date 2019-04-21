.class public final Lcom/ensighten/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x25cff4d37b6a7de4L


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Date;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ensighten/I;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/ensighten/I;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/ensighten/I;->c:Ljava/util/Date;

    .line 22
    iput-object p4, p0, Lcom/ensighten/I;->d:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 62
    const-string v0, "%s(\"%s\", \'%s\');"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "gatewayEval2"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ensighten/I;->a:Ljava/lang/String;

    const-string v3, "\\\""

    const-string v4, "\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v5}, Lcom/ensighten/P;->a([BI)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/ensighten/I;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v5}, Lcom/ensighten/P;->a([BI)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const-string v0, "%s(\"%s\", \'%s\');"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "gatewayEval"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ensighten/I;->a:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/ensighten/I;->d:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
