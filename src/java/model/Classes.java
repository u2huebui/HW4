
package model;

public class Classes {
  private int ClassID;
  private String ClassName;
  private String ProfessorName;
  private String ClaClassroom;
  private int Occupied;
  
   public Classes() {
        this.ClassID = 0;
        this.ClassName = "";
        this.ProfessorName = "";
        this.ClaClassroom = "";
        this.Occupied = 0;
    }

    public Classes(int ClassID, String ClassName, String ProfessorName, String ClaClassroom, int Occupied) {
        this.ClassID = ClassID;
        this.ClassName = ClassName;
        this.ProfessorName = ProfessorName;
        this.ClaClassroom = ClaClassroom;
        this.Occupied = Occupied;
    }

    public int getClassID() {
        return ClassID;
    }

    public void setClassID(int ClassID) {
        this.ClassID = ClassID;
    }

    public String getClassName() {
        return ClassName;
    }

    public void setClassName(String ClassName) {
        this.ClassName = ClassName;
    }

    public String getProfessorName() {
        return ProfessorName;
    }

    public void setProfessorName(String ProfessorName) {
        this.ProfessorName = ProfessorName;
    }

    public String getClaClassroom() {
        return ClaClassroom;
    }

    public void setClaClassroom(String ClaClassroom) {
        this.ClaClassroom = ClaClassroom;
    }

    public int getOccupied() {
        return Occupied;
    }

    public void setOccupied(int Occupied) {
        this.Occupied = Occupied;
    }

    @Override
    public String toString() {
        return "Classes{" + "ClassID=" + ClassID + ", ClassName=" + ClassName + ", ProfessorName=" + ProfessorName + ", ClaClassroom=" + ClaClassroom + ", Occupied=" + Occupied + '}';
    }
    
  
}
