import com.google.gson.Gson;
import spark.ResponseTransformer;

/**
 * Dylan Bannon <drb2857@rit.edu>
 */
public class JsonUtil {
    public static String toJson(Object object) {
        return new Gson().toJson(object);
    }


    public static ResponseTransformer json() {
        return JsonUtil::toJson;
    }
}