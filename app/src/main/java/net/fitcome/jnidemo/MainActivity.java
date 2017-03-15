package net.fitcome.jnidemo;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity
{
    JniUtil x = new JniUtil();
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TextView textView = (TextView) findViewById(R.id.info);
        textView.setText(x.getJniAdd(1,2) + " "  + x.getJniString());
    }
}
