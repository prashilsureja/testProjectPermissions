package sparktest;

/**
 * Created by prashil on 7/6/17.
 */

import com.job.TestSparkJob;
import org.junit.Assert;
import org.junit.Test;

public class TestSparkJobTest {

  @Test
  public void test() {
    Assert.assertEquals("Test Success", new TestSparkJob().testMethod());
  }
}
