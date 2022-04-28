package com.example.calculadorahoras;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.util.Set;

public class MainActivity extends AppCompatActivity {
    EditText hora1, hora2, min1, min2;
    TextView Rhora, Rmin;
    Button soma, sub, res;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getSupportActionBar().hide();

        hora1 = findViewById(R.id.H1);
        hora2 = findViewById(R.id.H2);
        min1 = findViewById(R.id.M1);
        min2 = findViewById(R.id.M2);
        Rhora = findViewById(R.id.RH);
        Rmin = findViewById(R.id.RM);
        soma = findViewById(R.id.BotSom);
        sub = findViewById(R.id.BotSub);
        res = findViewById(R.id.BotRes);
        Somar();
        Subtrair();
    }
    public void Somar (){
    }

    public void Subtrair (){
        int m1 = int.parseInt(min1.getText().toString());
        int h1 = int.parseint(hora1.getText().toString());
        int m2 = int.parseint(min2.getText().toString());
        int h2 = int.parseint(hora2.getText().toString());
        while (m1 > 59){
            h1 ++;
            m1 = m1 - 60;
        }
        while (m2 > 59){
            h2 ++;
            m2 = m2 - 60;
        }
    }

}
