.class public Lbolts/AggregateException;
.super Ljava/lang/Exception;
.source "AggregateException.java"


# instance fields
.field private causes:[Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "causes"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    :goto_0
    invoke-direct {p0, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .end local p2    # "causes":[Ljava/lang/Throwable;
    :goto_1
    iput-object p2, p0, Lbolts/AggregateException;->causes:[Ljava/lang/Throwable;

    .line 41
    return-void

    .restart local p2    # "causes":[Ljava/lang/Throwable;
    :cond_0
    move-object v0, v1

    .line 38
    goto :goto_0

    :cond_1
    move-object p2, v1

    .line 40
    goto :goto_1
.end method
