.class public Lcom/admaster/jice/api/JiceConfig;
.super Ljava/lang/Object;
.source "JiceConfig.java"


# instance fields
.field private debugMode:Z

.field private isEventWifiOnly:Z

.field private isPushWifiOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->isEventWifiOnly:Z

    .line 15
    iput-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->isPushWifiOnly:Z

    .line 22
    iput-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->debugMode:Z

    .line 34
    iput-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->isEventWifiOnly:Z

    .line 35
    iput-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->isPushWifiOnly:Z

    .line 36
    iput-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->debugMode:Z

    .line 37
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->isEventWifiOnly:Z

    .line 15
    iput-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->isPushWifiOnly:Z

    .line 22
    iput-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->debugMode:Z

    .line 47
    iput-boolean p1, p0, Lcom/admaster/jice/api/JiceConfig;->isEventWifiOnly:Z

    .line 48
    iput-boolean p2, p0, Lcom/admaster/jice/api/JiceConfig;->isPushWifiOnly:Z

    .line 49
    iput-boolean p3, p0, Lcom/admaster/jice/api/JiceConfig;->debugMode:Z

    .line 50
    return-void
.end method


# virtual methods
.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->debugMode:Z

    return v0
.end method

.method public isEventWifiOnly()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->isEventWifiOnly:Z

    return v0
.end method

.method public isPushWifiOnly()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/admaster/jice/api/JiceConfig;->isPushWifiOnly:Z

    return v0
.end method

.method public setDebugMode(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/admaster/jice/api/JiceConfig;->debugMode:Z

    .line 102
    return-void
.end method

.method public setEventWifiOnly(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/admaster/jice/api/JiceConfig;->isEventWifiOnly:Z

    .line 63
    return-void
.end method

.method public setPushWifiOnly(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/admaster/jice/api/JiceConfig;->isPushWifiOnly:Z

    .line 76
    return-void
.end method
