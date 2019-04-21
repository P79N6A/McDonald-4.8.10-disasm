.class public final enum Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;
.super Ljava/lang/Enum;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

.field public static final enum VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

.field public static final enum VERSION_2:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    const-string v1, "VERSION_1"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    .line 69
    new-instance v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    const-string v1, "VERSION_2"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_2:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    sget-object v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_2:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->$VALUES:[Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.TimePickerDialog$Version"

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const-class v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ui.dateTime.materialdatetimepicker.time.TimePickerDialog$Version"

    const-string v1, "values"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->$VALUES:[Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    invoke-virtual {v0}, [Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$Version;

    return-object v0
.end method
