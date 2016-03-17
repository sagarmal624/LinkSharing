package Enums

/**
 * Created by sagar on 3/17/16.
 */
enum UserStatus {
    All_USERS("All Users"), ACTIVE("Active"), INACTIVE("Inactive")

    String displayText

    UserStatus(String displayText) {
        this.displayText = displayText
    }
}