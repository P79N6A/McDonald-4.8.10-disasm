.class Lcom/aps/d$a;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aps/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/aps/c;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-object v0, p0, Lcom/aps/d$a;->a:Lcom/aps/c;

    .line 716
    iput-object v0, p0, Lcom/aps/d$a;->b:Ljava/lang/String;

    .line 720
    return-void
.end method


# virtual methods
.method public a()Lcom/aps/c;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/aps/d$a;->a:Lcom/aps/c;

    return-object v0
.end method

.method public a(Lcom/aps/c;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/aps/d$a;->a:Lcom/aps/c;

    .line 728
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 735
    const-string v0, "##"

    const-string v1, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/d$a;->b:Ljava/lang/String;

    .line 736
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/aps/d$a;->b:Ljava/lang/String;

    return-object v0
.end method
