<?php

class Uf extends TRecord
{
    const TABLENAME  = 'uf';
    const PRIMARYKEY = 'id';
    const IDPOLICY   =  'serial'; // {max, serial}

    

    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('nome');
        parent::addAttribute('sigla');
            
    }

    /**
     * Method getCidades
     */
    public function getCidades()
    {
        $criteria = new TCriteria;
        $criteria->add(new TFilter('uf_id', '=', $this->id));
        return Cidade::getObjects( $criteria );
    }

    public function set_cidade_uf_to_string($cidade_uf_to_string)
    {
        if(is_array($cidade_uf_to_string))
        {
            $values = Uf::where('id', 'in', $cidade_uf_to_string)->getIndexedArray('id', 'id');
            $this->cidade_uf_to_string = implode(', ', $values);
        }
        else
        {
            $this->cidade_uf_to_string = $cidade_uf_to_string;
        }

        $this->vdata['cidade_uf_to_string'] = $this->cidade_uf_to_string;
    }

    public function get_cidade_uf_to_string()
    {
        if(!empty($this->cidade_uf_to_string))
        {
            return $this->cidade_uf_to_string;
        }
    
        $values = Cidade::where('uf_id', '=', $this->id)->getIndexedArray('uf_id','{uf->id}');
        return implode(', ', $values);
    }

    /**
     * Method onBeforeDelete
     */
    public function onBeforeDelete()
    {
            

        if(Cidade::where('uf_id', '=', $this->id)->first())
        {
            throw new Exception("Não é possível deletar este registro pois ele está sendo utilizado em outra parte do sistema");
        }
    
    }

    
}

