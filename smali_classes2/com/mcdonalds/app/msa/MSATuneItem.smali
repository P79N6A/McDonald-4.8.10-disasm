.class public Lcom/mcdonalds/app/msa/MSATuneItem;
.super Ljava/lang/Object;
.source "MSATuneItem.java"


# static fields
.field public static MSA_TUNE_FROM_APP:I

.field public static MSA_TUNE_FROM_PHONE:I

.field public static MSA_TUNE_RANDOM:I


# instance fields
.field private mChoice:Ljava/lang/String;

.field private mInstruction:Ljava/lang/String;

.field private mMusicResId:I

.field private mMusicUri:Landroid/net/Uri;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput v0, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_PHONE:I

    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_APP:I

    .line 11
    const/4 v0, 0x2

    sput v0, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_RANDOM:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;II)V
    .locals 0
    .param p1, "instruction"    # Ljava/lang/String;
    .param p2, "choice"    # Ljava/lang/String;
    .param p3, "musicUri"    # Landroid/net/Uri;
    .param p4, "musicResId"    # I
    .param p5, "type"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mInstruction:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mChoice:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mMusicUri:Landroid/net/Uri;

    .line 31
    iput p4, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mMusicResId:I

    .line 32
    iput p5, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mType:I

    .line 33
    return-void
.end method


# virtual methods
.method public getChoice()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getChoice"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mChoice:Ljava/lang/String;

    return-object v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getInstruction"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mInstruction:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicResId()I
    .locals 2

    .prologue
    const-string v0, "getMusicResId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget v0, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mMusicResId:I

    return v0
.end method

.method public getTuneId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "getTuneId"

    invoke-static {p0, v1, v0}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget v1, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mType:I

    sget v2, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_PHONE:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mMusicUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mMusicUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    iget v1, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mType:I

    sget v2, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_FROM_APP:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mType:I

    sget v2, Lcom/mcdonalds/app/msa/MSATuneItem;->MSA_TUNE_RANDOM:I

    if-ne v1, v2, :cond_0

    .line 72
    :cond_2
    iget v0, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mMusicResId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()I
    .locals 2

    .prologue
    const-string v0, "getType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget v0, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mType:I

    return v0
.end method

.method public setChoice(Ljava/lang/String;)V
    .locals 3
    .param p1, "choice"    # Ljava/lang/String;

    .prologue
    const-string v0, "setChoice"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mChoice:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMusicResId(I)V
    .locals 4
    .param p1, "musicResId"    # I

    .prologue
    const-string v0, "setMusicResId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iput p1, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mMusicResId:I

    .line 57
    return-void
.end method

.method public setMusicUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "musicUri"    # Landroid/net/Uri;

    .prologue
    const-string v0, "setMusicUri"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSATuneItem;->mMusicUri:Landroid/net/Uri;

    .line 49
    return-void
.end method
