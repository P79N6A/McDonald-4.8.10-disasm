.class final Lcom/ensighten/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/ensighten/u$a;->a:Ljava/io/InputStream;

    .line 336
    iput-object p2, p0, Lcom/ensighten/u$a;->b:Ljava/lang/String;

    .line 337
    iput-object p3, p0, Lcom/ensighten/u$a;->c:Ljava/lang/String;

    .line 338
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/ensighten/u$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/ensighten/u$a;->b:Ljava/lang/String;

    .line 344
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nofilename"

    goto :goto_0
.end method
