.class public final enum Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
.super Ljava/lang/Enum;
.source "Timepoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

.field public static final enum HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

.field public static final enum MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

.field public static final enum SECOND:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    const-string v1, "HOUR"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    .line 28
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    const-string v1, "MINUTE"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    .line 29
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    const-string v1, "SECOND"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->SECOND:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    sget-object v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->SECOND:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->$VALUES:[Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.Timepoint$TYPE"

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const-class v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.Timepoint$TYPE"

    const-string v1, "values"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->$VALUES:[Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {v0}, [Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/Timepoint$TYPE;

    return-object v0
.end method
