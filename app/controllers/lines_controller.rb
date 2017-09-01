class LinesController < ApplicationController
  before_action :set_lines
  before_action :set_line, only: [:show, :edit, :update, :destroy]

  # GET invoices/1/lines
  def index
    @lines = @invoice.lines
  end

  # GET invoices/1/lines/1
  def show
  end

  # GET invoices/1/lines/new
  def new
    @line = @invoice.lines.build
  end

  # GET invoices/1/lines/1/edit
  def edit
  end

  # POST invoices/1/lines
  def create
    @line = @invoice.lines.build(line_params)

    if @line.save
      redirect_to([@line.invoice, @line], notice: 'Line was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT invoices/1/lines/1
  def update
    if @line.update_attributes(line_params)
      redirect_to([@line.invoice, @line], notice: 'Line was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE invoices/1/lines/1
  def destroy
    @line.destroy

    redirect_to invoice_lines_url(@invoice)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lines
      @invoice = Invoice.find(params[:invoice_id])
    end

    def set_line
      @line = @invoice.lines.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def line_params
      params.require(:line).permit(:description, :price)
    end
end
