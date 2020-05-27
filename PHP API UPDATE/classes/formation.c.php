<?php

class Formation extends database
{
    public function __construct()
    {
        //
    }

    public function displayFormations()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_formation join t_type_formation using(ttf_id)
            WHERE for_active = ?"
        );
        $query->execute(['yes']);
        return $query;
    }


    public function updateFormationCreated($lib, $pres, $desc, $type_id, $id)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_formation
            SET for_lib = ?, for_presentation = ?, for_description = ?,
            ttf_id = ?
            WHERE for_id = ?;"
        );
        $query->execute([$lib, $pres, $desc, $type_id, $id]);
        return $query;
    }


    public function addFormationImage($path)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_formation(
               for_img
            )
            VALUES(?);"
        );
        $query->execute([$path]);
        return $query;
    }

    public function lastAddedFormation()
    {
        $query = $this->connect()->prepare(
            " SELECT * 
            FROM t_formation
            ORDER BY for_id DESC 
            LIMIT 1"
        );
        $query->execute();
        return $query;
    }

    public function deleteTypeFormation($id)
    {
        $query = $this->connect()->prepare(
            "DELETE FROM t_type_formation
            WHERE ttf_id = ?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function deleteFormation($id)
    {
        $query = $this->connect()->prepare(
            "DELETE FROM t_formation
            WHERE for_id = ?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function updateStatus($id, $status)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_formation
            SET for_active=?
            WHERE for_id = ?;"
        );
        $query->execute([$status, $id]);
        return $query;
    }

    public function updateTypeStatus($id, $status)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_type_formation
            SET ttf_active=?
            WHERE ttf_id = ?;"
        );
        $query->execute([$status, $id]);
        return $query;
    }

    public function addTypeFormation($type)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_type_formation(
                ttf_lib
            )
            VALUES(?);"
        );
        $query->execute([$type]);
        return $query;
    }

    public function getFormation($id)
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_formation join t_type_formation using(ttf_id)
            where for_id = ?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function getAllFormation()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_formation join t_type_formation using(ttf_id)
           LIMIT 20;"
        );
        $query->execute();
        return $query;
    }

    public function searchFormation($var)
    {
        $query = $this->connect()->prepare(
            "SELECT * 
            FROM t_formation
            WHERE For_Lib Like CONCAT('%', ?, '%')
           LIMIT 20;"
        );
        $query->execute([$var]);
        return $query;
    }

    public function getAllFormationTypes()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_type_formation;"
        );
        $query->execute();
        return $query;
    }

    public function getTypeFormation($id)
    {
        $query = $this->connect()->prepare(
            "SELECT * 
            FROM t_type_formation
            WHERE ttf_id=?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function updateFormation($id, $lib, $pres, $desc, $type)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_formation
            SET for_lib = ?,
              for_presentation = ?,
              for_description = ?,
              ttf_id = ?
            WHERE for_id = ?;"
        );
        // $query->bindParam(':type', (int) $type);
        $query->execute([$lib, $pres, $desc, $type, (int) $id]);
        return $query;
    }

    public function updateType($lib, $id)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_type_formation
            SET ttf_lib=?
            WHERE ttf_id = ?;"
        );
        $query->execute([$lib, $id]);
        return $query;
    }

    public function isActivate($val, $id)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_formation
            SET active = ?
            WHERE For_Id=?;"
        );
        $query->execute([$val, $id]);
        return $query;
    }

    public function addFormation($lib, $presentation, $description, $type_id)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_formation(
                for_lib,	
                for_presentation,	
                for_description,	
                ttf_id
            )
            VALUES(?, ?, ?, ?);"
        );
        $query->execute([$lib, $presentation, $description, $type_id]);
        return $query;
    }
}
