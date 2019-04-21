.class public Lcom/mcdonalds/app/model/RegisterToggle;
.super Ljava/lang/Object;
.source "RegisterToggle.java"


# instance fields
.field private defaultState:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultState"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private requiredTrue:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requiredTrue"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultState()Z
    .locals 2

    .prologue
    const-string v0, "getDefaultState"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-boolean v0, p0, Lcom/mcdonalds/app/model/RegisterToggle;->defaultState:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/mcdonalds/app/model/RegisterToggle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isRequired()Z
    .locals 2

    .prologue
    const-string v0, "isRequired"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-boolean v0, p0, Lcom/mcdonalds/app/model/RegisterToggle;->requiredTrue:Z

    return v0
.end method
