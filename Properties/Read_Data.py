import pandas as pd


class Read_Data:

    def read_excel_data(self, excel_p, sheet, tc):
        df = pd.read_excel(excel_p, sheet_name=sheet)
        df1 = df.to_dict('records')
        return [tc for tc in df1 if tc['Test_Case_ID'] == tc][0]

