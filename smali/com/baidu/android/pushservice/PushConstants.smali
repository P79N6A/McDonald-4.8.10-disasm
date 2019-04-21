.class public final Lcom/baidu/android/pushservice/PushConstants;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const-string v0, "Unknown"

    sparse-switch p0, :sswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "Success"

    goto :goto_0

    :sswitch_1
    const-string v0, "Network Problem"

    goto :goto_0

    :sswitch_2
    const-string v0, "Authentication Failed"

    goto :goto_0

    :sswitch_3
    const-string v0, "Service not available"

    goto :goto_0

    :sswitch_4
    const-string v0, "Service not available temporary"

    goto :goto_0

    :sswitch_5
    const-string v0, "Bind Relation Not Found"

    goto :goto_0

    :sswitch_6
    const-string v0, "Internal Server Error"

    goto :goto_0

    :sswitch_7
    const-string v0, "Method Not Allowed"

    goto :goto_0

    :sswitch_8
    const-string v0, "Request Params Not Valid"

    goto :goto_0

    :sswitch_9
    const-string v0, "Quota Use Up Payment Required"

    goto :goto_0

    :sswitch_a
    const-string v0, "Data Required Not Found"

    goto :goto_0

    :sswitch_b
    const-string v0, "Request Time Expires Timeout"

    goto :goto_0

    :sswitch_c
    const-string v0, "Channel Token Timeout"

    goto :goto_0

    :sswitch_d
    const-string v0, "Bind Number Too Many"

    goto :goto_0

    :sswitch_e
    const-string v0, "Duplicate Operation"

    goto :goto_0

    :sswitch_f
    const-string v0, "Group Not Found"

    goto :goto_0

    :sswitch_10
    const-string v0, "Application Forbidden, Need Whitelist Authorization"

    goto :goto_0

    :sswitch_11
    const-string v0, "App Need Inied First In Push-console"

    goto :goto_0

    :sswitch_12
    const-string v0, "Number Of Tag For User Too Many"

    goto :goto_0

    :sswitch_13
    const-string v0, "Number Of Tag For App Too Many"

    goto :goto_0

    :sswitch_14
    const-string v0, "Application Do Not Have Unicast Capability"

    goto :goto_0

    :sswitch_15
    const-string v0, "Application Do Not Have Multicast Capability"

    goto :goto_0

    :sswitch_16
    const-string v0, "Application Is Not Approved, Can Not Use The Push Service"

    goto :goto_0

    :sswitch_17
    const-string v0, "Requests Are Too Frequent To Be Temporarily Rejected"

    goto :goto_0

    :sswitch_18
    const-string v0, "Get lightapp info fail"

    goto :goto_0

    :sswitch_19
    const-string v0, "User blacked this app"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_3
        0x2713 -> :sswitch_4
        0x7788 -> :sswitch_6
        0x7789 -> :sswitch_7
        0x778a -> :sswitch_8
        0x778b -> :sswitch_2
        0x778c -> :sswitch_9
        0x778d -> :sswitch_a
        0x778e -> :sswitch_b
        0x778f -> :sswitch_c
        0x7790 -> :sswitch_5
        0x7791 -> :sswitch_d
        0x7792 -> :sswitch_e
        0x7793 -> :sswitch_f
        0x7794 -> :sswitch_10
        0x7795 -> :sswitch_11
        0x7796 -> :sswitch_12
        0x7797 -> :sswitch_13
        0x7798 -> :sswitch_14
        0x7799 -> :sswitch_15
        0x779a -> :sswitch_16
        0x77eb -> :sswitch_17
        0x9c42 -> :sswitch_18
        0x1adb1 -> :sswitch_19
    .end sparse-switch
.end method
