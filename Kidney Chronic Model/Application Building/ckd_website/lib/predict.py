import numpy as np
import pandas as pd
from flask import Flask, request, render_template
import pickle

app = Flask(__name__)
model = pickle.load(open('CKD.pickle','rb'))

def predict():
    input_features = [float(x) for x in request.form.values()]
    features_values = [np.array(input_features)]

    features_name = ['blood_urea','blood glucose random','coronary_artery_disease',
    'anemia','pus_cell','red_blood_cells','diabetesmellitus','pedal_edema']

    df = pd.DataFrame(features_values, columns=features_values)
    output = model.predict(df)

    return render_template(prediction_text=output)