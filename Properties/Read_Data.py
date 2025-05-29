import pandas as pd
from docx import Document
from docx.shared import Inches


class Read_Data:

    def read_excel_data(self, path, sheet, tc):
        df = pd.read_excel(path, sheet_name=sheet)
        df1 = df.to_dict('records')
        return [x for x in df1 if x['Test_Case_ID'] == tc][0]

    # Creating Global Object
    def create_doc(self):
        global document
        document = Document()

    def send_snaps_to_word(self, path_to_image):
        print(path_to_image)
        document.add_picture(path_to_image, width=Inches(5))
        # document.save(tc)

    def save_doc(self, tc):
        document.save(tc)

    def read_snaps(self, files, doc):
        for x in files:
            send_snaps_to_word()
