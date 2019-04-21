.class public Lcom/mcdonalds/sdk/services/error/ErrorManager;
.super Ljava/lang/Object;
.source "ErrorManager.java"


# static fields
.field private static instance:Lcom/mcdonalds/sdk/services/error/ErrorManager;


# instance fields
.field private lastError:Lcom/mcdonalds/sdk/AsyncException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mcdonalds/sdk/services/error/ErrorManager;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/mcdonalds/sdk/services/error/ErrorManager;->instance:Lcom/mcdonalds/sdk/services/error/ErrorManager;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/mcdonalds/sdk/services/error/ErrorManager;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/services/error/ErrorManager;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/services/error/ErrorManager;->instance:Lcom/mcdonalds/sdk/services/error/ErrorManager;

    .line 16
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/error/ErrorManager;->instance:Lcom/mcdonalds/sdk/services/error/ErrorManager;

    return-object v0
.end method


# virtual methods
.method public getLastError()Lcom/mcdonalds/sdk/AsyncException;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/error/ErrorManager;->lastError:Lcom/mcdonalds/sdk/AsyncException;

    return-object v0
.end method

.method public setLastError(Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0
    .param p1, "lastError"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/error/ErrorManager;->lastError:Lcom/mcdonalds/sdk/AsyncException;

    .line 25
    return-void
.end method
