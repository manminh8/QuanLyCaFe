package util;

import java.io.InputStream;
import java.util.Properties;

public class AdminConfigUtil {
    private static final String PROP_FILE = "admin-config.properties";
    private static Properties props;

    static {
        props = new Properties();
        try (InputStream input = AdminConfigUtil.class.getClassLoader().getResourceAsStream(PROP_FILE)) {
            props.load(input);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getAdminUsername() {
        return props.getProperty("admin.username");
    }

    public static String getAdminPassword() {
        return props.getProperty("admin.password");
    }

    public static String getAdminRoles() {
        return props.getProperty("admin.roles");
    }

    public static String getIpWhitelist() {
        return props.getProperty("admin.ip.whitelist");
    }
}
