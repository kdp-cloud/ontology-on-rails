require "Ontology"
require "uri"
require "json"

class OntologiesController < ApplicationController
  def index
    @ontologies = JSON.parse(OntologyApi.send_request(URI("https://www.ebi.ac.uk/ols/api/ontologies")).body, object_class: OpenStruct)._embedded.ontologies
  end

  def show
    @ontology = JSON.parse(OntologyApi.get_ontology_by_id(params[:id]).body, object_class: OpenStruct)
  end
end
