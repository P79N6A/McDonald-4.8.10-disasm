.class public Lcom/admaster/square/utils/l;
.super Ljava/lang/Object;
.source "FailedMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/admaster/square/utils/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/admaster/square/utils/l;->d:I

    .line 33
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/admaster/square/utils/l;->b:J

    .line 20
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/admaster/square/utils/l;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/admaster/square/utils/l;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/admaster/square/utils/l;->c:J

    .line 26
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/admaster/square/utils/l;->c:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/admaster/square/utils/l;->d:I

    return v0
.end method
