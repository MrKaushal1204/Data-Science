{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "b061a3b7",
   "metadata": {},
   "outputs": [],
   "source": [
    "import pandas as pd\n",
    "from sklearn import linear_model as lm"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "56527ab8",
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "c8b093f8",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "LinearRegression()"
      ]
     },
     "execution_count": 4,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "df = pd.read_csv(\"practiceData\\cars.csv\")\n",
    "X= df[[\"Volume\",\"Weight\"]]\n",
    "y=df['CO2']\n",
    "\n",
    "regr = lm.LinearRegression()\n",
    "regr.fit(X,y)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "f09653b0",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[357.37795694]\n"
     ]
    }
   ],
   "source": [
    "predictedCO2 = regr.predict([[23000,13000]])\n",
    "print(predictedCO2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "3c3fe3d2",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[0.00780526 0.00755095]\n"
     ]
    }
   ],
   "source": [
    "print(regr.coef_)    # finding the coefficint against CO2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "e77236c0",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.9.7"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
