.class public final Lorg/apache/commons/cli/OptionBuilder;
.super Ljava/lang/Object;
.source "OptionBuilder.java"


# static fields
.field private static instance:Lorg/apache/commons/cli/OptionBuilder;

.field private static numberOfArgs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, -0x1

    sput v0, Lorg/apache/commons/cli/OptionBuilder;->numberOfArgs:I

    .line 58
    new-instance v0, Lorg/apache/commons/cli/OptionBuilder;

    invoke-direct {v0}, Lorg/apache/commons/cli/OptionBuilder;-><init>()V

    sput-object v0, Lorg/apache/commons/cli/OptionBuilder;->instance:Lorg/apache/commons/cli/OptionBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method
