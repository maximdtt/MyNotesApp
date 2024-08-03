//
//  NoteViewController.swift
//  NotesApp
//
//  Created by Maksims Šalajevs on 30/07/2024.
//
import SnapKit
import UIKit


final class NoteViewController: UIViewController {
    // MARK: - GUI Variables
    private let attachmentView: UIImageView = {
        let view = UIImageView()
        
        view.layer.cornerRadius = 10
        view.image = UIImage(named: "mockImage")
        view.layer.masksToBounds = true
        view.contentMode = .scaleAspectFill
        
        return view
    }()
    
    private let textView: UITextView = {
        let view = UITextView()
        
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 10

        
        return view
    }()
    
    // MARK: - Properties
    
    var viewModel: NoteViewModelProtocol?
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.prefersLargeTitles = false

    }
    // MARK: - Methods
     
    private func configure() {
        textView.text =  viewModel?.text
//        guard let imageData = note.image,
//              let image = UIImage(data: imageData) else { return }
//        attachmentView.image = image
    }
    
    // MARK: - Private methods
    
    @objc
    private func saveAction() {
        
    }
    
    @objc
    private func trashAction() {
        
    }
    
    private func setupUI() {
        view.addSubview(attachmentView)
        view.addSubview(textView)
        view.backgroundColor = .white
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(recognizer)
        textView.layer.borderWidth = textView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? 1 : 0
        
        setupConstraints()
        setImageHeight()
        setupBars()
    }
    
    private func setupConstraints() {
        attachmentView.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(10)
             
        }
        
        textView.snp.makeConstraints { make in
            make.top.equalTo(attachmentView.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(10)
            make.bottom.equalTo(view.keyboardLayoutGuide.snp.top).inset(-10)
        }
        
    }
    
    private func setImageHeight() {
        let height = attachmentView.image != nil ? 200 : 0
            attachmentView.snp.makeConstraints { make in
                make.height.equalTo(height)
        }
    }
    
    @objc
    private func hideKeyboard() {
        textView.resignFirstResponder()
    }
    
    private func setupBars() {
        let trashButton = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(trashAction))
        setToolbarItems([trashButton], animated: true)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveAction))
    }
}
